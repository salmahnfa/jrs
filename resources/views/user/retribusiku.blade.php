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
              <p>Isi form dibawah ini untuk melakukan pembayaran.</p>
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

    <section id="services" class="contact">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Layanan Retribusi</h2>
          <p>Pilih layanan retribusi yang ingin kamu ketahui besar tarifnya.</p>
        </div>

        <div class="row gx-lg-0 gy-4 offset-lg-2">

          <div class="col-lg-4">

            <div class="info-container d-flex flex-column align-items-center justify-content-center">
              
              <h5>salmahnfa@gmail.com</h5>
            </div>

          </div>

          <div class="col-lg-5">
            <div class="php-email-form">
              <div class="col-md-6 form-group">
                <h6>Nama Lengkap</h6>
                <p>Enola Connelly V</p>
              </div>
              <div class="col-md-6 form-group mt-3 mt-md-0">
                <h6>NIK</h6>
                <p>2839475618205948</p>
              </div>
              <div class="col-md-6 form-group">
                <h6>Alamat</h6>
                <p>Apt. 628 93040 Parisian Mountains, Wildermanstad, NE 69479</p>
              </div>
              <div class="col-md-6 form-group">
                <h6>Total Tagihan</h6>
                <p>Rp23.000</p>
              </div>
              <div class="col-md-6 form-group">
                <h6>Total Tunggakan</h6>
                <p>Rp10.000</p>
              </div>
            </div>
          </div><!-- End Contact Form -->

        </div>
      </div>
    </section><!-- End Our Services Section -->

    <section id="services" class="contact sections-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Retribusi Terdaftar</h2>
          <p>Pilih</p>
        </div>

        <div class="icon-boxes position-relative">
          <div class="container position-relative">
            <div class="row gy-4 mt-5">

              <div class="col-xl-3 col-md-6" data-aos="fade-up" data-aos-delay="100">
                <div class="icon-box">
                  <div class="icon"><i class="bi bi-trash"></i></div>
                  <h5 class="title"><a href="" class="stretched-link">Pelayanan Persampahan/<br>Kebersihan</a></h5>
                </div>
              </div><!--End Icon Box -->

              <div class="col-xl-3 col-md-6" data-aos="fade-up" data-aos-delay="200">
                <div class="icon-box">
                  <div class="icon"><i class="bi bi-water"></i></div>
                  <h5 class="title"><a href="" class="stretched-link">Pengelolaan<br>Limbah Cair</a></h5>
                </div>
              </div><!--End Icon Box -->
            </div>
          </div>
        </div>
      </div>
    </section>

    <section id="services" class="contact">
      <div class="container" data-aos="fade-up">
        <div class="section-header">
          <h2>Riwayat Transaksi</h2>
          <p>Riwayat pembayaran retribusimu</p>
        </div>
        <div class="table-responsive">
					<table id="add-row" class="display table table-striped table-bordered" >
            <thead>
              <tr style='text-align: center'>
                <th>Waktu Bayar</th>
                <th>Kode Bayar</th>
                <th>Jenis Retribusi</th>
                <th>Wajib Retribusi</th>
                <th>Bulan Bayar</th>
                <th>Keterangan</th>
                <th>Jumlah</th>
              </tr>
            </thead>
            <tbody>
              <tr style='text-align: center'>
                <td>28/01/24 17:23</td>
                <td>92837267</td>
                <td>Pelayanan Persampahan/Kebersihan</td>
                <td>Rumah Tangga A</td>
                <td>Januari</td>
                <td>Tagihan</td>
                <td>Rp20.000</td>
              </tr>
			</tbody>
          </table>
        </div>
      </div>
    </section>

  </main><!-- End #main -->

  @endsection()