<?php

namespace Database\Seeders;

use App\Models\Service;
use App\Models\ServiceGiver;
use Illuminate\Database\Seeder;

class ServiceGiverSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        ServiceGiver::factory(4)->create();
    }
}
