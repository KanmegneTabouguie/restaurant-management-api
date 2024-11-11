<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\User;

class TestimonialFactory extends Factory
{
    protected $model = \App\Models\Testimonial::class;

    public function definition()
    {
        return [
            'user_id'    => User::factory(),
            'rating'     => $this->faker->numberBetween(1, 5),
            'comment'    => $this->faker->paragraph(),
            'approved'   => $this->faker->boolean(70), // 70% approved
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}
