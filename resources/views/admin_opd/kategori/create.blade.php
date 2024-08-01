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
                        <a href="{{ url('admin_opd/jenis') }}">{{ $title }}</a>
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
                            <div class="card-title">Tambah Retribusi Baru</div>
                        </div>

                        <!-- Start Alert -->
                        @if(session()->has('error'))
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            {{ session('error') }}
                            <button type="button" class="btn btn-primary btn-rounded btn-login" data-bs-dismiss="alert">×</button>
                        </div>
                        @endif
                        <!-- End ALert -->
                        <form action="{{ url('admin_opd/kategoris') }}" method="POST">
                            @csrf
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="nama" class="form-label">Nama</label>
                                    <input type="text" value="{{ old('nama') }}" name="nama" class="form-control @error('nama') is-invalid @enderror" id="nama" placeholder="Masukkan nama retribusi" autofocus>
                                    @error('nama')
                                    <div class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                    @enderror
                                </div>
                                <div class="form-group">
                                    <label for="nama" class="form-label">Tarif</label>
                                    <input type="text" value="{{ old('tarif') }}" name="tarif" class="form-control @error('tarif') is-invalid @enderror" id="tarif" placeholder="Masukkan nama retribusi" autofocus>
                                    @error('tarif')
                                    <div class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                    @enderror
                                </div>
                                <div class="form-group">
                                    <label for="retribusi" class="form-label">Retribusi</label>
                                    <select name="retribusi" id="retribusi" class="form-control @error('retribusi') is-invalid @enderror" required>
                                        @foreach($retribusis as $retribusi)
                                        <option value="{{ $retribusi->id }}" {{ old('retribusi') == $retribusi->id ? 'selected' : '' }}>{{ $retribusi->nama }}</option>
                                        @endforeach
                                    </select>
                                    @error('retribusi')
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