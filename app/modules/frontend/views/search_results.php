<!DOCTYPE html>
<!--[if IE 7]>
<html class="ie ie7 no-js" lang="en-US">
<![endif]-->
<!--[if IE 8]>
<html class="ie ie8 no-js" lang="en-US">
<![endif]-->
<!--[if !(IE 7) | !(IE 8)  ]><!-->
<html lang="en" class="no-js">

<head>
    <!-- Basic need -->
    <title><?= $title; ?></title>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <link rel="profile" href="#">

    <!--Google Font-->
    <link rel="stylesheet" href='css?family=Dosis:400,700,500|Nunito:300,400,600'>

    <!-- Mobile specific meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="format-detection" content="telephone-no">

    <!-- CSS files -->
    <link rel="stylesheet" href="<?= base_url('assets/css/plugins.css?v=' . filemtime(FCPATH . 'assets/css/plugins.css')); ?>">
    <link rel="stylesheet" href="<?= base_url('assets/css/style.css?v=' . filemtime(FCPATH . 'assets/css/style.css')); ?>">

    <!-- Custom Style -->
    <style>
        .pagination2-wrapper {
            display: flex;
            align-items: center;
            justify-content: flex-end;
            gap: 0px;
            flex-wrap: wrap;
        }

        .page-info {
            color: #aaa;
            font-size: 13px;
        }
    </style>
</head>

<body>
    <!--preloading-->
    <div id="preloader">
        <!-- <img class="logo" src="<?= base_url('assets/images/logo-update2.png') ?>" alt="" width="300" height="100"> -->
        <div id="status">
            <span></span>
            <span></span>
        </div>
    </div>
    <!--end of preloading-->
    <!--login form popup-->
    <div class="login-wrapper" id="login-content">
        <div class="login-content">
            <a href="#" class="close">x</a>
            <h3>Login</h3>
            <form method="post" action="login.php">
                <div class="row">
                    <label for="username">
                        Username:
                        <input type="text" name="username" id="username" placeholder="Hugh Jackman" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{8,20}$" required="required">
                    </label>
                </div>

                <div class="row">
                    <label for="password">
                        Password:
                        <input type="password" name="password" id="password" placeholder="******" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required">
                    </label>
                </div>
                <div class="row">
                    <div class="remember">
                        <div>
                            <input type="checkbox" name="remember" value="Remember me"><span>Remember me</span>
                        </div>
                        <a href="#">Forget password ?</a>
                    </div>
                </div>
                <div class="row">
                    <button type="submit">Login</button>
                </div>
            </form>
            <div class="row">
                <p>Or via social</p>
                <div class="social-btn-2">
                    <a class="fb" href="#"><i class="ion-social-facebook"></i>Facebook</a>
                    <a class="tw" href="#"><i class="ion-social-twitter"></i>twitter</a>
                </div>
            </div>
        </div>
    </div>
    <!--end of login form popup-->
    <!--signup form popup-->
    <div class="login-wrapper" id="signup-content">
        <div class="login-content">
            <a href="#" class="close">x</a>
            <h3>sign up</h3>
            <form method="post" action="signup.php">
                <div class="row">
                    <label for="username-2">
                        Username:
                        <input type="text" name="username" id="username-2" placeholder="Hugh Jackman" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{8,20}$" required="required">
                    </label>
                </div>

                <div class="row">
                    <label for="email-2">
                        your email:
                        <input type="password" name="email" id="email-2" placeholder="" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required">
                    </label>
                </div>
                <div class="row">
                    <label for="password-2">
                        Password:
                        <input type="password" name="password" id="password-2" placeholder="" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required">
                    </label>
                </div>
                <div class="row">
                    <label for="repassword-2">
                        re-type Password:
                        <input type="password" name="password" id="repassword-2" placeholder="" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required">
                    </label>
                </div>
                <div class="row">
                    <button type="submit">sign up</button>
                </div>
            </form>
        </div>
    </div>
    <!-- ====== SEARCH RESULTS SECTION ====== -->
    <div class="hero common-hero">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="hero-ct">
                        <h1>Search Results</h1>
                        <ul class="breadcumb">
                            <li class="active"><a href="<?= site_url() ?>">Home</a></li>
                            <li><span class="ion-ios-arrow-right"></span> Search: “<?= htmlspecialchars($this->input->get('q')) ?>”</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="page-single">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="topbar-filter fw">
                        <p>Found <span><?= count($movies) ?> movies</span> in total</p>
                        <label>Sort by:</label>
                        <select id="sort-select" onchange="changeSort(this.value)">
                            <option value="rating" <?= ($sort == 'rating') ? 'selected' : '' ?>>Rating Descending</option>
                            <option value="date_asc" <?= ($sort == 'date_asc') ? 'selected' : '' ?>>Release Date Asc</option>
                            <option value="date" <?= ($sort == 'date') ? 'selected' : '' ?>>Release Date Desc</option>
                            <option value="title" <?= ($sort == 'title') ? 'selected' : '' ?>>Title A-Z</option>
                        </select>
                        <a href="#" class="grid"><i class="ion-grid active"></i></a>
                    </div>

                    <div class="flex-wrap-movielist mv-grid-fw">
                        <?php if (empty($movies)): ?>
                            <p>No movies found.</p>
                        <?php else: ?>
                            <?php foreach ($movies as $movie): ?>
                                <div class="movie-item-style-2 movie-item-style-1">
                                    <img src="<?= base_url('assets/movies/' . $movie->picture) ?>"
                                        alt="<?= $movie->title ?>"
                                        onerror="this.src='<?= base_url('assets/images/no-image.jpg') ?>'">
                                    <div class="hvr-inner">
                                        <a href="<?= site_url('details/' . $movie->id) ?>"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                    </div>
                                    <div class="mv-item-infor">
                                        <h6><a href="<?= site_url('details/' . $movie->id) ?>"><?= $movie->title ?></a></h6>
                                        <p class="rate">
                                            <i class="ion-android-star"></i>
                                            <span><?= $movie->rating ?? '0' ?></span> /10
                                        </p>
                                        <?php if (!empty($movie->release_date)): ?>
                                            <p><small>Release: <?= date('d M Y', strtotime($movie->release_date)) ?></small></p>
                                        <?php endif; ?>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                        <?php endif; ?>
                    </div>

                    <div class="topbar-filter">
                        <label>Movies per page:</label>
                        <select onchange="changeLimit(this.value)">
                            <option value="10" <?= (isset($_GET['limit']) && $_GET['limit'] == 10) ? 'selected' : '' ?>>10 Movies</option>
                            <option value="20" <?= (isset($_GET['limit']) && $_GET['limit'] == 20) ? 'selected' : '' ?>>20 Movies</option>
                        </select>

                        <div class="pagination2-wrapper">
                            <div class="page-info">
                                <?= $page_info ?? '' ?>
                            </div>
                            <div class="pagination2">
                                <?= $pagination ?? '' ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function changeLimit(limit) {
            const params = new URLSearchParams(window.location.search);
            params.set('limit', limit);
            params.set('page', 0);
            window.location = window.location.pathname + '?' + params.toString();
        }

        function changeSort(sort) {
            const params = new URLSearchParams(window.location.search);
            params.set('sort', sort);
            params.set('page', 0);
            window.location = window.location.pathname + '?' + params.toString();
        }

        function onSortChange() {
            const sort = document.getElementById('sort-select').value;
            const order = document.getElementById('order-select').value;
            const params = new URLSearchParams(window.location.search);
            params.set('sort', sort);
            params.set('order', order);
            params.set('page', 1); // reset ke halaman 1
            window.location.search = params.toString();
        }
    </script>