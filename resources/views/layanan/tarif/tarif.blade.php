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
              <p>Informasi seputar tarif retribusi Kota Yogyakarta.</p>
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

    @endsection()