<?php

namespace Database\Seeders;

use App\Models\Kategori;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class KategoriSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('kategoris')->truncate();

        Kategori::create([
            'nama' => 'Rumah Tangga A',
            'tarif' => 10000,
            'id_retribusi' => 1,
        ]);

        Kategori::create([
            'nama' => 'Rumah Tangga B',
            'tarif' => 7000,
            'id_retribusi' => 1,
        ]);

        Kategori::create([
            'nama' => 'Rumah Tangga C',
            'tarif' => 4000,
            'id_retribusi' => 1,
        ]);

        Kategori::create([
            'nama' => 'Rumah Tangga 1',
            'tarif' => 3000,
            'id_retribusi' => 2,
        ]);

        Kategori::create([
            'nama' => 'Rumah Tangga 2',
            'tarif' => 9000,
            'id_retribusi' => 2,
        ]);

        Kategori::create([
            'nama' => 'Rumah Tangga 3',
            'tarif' => 16000,
            'id_retribusi' => 2,
        ]);
    }
}
