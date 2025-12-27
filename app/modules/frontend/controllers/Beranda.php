<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 * @author  Maulana Rahman <maulana.code@gmail.com>
 */

class Beranda extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Beranda_model');
		$this->load->helper('url');
	}

	/** ==========================================================
	 *  HALAMAN BERANDA
	 *  ========================================================== */
	public function index()
	{
		$data = [
			'title' => 'Beranda'
		];

		// New Movies (tahun sekarang)
		$data['new_movies'] = $this->db
			->select('movies.*, movie_categories.category_id, categories.name AS category_name')
			->join('movie_categories', 'movie_categories.movie_id = movies.id', 'left')
			->join('categories', 'categories.id = movie_categories.category_id', 'left')
			->where('movies.year', date('Y'))
			->group_by('movies.id') // biar gak duplikat kalau film punya multi kategori
			->get('movies')
			->result();


		// Tambahkan di dalam Beranda@index()

		// POPULAR
		$data['popular_movies'] = $this->db
			->order_by('rating', 'DESC')
			->limit(10)
			->get('movies')
			->result();
		$this->db->reset_query();

		// COMING SOON — pakai year > sekarang (kalau tidak ada release_date)
		$data['coming_soon'] = $this->db
			->where('release_date >', date('Y-m-d'))
			->order_by('release_date', 'ASC')
			->limit(10)
			->get('movies')
			->result();
		$this->db->reset_query();

		// TOP RATED
		$data['top_rated'] = $this->db
			->order_by('rating', 'DESC')
			->limit(10)
			->get('movies')
			->result();
		$this->db->reset_query();

		// MOST REVIEWED (jika ada tabel reviews)
		$data['most_reviewed'] = $this->db
			->select('movies.*, COUNT(reviews.id) as review_count')
			->join('reviews', 'reviews.movie_id = movies.id', 'left')
			->group_by('movies.id')
			->order_by('review_count', 'DESC')
			->limit(10)
			->get('movies')
			->result();



		// Load views
		$this->load->view('header', $data);
		$this->load->view('beranda', $data);
		$this->load->view('footer');
	}

	/** ==========================================================
	 *  HALAMAN DETAILS FILM
	 *  ========================================================== */
	public function details($id)
	{
		$details = $this->Beranda_model->getdetails($id);
		if (empty($details)) {
			show_404();
		}

		$data = [
			'title'     => $details[0]->title ?? 'Details Movie',
			'movies'    => $details,
			'featured'  => $this->db
				->where_in('is_featured', [1, 2, 3, 4])
				->get('movies')->result()
		];

		$this->load->view('header', $data);
		$this->load->view('details', $data);
		$this->load->view('footer');
	}

	/** ==========================================================
	 *  HALAMAN KATEGORI
	 *  ========================================================== */
	public function categories($id)
	{
		$category = $this->db->where('id', $id)->get('categories')->row();
		if (!$category) {
			show_404();
		}

		$data = [
			'title'     => 'Category: ' . $category->name,
			'category'  => $category,
			'movies'    => $this->Beranda_model->getcategories($id)
		];

		$this->load->view('header', $data);
		$this->load->view('categories', $data);
		$this->load->view('footer');
	}

	/** ==========================================================
	 *  HALAMAN BERDASARKAN TAHUN
	 *  ========================================================== */
	public function years($year)
	{
		$data = [
			'title' => "Movies from {$year}",
			'year'  => $year,
			'movies' => $this->db
				->where('year', $year)
				->get('movies')->result()
		];

		$this->load->view('header', $data);
		$this->load->view('years', $data);
		$this->load->view('footer');
	}

	/** ==========================================================
	 *  KOMENTAR
	 *  ========================================================== */
	public function comment($movie_id)
	{
		$data = [
			'title'     => 'Comments',
			'comments'  => $this->Beranda_model->getcomment($movie_id)
		];

		$this->load->view('header', $data);
		$this->load->view('details', $data);
		$this->load->view('footer');
	}

	public function savecomment()
	{
		$insert = [
			'name'      => $this->input->post('name', TRUE),
			'comment'   => $this->input->post('comment', TRUE),
			'movie_id'  => $this->input->post('movie_id', TRUE),
		];

		$this->db->insert('comments', $insert);
		redirect('details/' . $insert['movie_id']);
	}

	public function savereview()
	{
		$insert = [
			'name'      => $this->input->post('name', TRUE),
			'title'     => $this->input->post('title', TRUE),
			'rating'    => $this->input->post('select', TRUE),
			'review'    => $this->input->post('text2', TRUE),
			'movie_id'  => $this->input->post('movie_id', TRUE),
		];

		$this->db->insert('reviews', $insert);
		redirect('details/' . $insert['movie_id']);
	}

	/** ==========================================================
	 *  BOOKMARK TOGGLE DAN LIST
	 *  ========================================================== */
	public function toggle()
	{
		$user_id  = $this->session->userdata('user_id');
		$movie_id = $this->input->post('movie_id', TRUE);

		if (!$user_id) {
			echo json_encode(['status' => 'error', 'msg' => 'Login required']);
			return;
		}

		$result = $this->Beranda_model->toggleBookmark($user_id, $movie_id);
		echo json_encode($result);
	}

	public function mybookmarks()
	{
		$user_id = $this->session->userdata('user_id');

		if (!$user_id) {
			redirect('login');
		}

		$data = [
			'title'     => 'My Bookmarks',
			'bookmarks' => $this->Beranda_model->getUserBookmarks($user_id)
		];

		$this->load->view('header', $data);
		$this->load->view('my_bookmarks', $data);
		$this->load->view('footer');
	}

	public function search()
	{
		$this->load->library('pagination');

		// === Ambil parameter dari URL ===
		$keyword = $this->input->get('q');
		$type    = $this->input->get('type');
		$limit   = $this->input->get('limit') ? (int)$this->input->get('limit') : 20;
		$page    = $this->input->get('page') ? (int)$this->input->get('page') : 1;
		$sort    = $this->input->get('sort') ?? 'rating';
		$order   = strtolower($this->input->get('order') ?? 'desc'); // ASC atau DESC

		// Pastikan hanya ASC/DESC
		$order = ($order === 'asc') ? 'ASC' : 'DESC';

		// === Hitung total data ===
		if ($keyword) $this->db->like('title', $keyword);
		if ($type == 'tv') {
			$this->db->where('is_tv_show', 1);
		} elseif ($type == 'movie') {
			$this->db->where('is_tv_show', 0);
		}
		$total_rows = $this->db->count_all_results('movies');

		// === Hitung offset ===
		$offset = ($page - 1) * $limit;

		// === Query data utama ===
		if ($keyword) $this->db->like('title', $keyword);
		if ($type == 'tv') {
			$this->db->where('is_tv_show', 1);
		} elseif ($type == 'movie') {
			$this->db->where('is_tv_show', 0);
		}

		// Urutan
		switch ($sort) {
			case 'rating':
				$this->db->order_by('rating', $order);
				break;
			case 'date':
				$this->db->order_by('release_date', $order);
				break;
			case 'title':
				$this->db->order_by('title', $order);
				break;
			default:
				$this->db->order_by('rating', 'DESC');
				break;
		}

		$this->db->limit($limit, $offset);
		$data['movies'] = $this->db->get('movies')->result();

		// === Pagination config ===
		$config['base_url'] = site_url('search?q=' . urlencode($keyword) . '&type=' . $type . '&limit=' . $limit . '&sort=' . $sort . '&order=' . strtolower($order));
		$config['total_rows'] = $total_rows;
		$config['per_page'] = $limit;
		$config['use_page_numbers'] = TRUE;
		$config['page_query_string'] = TRUE;
		$config['query_string_segment'] = 'page';
		$config['reuse_query_string'] = TRUE;

		// Tampilan pagination
		$config['full_tag_open'] = '<div class="pagination2">';
		$config['full_tag_close'] = '</div>';
		$config['num_tag_open'] = '<a href="#">';
		$config['num_tag_close'] = '</a>';
		$config['cur_tag_open'] = '<a class="active" href="#">';
		$config['cur_tag_close'] = '</a>';
		$config['next_link'] = '<i class="ion-arrow-right-b"></i>';
		$config['prev_link'] = '<i class="ion-arrow-left-b"></i>';

		$this->pagination->initialize($config);

		$data['pagination'] = $this->pagination->create_links();

		// === Hitung halaman saat ini & total ===
		$total_pages = ($total_rows > 0) ? ceil($total_rows / $limit) : 1;
		$data['page_info'] = "<span>Page {$page} of {$total_pages}:</span>";

		// === Kirim data ke view ===
		$data['title'] = "Search Results for \"$keyword\"";
		$data['sort'] = $sort;
		$data['order'] = strtolower($order);
		$data['limit'] = $limit;

		$this->load->view('header', $data);
		$this->load->view('search_results', $data);
		$this->load->view('footer');
	}
}

/* End of file Beranda.php */
