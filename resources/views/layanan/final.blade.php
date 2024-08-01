@extends('layout')

@section('content')

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs">
      <div class="page-header d-flex align-items-center" style="background-image: url('');">
        <div class="container position-relative">
          <div class="row d-flex justify-content-center">
            <div class="col-lg-6 text-center">
              <h2>Bayar Retribusi</h2>
              <p></p>
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

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
            <h2>Kode Pembayaran</h2>
            <p>Gunakan kode berikut untuk melakukan pembayaran.</p>
        </div>

        <div class="row">
          <div class="col-lg-12">
            <form action="forms/contact.php" method="post" role="form" class="php-email-form">
              <div class="row align-items-center">
                <div class="icon-boxes position-relative">
                    <div class="container position-relative">
                        <div class="row">
                            <div class="card">
                                <img src="assets/img/qrcode.jpeg" class="img-fluid" width="500" height="600">
                            </div>
                        </div>
                    </div>
                </div>
            </form>
          </div><!-- End Contact Form -->
        </div>
      </div>
            <h5><br><br><br>Petunjuk Pembayaran</h5>
            <h8><br>Bayar menggunakan Kode Pembayaran</h8>
            <p>
1. Buka aplikasi mobile-banking atau e-wallet<br>
2. Memilih menu pembayan retribusi<br>
3. Masukkan kode pembayaran<br>
4. Klik bayar dan lanjutkan ke proses pembayaran<br>
5. Selesaikan pembayaran sesuai metode pembayaran retribusi yang kamu pilih<br>
6. Struk pembayaran akan segera dikirim ke e-mail dan berlaku sebagai bukti pembayaran yang sah<br>

<h8><br>Bayar menggunakan QRIS</h8>
<p>
1. Buka aplikasi mobile-banking atau e-wallet<br>
2. Arahkan kamera ke QR Code atau unduh QR Code<br>
3. Pilih opsi bayar dan unggah QR Code melalui menu pada bagian kanan atas<br>
4. Input jumlah nominal yang ingin dibayarkan<br>
5. Klik bayar dan lanjutkan ke proses pembayaran<br>
6. Struk pembayaran akan segera dikirim ke e-mail dan berlaku sebagai bukti pembayaran yang sah</p>
    </section>

  </main><!-- End #main -->

  @endsection()