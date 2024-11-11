<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Analytics;

class AnalyticsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Create 200 analytics records
        Analytics::factory(200)->create();
    }
}
