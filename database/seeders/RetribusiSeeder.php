<?php

namespace Database\Seeders;

use App\Models\Retribusi;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RetribusiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('retribusis')->truncate();

        Retribusi::create([
            'nama' => 'Pelayanan Persampahan/Kebersihan',
        ]);

        Retribusi::create([
            'nama' => 'Pengolahan Limbah Cair',
        ]);
    }
}
