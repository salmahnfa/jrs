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
            <li><a href="{{ url('home') }}">Beranda</a></li>
            <li>{{ $title }}</li>
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
              <h1 class="title">Apa Itu Retribusi?</h1>

              <div class="content" align="justify">

                <img src="assets/img/retribusi.jpg" class="img-fluid" alt="">

                <p>
                    <br>
                    Berdasarkan Undang Undang Republik Indonesia Nomor 28 Tahun 2009 Tentang Pajak Daerah dan Retribusi Daerah,
                    retribusi adalah pungutan daerah sebagai pembayaran atas jasa atau pemberian izin tertentu yang khusus disediakan dan/atau diberikan oleh pemerintah daerah
                    untuk kepentingan orang pribadi atau badan. Kebijakan retribusi dilaksanakan berdasarkan prinsip demokrasi, pemerataan dan keadilan, peran serta masyarakat,
                    dan akuntabilitas dengan memperhatikan potensi daerah.
                </p>

                <p>
                    Ada tiga objek retribusi, yaitu retribusi jasa umum, retribusi jasa usaha, dan retribusi perizinan tertentu.
                </p>

                <h3>Retribusi Jasa Umum</h3>
                <p>
                    Retribusi jasa umum adalah pelayanan yang disediakan atau diberikan pemerintah daerah untuk tujuan kepentingan dan kemanfaatan umum serta dapat dinikmati oleh orang pribadi atau badan. Retribusi yang masuk ke dalam jenis retribusi jasa umum diantaranya, yaitu:
                </p>
                <ol>
                    <li>Retribusi Pelayanan Kesehatan</li>
                    <li>Retribusi Pelayanan Persampahan/Kebersihan</li>
                    <li>Retribusi Penggantian Biaya Cetak Kartu Tanda Penduduk dan Akta Catatan Sipil</li>
                    <li>Retribusi Pelayanan Pemakaman dan Pengabuan Mayat</li>
                    <li>Retribusi Pelayanan Parkir di Tepi Jalan Umum</li>
                    <li>Retribusi Pelayanan Pasar</li>
                    <li>Retribusi Pengujian Kendaraan Bermotor</li>
                    <li>Retribusi Pemeriksaan Alat Pemadam Kebakaran</li>
                    <li>Retribusi Penggantian Biaya Cetak Peta</li>
                    <li>Retribusi Penyediaan dan/atau Penyedotan Kakus</li>
                    <li>Retribusi Pengolahan Limbah Cair</li>
                    <li>Retribusi Pelayanan Tera/Tera Ulang</li>
                    <li>Retribusi Pelayanan Pendidikan</li>
                    <li>Retribusi Pengendalian Menara Telekomunikasi</li>
                </ol>
                <p>
                    Subjek retribusi jasa umum adalah orang pribadi atau badan yang menggunakan/menikmati pelayanan jasa umum yang bersangkutan. Adapun wajib retribusi jasa umum adalah orang pribadi atau badan yang menurut ketentuan peraturan perundangundangan 
                    retribusi diwajibkan untuk melakukan pembayaran retribusi, termasuk pemungut atau pemotong retribusi jasa umum. 
                </p>

                <h3>Retribusi Jasa Usaha</h3>
                <p>
                    Retribusi jasa usaha adalah pelayanan yang disediakan oleh pemerintah daerah dengan menganut prinsip komersial yang meliputi pelayanan dengan menggunakan/memanfaatkan kekayaan daerah yang belum dimanfaatkan secara optimal 
                    dan/atau pelayanan oleh pemerintah daerah sepanjang belum disediakan secara memadai oleh pihak swasta. Retribusi yang masuk ke dalam jenis retribusi jasa usaha diantaranya, yaitu:
                </p>
                <ol>
                    <li>Retribusi Pemakaian Kekayaan Daerah</li>
                    <li>Retribusi Pasar Grosir dan/atau Pertokoan</li>
                    <li>Retribusi Tempat Pelelangan</li>
                    <li>Retribusi Terminal</li>
                    <li>Retribusi Tempat Khusus Parkir</li>
                    <li>Retribusi Tempat Penginapan/Pesanggrahan/Villa</li>
                    <li>Retribusi Rumah Potong Hewan</li>
                    <li>Retribusi Pelayanan Kepelabuhanan</li>
                    <li>Retribusi Tempat Rekreasi dan Olahraga</li>
                    <li>Retribusi Penyeberangan di Air</li>
                    <li>Retribusi Penjualan Produksi Usaha Daerah</li>
                </ol>
                <p>
                    Subjek retribusi jasa usaha adalah orang pribadi atau badan yang menggunakan/menikmati pelayanan jasa usaha yang bersangkutan. Adapun wajib retribusi jasa umum adalah orang pribadi atau badan yang menurut ketentuan peraturan perundangundangan 
                    retribusi diwajibkan untuk melakukan pembayaran retribusi, termasuk pemungut atau pemotong retribusi jasa usaha. 
                </p>

                <h3>Retribusi Perizinan Tertentu</h3>
                <p>
                    Retribusi Perizinan Tertentu adalah pelayanan perizinan tertentu oleh pemerintah daerah kepada orang pribadi atau badan yang dimaksudkan untuk pengaturan dan pengawasan atas kegiatan pemanfaatan ruang, penggunaan sumber daya alam, barang, 
                    prasarana, sarana, atau fasilitas tertentu guna melindungi kepentingan umum dan menjaga kelestarian lingkungan. Retribusi yang masuk ke dalam jenis retribusi jasa usaha diantaranya, yaitu:
                </p>
                <ol>
                    <li>Retribusi Izin Mendirikan Bangunan</li>
                    <li>Retribusi Izin Tempat Penjualan Minuman Beralkohol</li>
                    <li>Retribusi Izin Gangguan</li>
                    <li>Retribusi Izin Trayek</li>
                    <li>Retribusi Izin Usaha Perikanan</li>
                </ol>
                <p>
                    Subjek retribusi perizinan tertentu adalah orang pribadi atau badan yang memperoleh izin tertentu dari pemerintah daerah. Adapun wajib retribusi perizinan tertentu adalah orang pribadi atau badan yang menurut ketentuan peraturan perundangundangan 
                    retribusi diwajibkan untuk melakukan pembayaran retribusi, termasuk pemungut atau pemotong retribusi perizinan tertentu. 
                </p>

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