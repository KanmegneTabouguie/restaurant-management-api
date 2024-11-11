<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\User;

class AnalyticsFactory extends Factory
{
    protected $model = \App\Models\Analytics::class;

    public function definition()
    {
        $pages = ['Home', 'Menu', 'Reservation', 'Contact', 'Testimonials'];
        $actions = ['viewed', 'clicked', 'submitted', 'navigated'];

        return [
            'user_id'    => $this->faker->optional()->randomElement(User::pluck('id')->toArray()),
            'page'       => $this->faker->randomElement($pages),
            'action'     => $this->faker->randomElement($actions),
            'timestamp'  => $this->faker->dateTimeBetween('-1 month', 'now'),
            'ip_address' => $this->faker->ipv4(),
            'user_agent' => $this->faker->userAgent(),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}
