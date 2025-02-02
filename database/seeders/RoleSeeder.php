<?php

namespace Database\Seeders;

use App\Models\Role;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('roles')->truncate();

        Role::create([
            'nama' => 'Administrator',
        ]);

        Role::create([
            'nama' => 'Administrator Organisasi Perangkat Daerah',
        ]);

        Role::create([
            'nama' => 'User',
        ]);
    }
}
