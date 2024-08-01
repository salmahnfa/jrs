<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Retribusi;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index() {
        $data = array(
            'title' => 'Beranda',
            'logged' => 'Masuk',
        );

        return view('beranda', $data);
    }

    public function index2() {
        $data = array(
            'title' => 'Beranda',
            'logged' => 'Keluar',
        );

        return view('beranda', $data);
    }
}
