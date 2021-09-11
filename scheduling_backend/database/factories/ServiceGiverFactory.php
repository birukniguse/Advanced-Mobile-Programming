<?php

namespace Database\Factories;

use App\Models\ServiceGiver;
use Illuminate\Database\Eloquent\Factories\Factory;

class ServiceGiverFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = ServiceGiver::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'bio' => $this->faker->text(40),
            'user_id' => rand(1, 10),
            'service_id' => rand(1, 10),
        ];
    }
}
