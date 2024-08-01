@extends('admin_opd.layout')

@section('content')
<div class="main-panel">
	<div class="content">
		<div class="page-inner">
			<div class="page-header">
				<h4 class="page-title">{{$title}}</h4>
				<ul class="breadcrumbs">
					<li class="nav-home">
						<a href="{{ url('home') }}">
							<i class="flaticon-home"></i>
						</a>
					</li>
					<li class="separator">
						<i class="flaticon-right-arrow"></i>
					</li>
					<li class="nav-item">
						<a href="#">Retribusi</a>
					</li>
					<li class="separator">
						<i class="flaticon-right-arrow"></i>
					</li>
					<li class="nav-item">
						<a href="#">Retribusi</a>
					</li>
				</ul>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						@if (session()->has('success'))
							<div class="alert alert-success" role="alert">
								{{ session('success') }}
							</div>
						@endif
						<div class="card-body">
							<div class="table-responsive">
								<table id="add-row" class="display table table-bordered table-hover">
									<thead>
										<tr style='text-align: center'>
											<th style='width: 7%'>#</th>
											<th>ID User</th>
                                            <th>Retribusi</th>
                                            <th>Kategori</th>
                                            <th>Bulan</th>
                                            <th>Tahun</th>
                                            <th>Keterangan</th>
                                            <th>Jumlah</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
										@if (count($transaksis))
										@foreach ($transaksis as $transaksi)
										<tr>
											<td style='text-align: center'></td>
											<td>{{ $transaksi->id_user }}</td>
                                            <td>{{ $transaksi->retribusi->nama }}</td>
                                            <td>{{ $transaksi->kategori->nama }}</td>
                                            <td>{{ $transaksi->bulan }}</td>
                                            <td>{{ $transaksi->tahun }}</td>
                                            <td>{{ $transaksi->keterangan }}</td>
                                            <td>{{ $transaksi->kategori->tarif }}</td>
											<td>
												<div class="form-button-action">
													<a href="/admin_opd/transaksis/{{ $transaksi->id }}/edit" data-toggle="tooltip" title="" class="btn btn-link btn-primary btn-lg" data-original-title="Edit">
														<i class="fa fa-edit"></i>
													</a>
													<form action="{{ route('transaksis.destroy', $transaksi->id) }}" method="POST" class="d-inline">
														@csrf	
														@method('delete')
														<button class="btn btn-link btn-danger" data-toggle="tooltip" onclick="return confirm('Ingin menghapus admin ini?')" data-original-title="Hapus" type="submit">
															<i class="fa fa-times"></i>
														</button>
													</form>
												</div>
											</td>
										</tr>
										@endforeach
										@else
										<tr>
											<td colspan="9" class="text-center">Belum ada data yang dimasukkan.</td>
										</tr>
										@endif
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

@endsection()