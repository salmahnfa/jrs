<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Retribusi;
use App\Models\Kategori;
use Illuminate\Http\Request;

class KategoriController extends Controller
{
    public function index()
    {
        $data = array(
            'title' => 'Administrator OPD',
            'retribusis' => Retribusi::all(),
            'kategoris' => Kategori::all(),
        );

        return view('admin_opd.kategori.index', $data);
    }

    public function store(Request $request)
    {
        $request->validate([
            'nama' => 'required | unique:kategoris',
            'tarif' => 'required | numeric',
            'retribusi' => 'required |numeric',
        ]);

        $kategori = new Kategori([
            'nama' => $request->get('nama'),
            'tarif' => $request->get('tarif'),
            'id_retribusi' => $request->get('retribusi'),
        ]);

        if ($kategori->save()) {
            // Kondisi sukses
            return redirect('admin_opd/kategoris')->with('success', 'Data berhasil ditambahkan.');
        } else {
            // Kondisi gagal
            return redirect()->back()->withInput()->with('error', 'Gagal menambahkan data.');
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Retribusi $retribusis)
    {
        $validatedData = $request->validate(
            [
                'nama' => 'required',
            ],
            [],
            [
                'nama' => 'nama',
            ]
        );

        Retribusi::where('id', $retribusis->id)->update($validatedData);

        return redirect('admin_opd/retribusis')->with('success', 'Data berhasil diubah.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Retribusi $retribusi)
    {
        Retribusi::destroy($retribusi->id);

        return redirect('admin_opd/retribusis')->with('success', 'Data berhasil dihapus.');
    }

    // routes functions
    /**
     * Show the form for creating a new post.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data = array(
            'title' => 'Administrator OPD',
            'kategoris' => Kategori::all(),
            'retribusis' => Retribusi::all(),
        );

        return view('admin_opd.kategori.create', $data);
    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $post = Post::find($id);

        return view('posts.show', compact('post'));
    }

    public function edit(Retribusi $retribusis)
    {
        $data = array(
            'title' => 'Administrator OPD',
            'retribusi' => $retribusis,
        );

        return view('admin_opd.retribusi.edit', $data);
    }
}
