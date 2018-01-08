<header id="header-group">
    <!--Logo and Banner-->
    <section class="container-fluid">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4" id="logo-header">
                <a href="#">
                    <div  id="logo-img">
                        <img src="app/views/layout/img/icon/logo.svg">
                    </div>
                    <div id="name-school">
                        <h3>Nhóm newbie <br> Bách Khoa Đà Nẵng</h3>
                    </div>
                </a>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8" id="school-address">
                <h2>
                    Sách mở ra trước mắt ta một chân trời mới
                </h2>
            </div>
        </div>
    </section>
    <!--Main Menu-->
    <section class="container-fluid" id="main-menu">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <nav class="navbar navbar-default" role="navigation">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#" id="home-navbar"><i class="fa fa-home fa-2x"></i></a>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse navbar-ex1-collapse">
                        <ul class="menu">
                            <li class="active"><a href="#"><i class="fa fa-home fa-2x"></i></a></li>
                            <li><a href="#">Giới thiệu</a>
                                <ul class="submenu">
                                    <li><a href="#">Giới thiệu về chúng tôi</a></li>
                                    <li><a href="#">các loại sách</a></li>
                                </ul>
                            </li>
                            <li class="active"><a href="#">Kinh tế</a>
                                <ul class="submenu">
                                    <li><a href="#">Kinh tế truyền thống</a></li>
                                    <li><a href="#">Nghệ thuật bán hàng</a></li>
                                    <li><a href="#">Khởi nghiệp</a></li>
                                    <li><a href="#">Người thành công</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Văn Học</a>
                                <ul class="submenu">
                                    <li><a href="#">Thơ đường luật</a></li>
                                    <li><a href="#">Truyện tranh</a></li>
                                    <li><a href="#">Ngôn tình</a></li>
                                    <li><a href="#">Học đường</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Truyện</a>
                                <ul class="submenu">
                                    <li><a href="#">ngôn tình</a></li>
                                    <li><a href="#">Học đường</a></li>
                                    <li><a href="#">Kinh dị</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Kĩ năng sống</a></li>
                            <li><a href="#">Học tiếng anh</a></li>
                            <li><a href="#">Liên hệ</a></li>

                        </ul>
                    </div><!-- /.navbar-collapse -->
                </nav>
            </div>
        </div>
    </section>
    <!--header-tool-->
    <section id="header-tool" class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-4 col-md-2 col-lg-2" id="time">
                <div class="below_body">
                    <div id="clock">Loading...</div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-7 col-md-9 col-lg-9" id="welcome">
                <marquee scrollamount="5" onmouseover="this.stop()" onmouseout="this.start()">
                    Chào mừng bạn đến với website sách của chúng tôi
                </marquee>
            </div>
            <div class="col-xs-12 col-sm-1 col-md-1 col-lg-1">
                <div id="wrap-search">
                    <form action="" autocomplete="on">
                        <input id="search" name="search" type="text" placeholder="Mời bạn nhập nội dung tìm kiếm">
                        <input id="search_submit" class="fa fa-search" value="Rechercher" type="submit">
                    </form>
                </div>
            </div>
        </div>
    </section>
    <hr>
</header>