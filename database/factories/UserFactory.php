<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use App\Models\Role;

class UserFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {        
        return [
            'nama' => $this->faker->name(),
            'email' => $this->faker->email(),
            'password' => $this->faker->password(),
            'id_role' => $this->faker->numberBetween(1,3),
        ];
    }
}