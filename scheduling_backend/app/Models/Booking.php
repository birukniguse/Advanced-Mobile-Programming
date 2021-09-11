<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Booking extends Model
{
    use HasFactory;
    public function serviceGiver()
    {
        return $this->hasOne(ServiceGiver::class);
    }

    public function user(){
        return $this->hasOne(User::class);
    }
}
