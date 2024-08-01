@extends('admin.layout')

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
								<a href="#">User</a>
							</li>
							<li class="separator">
								<i class="flaticon-right-arrow"></i>
							</li>
							<li class="nav-item">
								<a href="{{ url('admin') }}">Admin</a>
							</li>
						</ul>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<div class="d-flex align-items-center">
										<a href="{{ url('admin/admins/create') }}" class="btn btn-primary btn-round ml-auto">
											<i class="fa fa-plus"></i>
											Tambah
										</a>
									</div>
								</div>
								@if (session()->has('success'))
									<div class="alert alert-success" role="alert">
										{{ session('success') }}
									</div>
								@endif
								<div class="card-body">
									<div class="table-responsive">
										<table id="admins" class="display table table-bordered table-hover" >
											<thead>
												<tr style='text-align: center'>
													<th style='width: 7%'>#</th>
													<th>Nama</th>
													<th>Email</th>
													<th style="width: 15%"></th>
												</tr>
											</thead>
											<tbody>
												@if (count($users))
													@foreach ($users as $user)
														<tr id='admins'>
															@if ($user->id_role == 2)
																<td></td>
																<td>{{ $user->nama }}</td>
																<td>{{ $user->email }}</td>
																<td>
																	<div class="form-button-action">
																		<a href="/admin/{{ $user->id }}/edit" data-toggle="tooltip" title="" class="btn btn-link btn-primary btn-lg" data-original-title="Edit">
																			<i class="fa fa-edit"></i>
																		</a>
																		<form action="{{ route('admins.destroy', $user->id) }}" method="POST" class="d-inline">
																			@csrf	
																			@method('delete')
																			<button class="btn btn-link btn-danger" data-toggle="tooltip" onclick="return confirm('Ingin menghapus admin ini?')" data-original-title="Hapus" type="submit">
																				<i class="fa fa-times"></i>
																			</button>
																		</form>
																	</div>
																</td>
															@endif
														</tr>
													@endforeach
												@else
													<tr>
              											<td colspan="9" class="text-center">Belum ada data yang dimasukkan.</td>
           											</tr>
												@endif
											</tbody>
										</table>
										<!--<script>   
											var tables = document.getElementsByTagName('table');   
											var table = tables[tables.length -1];   
											var rows = table.rows;   
											for(var i = 1, td; i < rows.length; i++){           
											td = document.createElement('td');       
											td.appendChild(document.createTextNode(i));       
											rows[i].insertBefore(td, rows[i].firstChild);   
											}
										</script>-->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

@endsection() 