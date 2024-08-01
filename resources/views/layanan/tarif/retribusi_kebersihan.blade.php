@extends('layout')

@section('content')

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs">
      <div class="page-header d-flex align-items-center" style="background-image: url('');">
        <div class="container position-relative">
          <div class="row d-flex justify-content-center">
            <div class="col-lg-6 text-center">
              <h2>{{ $title }}</h2>
              <p>Hal-hal yang perlu kamu tahu tentang retribusi Kota Yogyakarta.</p>
            </div>
          </div>
        </div>
      </div>
      <nav>
        <div class="container">
          <ol>
            <li><a href="{{ url('beranda') }}">Beranda</a></li>
            <li><a href= "{{ url('retribusi-kebersihan') }}">{{ $title }}</a></li>
          </ol>
        </div>
      </nav>
    </div><!-- End Breadcrumbs -->

    <!-- ======= Blog Details Section ======= -->
    <section id="blog" class="blog">
      <div class="container" data-aos="fade-up">

        <div class="row g-5">

          <div class="col-lg-8">

            <article class="blog-details">
              <h1 class="title">Tarif Retribusi Pemakaman</h1>

              <div class="content" align="justify">

                <p>
                    <br>Berdasarkan Peraturan Daerah Kota Yogyakarta Nomor 21 Tahun 2012 Tentang Retribusi Kebersihan, retribusi pelayanan persampahan/kebersihan adalah retribusi yang dipungut atas pelayanan persampahan/kebersihan. Objek retribusi pelayanan persampahan/kebersihan meliputi
                    pengambilan sampah dari tempat pembuangan sampah (TPS) sementara, pengangkutan sampah dari TPS yang disediakan oleh pemerintah daerah, dan penyediaan lokasi pembuangan/pemusnahan akhir sampah. Adapun yang menjadi subjek retribusi pelayanan persampahan/kebersihan adalah
                    orang pribadi atau badan yang mendapatkan pelayanan persampahan/kebersihan.
                </p>

                <p>
                    Struktur dan besaran tarif retribusi layanan persampahan/kebersihan ditetapkan sebagai berikut:
                </p>

                <img src="assets/img/tarif-retribusi.png" class="img-fluid" alt="">

              </div><!-- End post content -->
            </article><!-- End blog post -->
          </div>

          <div class="col-lg-4">

            <div class="sidebar">

              <div class="sidebar-item search-form">
                <h3 class="sidebar-title">Cari</h3>
                <form action="" class="mt-3">
                  <input type="text">
                  <button type="submit"><i class="bi bi-search"></i></button>
                </form>
              </div><!-- End sidebar search formn-->

              <div class="sidebar-item recent-posts">
                <h3 class="sidebar-title">Berita Utama</h3>

                <div class="mt-3">

                  <div class="post-item mt-3">
                    <img src="assets/img/blog/blog-recent-1.jpg" alt="">
                    <div>
                      <h4><a href="blog-details.html">Kenaikan Upah Minimum Regional Kota Yogyakarta, Semua Senang</a></h4>
                      <time datetime="2020-01-01">Jan 1, 2020</time>
                    </div>
                  </div><!-- End recent post item-->

                  <div class="post-item">
                    <img src="assets/img/blog/blog-recent-2.jpg" alt="">
                    <div>
                      <h4><a href="blog-details.html">Daftar Working Space yang Bisa Kamu Kunjungi</a></h4>
                      <time datetime="2020-01-01">Jan 1, 2023</time>
                    </div>
                  </div><!-- End recent post item-->

                  <div class="post-item">
                    <img src="assets/img/blog/blog-recent-3.jpg" alt="">
                    <div>
                      <h4><a href="blog-details.html">Kondisi Rapat Kerja di Kantor Pemerintah Kota Yogyakarta</a></h4>
                      <time datetime="2020-01-01">Jan 1, 2024</time>
                    </div>
                  </div><!-- End recent post item-->
                </div>

              </div><!-- End sidebar recent posts-->
            </div><!-- End Blog Sidebar -->

          </div>
        </div>

      </div>
    </section><!-- End Blog Details Section -->

  </main><!-- End #main -->

@endsection()