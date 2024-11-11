<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\User;

class NotificationFactory extends Factory
{
    protected $model = \App\Models\Notification::class;

    public function definition()
    {
        $titles = ['Reservation Confirmed', 'Reservation Reminder', 'Menu Update', 'Special Offer'];
        $messages = [
            'Your reservation has been confirmed for {date}.',
            'This is a reminder for your reservation on {date}.',
            'We have updated our menu with new dishes!',
            'Enjoy a 10% discount on your next reservation!',
        ];

        $title = $this->faker->randomElement($titles);
        $message = $this->faker->randomElement($messages);
        $date = $this->faker->dateTimeBetween('+1 days', '+1 month')->format('Y-m-d H:i:s');

        // Replace {date} placeholder with actual date
        $message = str_replace('{date}', $date, $message);

        return [
            'user_id' => User::inRandomOrder()->first()->id,
            'title' => $title,
            'message' => $message,
            'scheduled_at' => $this->faker->optional()->dateTimeBetween('now', '+1 month'),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}
