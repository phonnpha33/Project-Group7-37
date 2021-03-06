<!-- ======= Header ======= -->
<header id="header" class="fixed-top d-flex align-items-cente">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-lg-between">

      <h1 class="logo me-auto me-lg-0"><a href=""></a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto me-lg-0"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto active" href="#hero"></a></li>
          <li><a class="nav-link scrollto" href="#hero">หน้าแรก</a></li>
          <li><a class="nav-link scrollto" href="#menu">เมนูอาหาร</a></li>
          <li><a class="nav-link scrollto" href="#specials">เมนูยอดนิยม</a></li>          
          <li><a class="nav-link scrollto" href="#chefs">ผู้จัดทำ</a></li>
          <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
          @if (Route::has('login'))
                <div class="top-right links">
                    @auth
                        <a href="{{ url('/home') }}">{{Auth::user()->name}}</a>

                    @else
                        <a href="{{ route('login') }}">Login</a>

                    @endauth
                </div>
            @endif
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->
      

    </div>
  </header><!-- End Header -->