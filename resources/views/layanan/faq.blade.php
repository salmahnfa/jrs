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
          <p>Pertanyaan-pertanyaan yang sering ditanyakan.</p>
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
  
    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Kirim Pertanyaan</h2>
          <p>Tidak menemukan jawaban dari pertanyaanmu? Kirim pertanyaanmu ke sini!</p>
        </div>

        <div class="row gx-lg-0 gy-4">

          <div class="col-lg-4">

            <div class="info-container d-flex flex-column align-items-center justify-content-center">
              <div class="info-item d-flex">
                <i class="bi bi-geo-alt flex-shrink-0"></i>
                <div>
                  <h4>Alamat</h4>
                  <p>Jl. Muja Muju, Yogyakarta, DIY, Indonesia</p>
                </div>
              </div><!-- End Info Item -->

              <div class="info-item d-flex">
                <i class="bi bi-envelope flex-shrink-0"></i>
                <div>
                  <h4>Email</h4>
                  <p>adminjrs@mail.com</p>
                </div>
              </div><!-- End Info Item -->

              <div class="info-item d-flex">
                <i class="bi bi-phone flex-shrink-0"></i>
                <div>
                  <h4>Telp</h4>
                  <p>+62 6262 6262 6262</p>
                </div>
              </div><!-- End Info Item -->

              <div class="info-item d-flex">
                <i class="bi bi-clock flex-shrink-0"></i>
                <div>
                  <h4>Waktu Operasional</h4>
                  <p>Senin-Jumat: 08.00-16.00 WIB</p>
                </div>
              </div><!-- End Info Item -->
            </div>

          </div>

          <div class="col-lg-8">
            <form action="forms/contact.php" method="post" role="form" class="php-email-form">
              <div class="row">
                <div class="col-md-6 form-group">
                  <input type="text" name="name" class="form-control" id="name" placeholder="Nama" required>
                </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                  <input type="email" class="form-control" name="email" id="email" placeholder="Email" required>
                </div>
              </div>
              <div class="form-group mt-3">
                <input type="text" class="form-control" name="subject" id="subject" placeholder="Perihal" required>
              </div>
              <div class="form-group mt-3">
                <textarea class="form-control" name="message" rows="7" placeholder="Pesan" required></textarea>
              </div>
              <div class="my-3">
                <div class="loading">Memuat</div>
                <div class="error-message"></div>
                <div class="sent-message">Pertanyaanmu telah terkirim!</div>
              </div>
              <div class="text-center"><button type="submit">Kirim</button></div>
            </form>
          </div><!-- End Contact Form -->

        </div>

      </div>
    </section><!-- End Contact Section -->

@endsection()