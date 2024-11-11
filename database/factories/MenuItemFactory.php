<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Category;

class MenuItemFactory extends Factory
{
    protected $model = \App\Models\MenuItem::class;

    public function definition()
    {
        return [
            'name' => $this->faker->word(),
            'description' => $this->faker->sentence(),
            'price' => $this->faker->randomFloat(2, 5, 100),
            'image_url' => $this->faker->imageUrl(640, 480, 'food', true, 'Faker'),
            'category_id' => Category::inRandomOrder()->first()->id, // Updated line
            'availability' => $this->faker->boolean(),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}
