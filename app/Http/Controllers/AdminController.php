<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Retribusi;
use App\Models\Kategori;
use App\Models\Role;
use App\Models\Transaksi;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function dashboard()
    {
        $data = array(
            'title' => 'Dashboard',
            'users' => User::all(),
            'retribusis' => Retribusi::all(),
        );

        return view('admin.dashboard', $data);
    }

    public function transaksis()
    {
        $data = array(
            'title' => 'Transaksi',
            'transaksis' => Transaksi::all(),

        );

        return view('admin.transaksi.index', $data);
    }

    public function index()
    {
        $data = array(
            'title' => 'Administrator',
            'users' => User::all(),
            'retribusis' => Retribusi::all(),
        );

        return view('admin.admin.index', $data);
    }

    public function create()
    {
        $data = array(
            'title' => 'Administrator Baru',
            'admins' => User::all(),
            'roles' => Role::all()
        );

        return view('admin.admin.create', $data);
    }

    public function store(Request $request)
    {
        $request->validate([
            'nama' => 'required',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:6',
            'role' => 'required|exists:roles,id',
        ]);

        $user = new User([
            'nama' => $request->get('nama'),
            'email' => $request->get('email'),
            'password' => $request->get('password'),
            'id_role' => $request->get('role'),
        ]);

        if ($user->save()) {
            // Kondisi sukses
            return redirect('admin/admins')->with('success', 'Data berhasil ditambahkan.');
        } else {
            // Kondisi gagal
            return redirect()->back()->withInput()->with('error', 'Gagal menambahkan data.');
        }
    }

    public function edit(User $admin)
    {
        $data = array(
            'title' => 'Administrator',
            'admin' => $admin,
        );

        return view('admin.admin.edit', $data);
    }

    public function update(Request $request, User $admin)
    {
        $validatedData = $request->validate(
            [
                'nama' => 'required',
                'email' => 'required',
                'password' => 'required',
            ],
            [],
            [
                'nama' => 'nama',
                'email' => 'email',
                'password' => 'password',
            ]
        );

        User::where('id', $admin->id)->update($validatedData);

        return redirect('admin/admin')->with('success', 'Data berhasil diperbarui.');
    }

    public function destroy(User $user)
    {
        User::destroy($user->id);

        return redirect('admin.admins')->with('success', 'Data berhasil dihapus.');
    }

    public function admins()
    {
        $data = array(
            'title' => 'Administrator',
            'users' => User::all(),
        );

        return view('admin.admin.index', $data);
    }

    public function retribusis()
    {
        $data = array(
            'title' => 'Retribusi',
            'retribusis' => Retribusi::all(),
        );

        return view('admin.retribusi.index', $data);
    }

    public function kategoris()
    {
        $data = array(
            'title' => 'Retribusi',
            'kategoris' => Kategori::all(),
            'retribusis' => Retribusi::all(),
            'joins' => Kategori::join('retribusis', 'kategoris.id_retribusi', '=', 'retribusis.id')
                ->get(['retribusis.nama']),
        );

        //$data = Kategori::join('retribusi', 'kategori.id_retribusi', '=', 'retribusi.id')
        //->get(['retribusi.nama']);

        //return view('admin.kategori.index', compact('data'));

        return view('admin.kategori.index', $data);
    }
}
