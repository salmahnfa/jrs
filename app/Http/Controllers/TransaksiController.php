<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TransaksiController extends Controller
{
    public function index()
    {
        $data = array(
            'title' => 'Transaksi',
            'kategoris' => Kategori::all(),

        );

        return view('admin.transaksi.index', $data);
    }
}
