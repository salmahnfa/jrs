<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');

        $this->call(RoleSeeder::class);
        $this->call(UserSeeder::class);
        $this->call(KategoriSeeder::class);
        $this->call(RetribusiSeeder::class);
        $this->call(TransaksiSeeder::class);

        DB::statement('SET FOREIGN_KEY_CHECKS=1;');

        \App\Models\User::factory(10)->create();
        \App\Models\Transaksi::factory(30)->create();
    }
}
