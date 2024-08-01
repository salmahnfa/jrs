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

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
            <h2>Periode Pembayaran</h2>
            <p>Pilih periode pembayaran yang kamu inginkan.</p>
        </div>

        <div class="row gx-lg-0 gy-4">
          <div class="col-lg-8 offset-lg-2">
            <div class="php-email-form">
              <div class="row">
                <div class="col-md-6 form-group">
                  <p>Awal Periode</p>
                  <input type="date" name="awal_periode" class="form-control" id="awal_periode" max="1979-12-31" placeholder="DD/MM/YYYY" required>
                </div>
                <script>
                  document.getElementById("awal_periode").valueAsDate = new Date();
                </script>
                <div class="col-md-6 form-group">
                  <p>Akhir Periode</p>
                  <input type="date" name="akhir_periode" class="form-control" id="akhir_periode" placeholder="DD/MM/YYYY" required>
                </div>
                <script>
                  document.getElementById("akhir_periode").valueAsDate = new Date();
                </script>
              </div>
              <div class="form-group mt-3">
              </div>
              <div class="text-center"><button type="submit" onclick="hide(this)">Cari</button></div>
              <script>
                let hide = button => {
                  let element = document.getElementById("checklist");
                  let hidden = element.getAttribute("hidden");

                  if (hidden) {
                    element.removeAttribute("hidden");
                  } else {
                    element.setAttribute("hidden", "hidden");
                  }
                }
              </script>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section hidden id="checklist" class="contact">
      <div class="container" data-aos="fade-up">
        <div class="row gx-lg-0 gy-4">
          <div class="col-lg-12">
            <div class="php-email-form">
              <div class="row">
                <div class="col-md-6 form-group">
                  <h5>Pilih Retribusi</h5>
                </div>
                <div class="table-responsive">
                  <table id="add-row" class="display table table-striped table-hover">
                  <script>
                    function toggle(source) {
                      checkboxes = document.getElementsByName("cb");
                      for(var i=0, n=checkboxes.length;i<n;i++) {
                        checkboxes[i].checked = source.checked;
                      }
                    }
                  </script>
                    <thead>
                      <tr style='text-align: center'>
                        <th><input class="form-check-input" type="checkbox" value="" onClick="toggle(this)"></th>
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
                        <td><input name="cb" class="form-check-input" type="checkbox" value=""></td>
                        <td>829347</th>
                        <td>Pelayanan Persampahan/Kebersihan</td>
                        <td>Rumah Tangga Kelompok A</td>
                        <td style='text-align: center'>Januari</td>
                        <td style='text-align: center'>Tagihan</td>
                        <td style='width:20%;text-align: right'>Rp10.000</td>
                      </tr>
                      <tr>
                        <td><input name="cb" class="form-check-input" type="checkbox" value=""></td>
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
              <div class="text-center"><button type="submit" onclick="location.href='{{ url('konfirmasi') }}'">Bayar</button></div>
            </div>
          </div>
        </div>
      </div>
    </section>

  </main><!-- End #main -->

@endsection()