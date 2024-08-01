<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Retribusi;
use App\Models\Kategori;
use App\Models\Transaksi;
use Illuminate\Http\Request;

class AdminOPDController extends Controller
{   
    public function dashboard() {
        $data = array(
            'title' => 'Beranda',
            'users' => User::all(),
            'retribusis' => Retribusi::all(),
        );

        return view('admin_opd.dashboard', $data);
    }

    public function transaksis()
    {
        $data = array(
            'title' => 'Transaksi',
            'transaksis' => Transaksi::all(),

        );

        return view('admin_opd.transaksi.index', $data);
    }

    public function index()
    {
        $data = array(
            'title' => 'Administrator OPD',
            'users' => User::all(),
            'retribusis' => Retribusi::all(),
        );

        return view('admin.admin_opd.index', $data);
    }

    public function retribusis() {
        $data = array(
            'title' => 'Retribusi',
            'retribusis' => Retribusi::all(),
        );

        return view('admin_opd.retribusi.index', $data);
    }

    public function kategoris() {
        $data = array(
            'title' => 'Retribusi',
            'kategoris' => Kategori::all(),
        );

        return view('admin_opd.kategori.index', $data);
    }
}
