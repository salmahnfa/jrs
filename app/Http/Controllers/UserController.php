<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index()
    {
        $data = array(
            'title' => 'Wajib Retribusi',
            'users' => User::all(),
        );

        return view('admin.wajib_retribusi.index', $data);
    }

    public function retribusiku()
    {
        $data = array(
            'title' => 'Retribusiku',
        );

        return view('user.retribusiku', $data);
    }
}