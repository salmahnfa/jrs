@extends('admin.layout')

@section('content')
<div class="main-panel">
	<div class="content">
		<div class="page-inner">
			<div class="page-header">
				<h4 class="page-title">{{$title}}</h4>
				<ul class="breadcrumbs">
					<li class="nav-home">
						<a href="{{ url('dashboard') }}">
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
						<a href="{{ url('admin') }}">{{$title}}</a>
					</li>
					<li class="separator">
						<i class="flaticon-right-arrow"></i>
					</li>
					<li class="nav-item">
						<a href="#">Tambah Baru</a>
					</li>
				</ul>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<div class="card-title">Tambah Admin OPD Baru</div>
						</div>

						<!-- Start Alert -->
						@if(session()->has('error'))
						<div class="alert alert-danger alert-dismissible fade show" role="alert">
							{{ session('error') }}
							<button type="button" class="btn btn-primary btn-rounded btn-login" data-bs-dismiss="alert">×</button>
						</div>
						@endif
						<!-- End ALert -->
						<form action="{{ route('admins.store') }}" method="POST">
							@csrf
							<div class="card-body">
								<div class="form-group">
									<label for="nama" class="form-label">Nama</label>
									<input type="text" value="{{ old('nama') }}" name="nama" class="form-control @error('nama') is-invalid @enderror" id="nama" placeholder="Masukkan Nama">
									@error('nama')
									<div class="invalid-feedback">
										{{ $message }}
									</div>
									@enderror
								</div>
								<div class="form-group">
									<label for="email" class="form-label">Email</label>
									<input type="email" value="{{ old('email') }}" name="email" class="form-control @error('email') is-invalid @enderror" id="email" placeholder="Masukkan Email">
									@error('email')
									<div class="invalid-feedback">
										{{ $message }}
									</div>
									@enderror
								</div>
								<div class="form-group">
									<label for="password" class="form-label">Password</label>
									<input type="password" value="{{ old('password') }}" name="password" class="form-control @error('password') is-invalid @enderror" id="password" placeholder="Masukkan Password">
									@error('password')
									<div class="invalid-feedback">
										{{ $message }}
									</div>
									@enderror
								</div>
								<div class="form-group">
									<label for="role" class="form-label">Role</label>
									<select name="role" id="role" class="form-control @error('role') is-invalid @enderror" required>
										@foreach($roles as $role)
										<option value="{{ $role->id }}" {{ old('role') == $role->id ? 'selected' : '' }}>{{ $role->nama }}</option>
										@endforeach
									</select>
									@error('role')
									<div class="invalid-feedback">
										{{ $message }}
									</div>
									@enderror
								</div>

								<div class="card-action">
									<button class="btn btn-success" type="submit">Simpan</button>
									<a href="{{ url('admin/kategoris') }}" class="btn btn-danger" type="submit">Batal</a>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

@endsection()