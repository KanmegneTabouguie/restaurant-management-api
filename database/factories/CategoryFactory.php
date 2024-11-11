<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class CategoryFactory extends Factory
{
    protected $model = \App\Models\Category::class;

    public function definition()
    {
        $categories = ['Appetizer', 'Main Course', 'Dessert', 'Beverage', 'Salad', 'Soup'];

        return [
            'name' => $this->faker->unique()->randomElement($categories),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}
