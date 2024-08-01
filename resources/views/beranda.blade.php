@extends('layout')

@section('content')

<!-- ======= Hero Section ======= -->
<section id="hero" class="hero">
    <div class="container position-relative">
      <div class="row gy-5" data-aos="fade-in">
        <div class="col-lg-5 order-2 order-lg-1 offset-md-1 d-flex flex-column justify-content-center text-center text-lg-start">
          <h2>Selamat Datang di <span>JRS!</span></h2>
          <p>JRS atau Jogja Retribution Services adalah layanan retribusi online Pemerintah Kota Yogyakarta.</p>
          <div class="d-flex justify-content-center justify-content-lg-start">
            
          </div>
        </div>
        <div class="col-lg-5 order-1 order-lg-5">
          <img src="assets/img/Recycling-pana.svg" class="img-fluid" alt="" data-aos="zoom-out" data-aos-delay="100">
        </div>
      </div>
    </div>

    <div class="icon-boxes position-relative">
      <div class="container position-relative">
        <div class="row gy-4 mt-5">

          <div class="col-xl-3 col-md-6" data-aos="fade-up" data-aos-delay="100">
            <div class="icon-box">
              <div class="icon"><i class="bi bi-file-earmark-text"></i></div>
              <h4 class="title"><a href="{{ url('tentang-retribusi') }}" class="stretched-link">Tentang Retribusi</a></h4>
            </div>
          </div><!--End Icon Box -->

          <div class="col-xl-3 col-md-6" data-aos="fade-up" data-aos-delay="200">
            <div class="icon-box">
              <div class="icon"><i class="bi bi-tags"></i></div>
              <h4 class="title"><a href="{{ url('tarif-retribusi') }}" class="stretched-link">Tarif Retribusi</a></h4>
            </div>
          </div><!--End Icon Box -->

          <div class="col-xl-3 col-md-6" data-aos="fade-up" data-aos-delay="300">
            <div class="icon-box">
              <div class="icon"><i class="bi bi-person"></i></div>
              <h4 class="title"><a href="{{ url('retribusiku') }}" class="stretched-link">Retribusiku</a></h4>
            </div>
          </div><!--End Icon Box -->

          <div class="col-xl-3 col-md-6" data-aos="fade-up" data-aos-delay="500">
            <div class="icon-box">
              <div class="icon"><i class="bi bi-cash-stack"></i></div>
              <h4 class="title"><a href="{{ url('bayar') }}" class="stretched-link">Bayar Retribusi</a></h4>
            </div>
          </div><!--End Icon Box -->

        </div>
      </div>
    </div>

    </div>
  </section>
  <!-- End Hero Section -->

  <main id="main">
    <!-- ======= Our Services Section ======= -->
    <section id="services" class="services sections-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Layanan Retribusi</h2>
          <p>Pilih layanan retribusi yang ingin kamu ketahui besar tarifnya.</p>
        </div>

        <div class="row gy-4" data-aos="fade-up" data-aos-delay="100">

          <div class="col-lg-4 col-md-6">
            <div class="service-item position-relative">
              <div class="icon">
                <i class="bi bi-trash"></i>
              </div>
              <h3>Retribusi Pelayanan Persampahan/Kebersihan</h3>
              <p>Pelayanan meliputi pengambilan sampah dari TPS sementara, pengangkutan sampah dari TPS, dan penyediaan lokasi pembuangan akhir sampah.</p>
              <a href="{{ url('retribusi-kebersihan') }}" class="readmore stretched-link">Read more <i class="bi bi-arrow-right"></i></a>
            </div>
          </div><!-- End Service Item -->

          <div class="col-lg-4 col-md-6">
            <div class="service-item  position-relative">
              <div class="icon">
                <i class="bi bi-droplet"></i>
              </div>
              <h3>Retribusi Pengolahan Limbah Cair</h3>
              <p>Pengolahan air limbah cair domestik yang berupa penggunaan atau pemanfaatan jaringan dan instalasi pengolah air limbah domestik.</p>
              <a href="{{ url('retribusi-limbah-cair') }}" class="readmore stretched-link">Read more <i class="bi bi-arrow-right"></i></a>
            </div>
          </div><!-- End Service Item -->

          <div class="col-lg-4 col-md-6">
            <div class="service-item position-relative">
              <div class="icon">
                <i class="bi bi-bank"></i>
              </div>
              <h3>Retribusi Pelayanan Pemakaman</h3>
              <p>Pelayanan pemakaian tempat pemakaman yang dimiliki atau dikelola pemerintah daerah Kota Yogyakarta.</p>
              <a href="{{ url('retribusi-pemakaman') }}" class="readmore stretched-link">Read more <i class="bi bi-arrow-right"></i></a>
            </div>
          </div><!-- End Service Item -->

        </div>

      </div>
    </section><!-- End Our Services Section -->

    <!-- ======= Frequently Asked Questions Section ======= -->
    <section id="faq" class="faq">
        <div class="container" data-aos="fade-up">
    
        <div class="row gy-4">
            <div class="col-lg-4">
            <div class="content px-xl-5">
                <h3>Frequently Asked <strong>Questions</strong></h3>
                <p>
                Pertanyaan yang sering ditanyakan
                </p>
            </div>
            </div>
    
            <div class="col-lg-8">
            <div class="accordion accordion-flush" id="faqlist" data-aos="fade-up" data-aos-delay="100">
                <div class="accordion-item">
                <h3 class="accordion-header">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-1">
                    <span class="num">1.</span>
                        Pembayaran retribusi menggunakan apa?
                    </button>
                </h3>
                <div id="faq-content-1" class="accordion-collapse collapse" data-bs-parent="#faqlist">
                    <div class="accordion-body">
                    Pembayaran retribusi bisa dilakukan via mobile banking atau e-wallet
                    </div>
                </div>
                </div><!-- # Faq item-->
    
                <div class="accordion-item">
                <h3 class="accordion-header">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-2">
                    <span class="num">2.</span>
                    Apa yang akan terjadi jika saya tidak membayar retribusi tepat waktu?
                    </button>
                </h3>
                <div id="faq-content-2" class="accordion-collapse collapse" data-bs-parent="#faqlist">
                    <div class="accordion-body">
                    Anda akan dikenai denda dengan besaran yang telah ditentukan.
                    </div>
                </div>
                </div><!-- # Faq item-->
    
                <div class="accordion-item">
                <h3 class="accordion-header">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-3">
                    <span class="num">3.</span>
                    Apakah saya dapat berlangganan retribusi air limbah dengan menggunakan nama anggota keluarga lain?
                    </button>
                </h3>
                <div id="faq-content-3" class="accordion-collapse collapse" data-bs-parent="#faqlist">
                    <div class="accordion-body">
                    Bisa. Nama yang tercantum harus memiliki hubungan keluarga dan tercantum dalam satu Kartu Keluarga.
                    </div>
                </div>
                </div><!-- # Faq item-->
    
                <div class="accordion-item">
                <h3 class="accordion-header">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-4">
                    <span class="num">4.</span>
                    Batas pembayaran retribusi setiap tanggal berapa?
                    </button>
                </h3>
                <div id="faq-content-4" class="accordion-collapse collapse" data-bs-parent="#faqlist">
                    <div class="accordion-body">
                    Setiap awal bulan.
                    </div>
                </div>
                </div><!-- # Faq item-->
    
                <div class="accordion-item">
                <h3 class="accordion-header">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-5">
                    <span class="num">5.</span>
                    Saya ingin berhenti berlangganan retribusi air limbah. Bagaimana caranya?
                    </button>
                </h3>
                <div id="faq-content-5" class="accordion-collapse collapse" data-bs-parent="#faqlist">
                    <div class="accordion-body">
                    Silahkan datang ke dinas terkait retribusi yang ingin anda hentikan langganannya.</div>
                </div>
                </div><!-- # Faq item-->  
            </div>
            </div>
        </div>
        </div>
    </section><!-- End Frequently Asked Questions Section -->

    <!-- ======= Recent Blog Posts Section ======= -->
    <section id="recent-posts" class="recent-posts sections-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Berita Utama</h2>
          <p>Kabar dari Kota Yogyakarta</p>
        </div>

        <div class="row gy-4">

          <div class="col-xl-4 col-md-6">
            <article>

              <div class="post-img">
                <img src="assets/img/blog/blog-1.jpg" alt="" class="img-fluid">
              </div>

              <p class="post-category">Politik</p>

              <h2 class="title">
                <a href="blog-details.html">Kenaikan Upah Minimum Regional Kota Yogyakarta, Semua Senang</a>
              </h2>

            </article>
          </div><!-- End post list item -->

          <div class="col-xl-4 col-md-6">
            <article>

              <div class="post-img">
                <img src="assets/img/blog/blog-2.jpg" alt="" class="img-fluid">
              </div>

              <p class="post-category">Sosial</p>

              <h2 class="title">
                <a href="blog-details.html">Daftar Working Space yang Bisa Kamu Kunjungi</a>
              </h2>

            </article>
          </div><!-- End post list item -->

          <div class="col-xl-4 col-md-6">
            <article>

              <div class="post-img">
                <img src="assets/img/blog/blog-3.jpg" alt="" class="img-fluid">
              </div>

              <p class="post-category">Entertainment</p>

              <h2 class="title">
                <a href="blog-details.html">Kondisi Rapat Kerja di Kantor Pemerintah Kota Yogyakarta</a>
              </h2>

            </article>
          </div><!-- End post list item -->

        </div><!-- End recent posts list -->

      </div>
    </section><!-- End Recent Blog Posts Section -->

  </main><!-- End #main -->

@endsection()