<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Beranda_model extends CI_Model
{

    var $table = 'categories';
    var $idtable = 'id';
    var $column_order = array(
        'id',
        'name',
        'description',
        'picture',
        'is_active',
        'deleted_at',
        'updated_at',
        'created_at',
        'created_by_user_id',
    );
    var $column_search = array(
        'name',
        'description',
    );
    var $order = array('id' => 'ASC');

    /* Server Side Data */
    /* Modified by : Maulana.code@gmail.com */
    private function _get_datatables_query()
    {
        $this->db->from($this->table);
        $i = 0;

        foreach ($this->column_search as $item) // loop column 
        {
            if ($_POST['search']['value']) // if datatable send POST for search
            {

                if ($i === 0) // first loop
                {
                    $this->db->group_start(); // open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.
                    $this->db->like($item, $_POST['search']['value']);
                } else {
                    $this->db->or_like($item, $_POST['search']['value']);
                }

                if (count($this->column_search) - 1 == $i) //last loop
                    $this->db->group_end(); //close bracket
            }
            $i++;
        }

        if (isset($_POST['order'])) // here order processing
        {
            $this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
        } else if (isset($this->order)) {
            $order = $this->order;
            $this->db->order_by(key($order), $order[key($order)]);
        }
    }
    function get_data_gambar()
    {
        $query = $this->db->get('movies');
        return $query;
    }

    function get_datatables()
    {
        $this->_get_datatables_query();
        if ($_POST['length'] != -1)
            $this->db->limit($_POST['length'], $_POST['start']);
        $query = $this->db->get();
        return $query->result();
    }

    function count_filtered()
    {
        $this->_get_datatables_query();
        $query = $this->db->get();
        return $query->num_rows();
    }

    public function count_all()
    {
        $this->db->from($this->table);
        return $this->db->count_all_results();
    }

    /* end server side  */

    public function getdetails($id)
    {
        $this->db->select('*');
        $this->db->from('movies');
        $this->db->where('id', $id);
        $query = $this->db->get();
        if ($query->num_rows() > 0)
            return $query->result();
    }

    public function getcomment($id)
    {
        $this->db->select('*');
        $this->db->from('comments');
        $this->db->where('id', $id);
        $query = $this->db->get();
        if ($query->num_rows() > 0)
            return $query->result();
    }

    public function getcategories($id)
    {
        $this->db->select('movies.*');
        $this->db->from('movies');
        $this->db->where('category_id', $id);
        $this->db->join('movie_categories', 'movie_categories.movie_id = movies.id', 'left');
        $query = $this->db->get();
        return $query->result();
    }

    public function toggleBookmark($user_id, $movie_id)
    {
        $this->db->where(['user_id' => $user_id, 'movie_id' => $movie_id]);
        $exists = $this->db->get('user_bookmarks')->row();

        if ($exists) {
            $this->db->delete('user_bookmarks', ['id' => $exists->id]);
            return ['status' => 'removed'];
        } else {
            $this->db->insert('user_bookmarks', ['user_id' => $user_id, 'movie_id' => $movie_id]);
            return ['status' => 'added'];
        }
    }

    public function getUserBookmarks($user_id)
    {
        $this->db->where('user_id', $user_id);
        return $this->db->get('user_bookmarks')->result();
    }
}
