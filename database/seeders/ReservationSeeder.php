<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Reservation;
use App\Models\MenuItem;

class ReservationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Create 100 reservations
        Reservation::factory(100)->create()->each(function ($reservation) {
            // Attach 1 to 5 random menu items to each reservation
            $menuItems = MenuItem::inRandomOrder()->take(rand(1, 5))->pluck('id');
            foreach ($menuItems as $menuItemId) {
                $reservation->menuItems()->attach($menuItemId, ['quantity' => rand(1, 3)]);
            }
        });
    }
}
