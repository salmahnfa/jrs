<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PageController extends Controller
{
    public function tentang() {
        $data = array(
            'title' => 'Tentang Retribusi',
        );

        return view('layanan.tentang', $data);
    }

    public function tarif() {
        $data = array(
            'title' => 'Retribusi',
        );

        return view('layanan.tarif.tarif', $data);
    }

    public function retribusi_kebersihan() {
        $data = array(
            'title' => 'Retribusi',
        );

        return view('layanan.tarif.retribusi_kebersihan', $data);
    }

    public function retribusi_limbah_cair() {
        $data = array(
            'title' => 'Retribusi',
        );

        return view('layanan.tarif.retribusi_limbah_cair', $data);
    }

    public function faq() {
        $data = array(
            'title' => 'FAQ',
        );

        return view('layanan.faq', $data);
    }

    public function retribusiku() {
        $data = array(
            'title' => 'Retribusiku',
        );

        return view('user.retribusiku', $data);
    }

    public function bayar() {
        $data = array(
            'title' => 'Bayar Retribusi',
        );

        return view('layanan.bayar', $data);
    }

    public function konfirmasi() {
        $data = array(
            'title' => 'Konfirmasi Pembayaran',
        );

        return view('layanan.konfirmasi', $data);
    }

    public function final() {
        $data = array(
            'title' => 'Bayar',
        );

        return view('layanan.final', $data);
    }
}
