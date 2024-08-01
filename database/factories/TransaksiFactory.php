<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class TransaksiFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'id_user' => \App\Models\User::inRandomOrder()->first()->id,
            'id_retribusi' => \App\Models\Retribusi::inRandomOrder()->first()->id,
            'id_kategori' => \App\Models\Kategori::inRandomOrder()->first()->id,
            'bulan' => $this->faker->numberBetween(1,12),
            'tahun' => $this->faker->numberBetween(2023,2024),
            'jenis_transaksi' => \App\Models\Kategori::inRandomOrder()->first()->id,
            'jumlah' => $this->faker->numberBetween(3000,27000),
        ];
    }
}
