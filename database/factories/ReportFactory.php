<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class ReportFactory extends Factory
{
    protected $model = \App\Models\Report::class;

    public function definition()
    {
        $types = ['reservations', 'menu-performance', 'user-activity'];

        $type = $this->faker->randomElement($types);
        $data = [];

        switch ($type) {
            case 'reservations':
                $data = [
                    'total_reservations' => $this->faker->numberBetween(50, 500),
                    'confirmed' => $this->faker->numberBetween(30, 450),
                    'cancelled' => $this->faker->numberBetween(5, 50),
                    'completed' => $this->faker->numberBetween(15, 300),
                ];
                break;

            case 'menu-performance':
                $data = [
                    'top_selling_items' => [
                        [
                            'menu_item_id' => $this->faker->numberBetween(1, 20),
                            'name' => $this->faker->word(),
                            'sales' => $this->faker->numberBetween(100, 1000),
                        ],
                        // Add more items as needed
                    ],
                    'least_selling_items' => [
                        [
                            'menu_item_id' => $this->faker->numberBetween(1, 20),
                            'name' => $this->faker->word(),
                            'sales' => $this->faker->numberBetween(0, 50),
                        ],
                        // Add more items as needed
                    ],
                ];
                break;

            case 'user-activity':
                $data = [
                    'active_users' => $this->faker->numberBetween(10, 100),
                    'new_registrations' => $this->faker->numberBetween(5, 50),
                    'reservations_made' => $this->faker->numberBetween(50, 500),
                    'testimonials_submitted' => $this->faker->numberBetween(5, 100),
                ];
                break;
        }

        return [
            'type' => $type,
            'data' => json_encode($data),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}

