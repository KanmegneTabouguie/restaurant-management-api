<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\User;

class ReservationFactory extends Factory
{
    protected $model = \App\Models\Reservation::class;

    public function definition()
    {
        return [
            'user_id'            => User::factory(),
            'reservation_date'   => $this->faker->dateTimeBetween('+1 days', '+1 month'),
            'number_of_guests'   => $this->faker->numberBetween(1, 10),
            'special_requests'   => $this->faker->optional()->sentence(),
            'status'             => $this->faker->randomElement(['Pending', 'Confirmed', 'Cancelled', 'Completed']),
            'created_at'         => now(),
            'updated_at'         => now(),
        ];
    }
}
