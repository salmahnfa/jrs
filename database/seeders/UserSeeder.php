<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->truncate();

        User::create([
            'nama' => 'Salma Hanifah',
            'email' => 'ifa@mail.com',
            'password' => 'admin123',
            'id_role' => 1
        ]);
    }
}
