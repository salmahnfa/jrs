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
                            <li class="separator">
								<i class="flaticon-right-arrow"></i>
							</li>
                            <li class="nav-item">
								<a href="#">Edit</a>
							</li>
						</ul>
					</div>
					<div class="row">
						<div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">Edit Data Admin</div>
                                </div>
                                <form action="/admin/{{ $admin->id }}" method="POST">
                                    @method('put')
                                    @csrf
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label for="nama">Nama</label>
                                            <input type="text" value="{{ old('nama', $admin->email) }}" name="nama" class="form-control" id="nama" placeholder="Masukkan Nama">
                                        </div>
                                        <div class="form-group">
                                            <label for="email">Email</label>
                                            <input type="email" value="{{ old('email', $admin->email) }}" name="email" class="form-control @error('email') is-invalid @enderror" id="email" placeholder="Masukkan Email">
                                            @error('email')
                                                <div class="invalid-feedback">
                                                {{ $message }}
                                                </div>
                                            @enderror
                                        </div>
                                        <div class="form-group">
                                            <label for="password">Password</label>
                                            <input type="password" value="{{ old('password', $admin->password) }}" name="password" class="form-control @error('password') is-invalid @enderror" id="password" placeholder="Masukkan Password">
                                            @error('password')
                                                <div class="invalid-feedback">
                                                {{ $message }}
                                                </div>
                                            @enderror
                                        </div>
                                        <div class="card-action">
                                            <button class="btn btn-success" type="submit">Simpan</button>
                                            <a href="{{ url('admin') }}" class="btn btn-danger" type="submit">Batal</a>
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