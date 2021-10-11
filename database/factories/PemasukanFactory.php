<?php

namespace Database\Factories;

use App\Models\Pemasukan;
use Illuminate\Database\Eloquent\Factories\Factory;

class PemasukanFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Pemasukan::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->name(),
            'date' => $this->faker->date(),
            'product' => $this->faker->food(),
            'quantity' => $this->faker->quantity(),
            'priceamount' => rand(10000000,300000000),
        ];
    }
}
