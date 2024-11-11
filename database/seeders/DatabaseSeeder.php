<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $this->call([
            UserSeeder::class,
            CategorySeeder::class,         // Newly added
            MenuItemSeeder::class,
            ReservationSeeder::class,
            TestimonialSeeder::class,
            AnalyticsSeeder::class,
            ContactSeeder::class,
            NotificationSeeder::class,     // Newly added
            ReportSeeder::class,           // Newly added
        ]);
    }
}
