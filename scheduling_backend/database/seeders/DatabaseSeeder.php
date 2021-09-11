<?php

namespace Database\Seeders;

use App\Models\Service;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(BookingSeeder::class);
        $this->call(ServiceSeeder::class);
        $this->call(ServiceGiverSeeder::class);
        $this->call(UserSeeder::class);
    }
}
