<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Create 50 users
        User::factory(50)->create();

        // Optionally, create specific admin users
        User::factory()->count(5)->state([
            'role' => 'Admin',
        ])->create();
    }
}
