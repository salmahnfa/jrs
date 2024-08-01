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

    <section id="checklist" class="contact">
      <div class="container" data-aos="fade-up">
        <div class="row gx-lg-0 gy-4">
          <div class="col-lg-12">
            <div class="php-email-form">
              <div class="row">
                <div class="col-md-6 form-group">
                  <h5>Konfirmasi Retribusi</h5>
                </div>
                <div class="table-responsive">
                  <table id="add-row" class="display table table-striped table-hover">
                    <thead>
                      <tr style='text-align: center'>
                        <th>Kode Bayar</th>
                        <th>Jenis Retribusi</th>
                        <th>Wajib Retribusi</th>
                        <th>Bulan Bayar</th>
                        <th>Keterangan</th>
                        <th>Jumlah</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>829347</th>
                        <td>Pelayanan Persampahan/Kebersihan</td>
                        <td>Rumah Tangga Kelompok A</td>
                        <td style='text-align: center'>Januari</td>
                        <td style='text-align: center'>Tagihan</td>
                        <td style='width:20%;text-align: right'>Rp10.000</td>
                      </tr>
                      <tr>
                        <td>293848</th>
                        <td>Pengelolaan Limbah Cair</td>
                        <td>Rumah Tangga 1</td>
                        <td style='text-align: center'>Januari</td>
                        <td style='text-align: center'>Tagihan</td>
                        <td style='width:20%;text-align: right'>Rp3.000</td>
                      </tr>
                    </tbody>
                    <tfoot>
                      <tr style='text-align: center'>
                        <th></th>
                        <th>Total</th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th style='width:20%;text-align: right'>Rp13.000</th>
                      </tr>
                    </tfoot>
                  </table>
                </div>
                <div class="col-md-6 form-group">
                </div>
              </div>
              <div class="form-group mt-3">
              </div>
              <div class="text-center"><button type="submit"  onclick="location.href='{{ url('final') }}'">Konfirmasi</button></div>
              
            </div>
          </div>
        </div>
      </div>
    </section>

  </main><!-- End #main -->

@endsection()