<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class ContactFactory extends Factory
{
    protected $model = \App\Models\Contact::class;

    public function definition()
    {
        return [
            'name'      => $this->faker->name(),
            'email'     => $this->faker->safeEmail(),
            'subject'   => $this->faker->sentence(6),
            'message'   => $this->faker->paragraph(3),
            'created_at'=> now(),
            'updated_at'=> now(),
        ];
    }
}
