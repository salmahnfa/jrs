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
								<a href="{{ url('admin_opd/jenis') }}">Jenis</a>
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
                                    <div class="card-title">Edit Jenis Retribusi</div>
                                </div>
                                <form action="{{ url('admin_opd/retribusis') }}" method="POST">
                                    @csrf
                                    @method('put')
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label for="nama" class="form-label">Nama</label>
                                            <input type="text" value="{{ $retribusi->nama }}" name="nama" class="form-control" id="nama" placeholder="Masukkan nama retribusi" autofocus>
                                            @error('nama')
                                                <div class="invalid-feedback">
                                                {{ $message }}
                                                </div>
                                            @enderror
                                        </div>
                                        <div class="card-action">
                                            <button class="btn btn-success" type="submit">Simpan</button>
                                            <a href="{{ url('admin_opd/retribusis') }}" class="btn btn-danger" type="submit">Batal</a>
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