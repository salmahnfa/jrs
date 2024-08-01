<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>{{ $title }}</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/logo.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Raleway:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Impact
  * Updated: Sep 18 2023 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/impact-bootstrap-business-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
 <!-- ======= Header ======= -->
  <header id="header" class="header d-flex align-items-center">

    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">
      <a href="{{ url('beranda') }}" class="logo d-flex align-items-center">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <!-- <img src="assets/img/logo.png" alt=""> -->
        <h1>Jogja Retribution Services<span>.</span></h1>
      </a>
      <nav id="navbar" class="navbar">
        <ul>
          <li><a href="{{ url('beranda') }}">Beranda</a></li>
          <li class="dropdown"><a href="#"><span>Layanan</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
            <ul>
              <li><a href="{{ url('tentang-retribusi') }}">Tentang Retribusi</a></li>
              <li class="dropdown"><a href="{{ url('tarif-retribusi') }}"><span>Tarif Retribusi</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
                <ul>
                  <li><a href="{{ url('retribusi-kebersihan') }}">Pelayanan Persampahan/Kebersihan</a></li>
                  <li><a href="{{ url('retribusi-limbah-cair') }}">Pengolahan Limbah Cair</a></li>
                  <li><a href="{{ url('retribusi-pemakaman') }}">Pelayanan Pemakaman</a></li>
                </ul>
              </li>
              <li><a href="{{ url('retribusiku') }}">Retribusiku</a></li>
              <li><a href="{{ url('bayar') }}">Bayar Retribusi</a></li>
            </ul>
          </li>
          <li><a href="https://wa.me/62895377684615" target="_blank">Bantuan</a></li>
          <li><a href="{{ url('faq') }}">FAQ</a></li>
          <li>
            <div class="d-flex justify-content-center justify-content-lg-start">
              <a href="{{ url('login') }}" class="btn-get-started">{{ $logged }}</a>
            </div></li>
        </ul>
      </nav><!-- .navbar -->

      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>

    </div>
  </header><!-- End Header -->
  <!-- End Header -->

  @yield('content')

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">

    <div class="container">
      <div class="row gy-4">
        <div class="col-lg-5 col-md-12 footer-info">
          <a href="index.html" class="logo d-flex align-items-center">
            <span>Jogja Retribution Services</span>
          </a>
          <p>Layanan retribusi online Pemerintah Kota Yogyakarta.</p>
          <div class="social-links d-flex mt-4">
            <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
            <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
            <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
            <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
          </div>
        </div>

        <div class="col-lg-2 col-6 footer-links">
          <h4>Menu</h4>
          <ul>
            <li><a href="{{ url('beranda') }}">Beranda</a></li>
            <li><a href="{{ url('panduan') }}">Panduan</a></li>
            <li><a href="{{ url('faq') }}">FAQ</a></li>
            <li><a href="{{ url('bantuan') }}">Bantuan</a></li>
          </ul>
        </div>

        <div class="col-lg-2 col-6 footer-links">
          <h4>Layanan Kami</h4>
          <ul>
            <li><a href="{{ url('informasi') }}">Tentang Retribusi</a></li>
            <li><a href="{{ url('tarif') }}">Tarif Retribusi</a></li>
            <li><a href="{{ url('retribusiku') }}">Retribusiku</a></li>
            <li><a href="{{ url('bayar') }}">Bayar Retribusi</a></li>
          </ul>
        </div>

        <div class="col-lg-3 col-md-12 footer-contact text-center text-md-start">
          <h4>Kontak</h4>
          <p>
            Jl. Muja Muju<br>
            Yogyakarta, DIY<br>
            Indonesia<br><br>
            <strong>Telp:</strong> +62 6262 6262 6262<br>
            <strong>Email:</strong> adminjrs@mail.com<br>
          </p>
        </div>

      </div>
    </div>

    <div class="container mt-4">
      <div class="copyright">
        &copy; Copyright <strong><span>JRS</span></strong>. All Rights Reserved
      </div>
    </div>

  </footer><!-- End Footer -->
  <!-- End Footer -->

  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>