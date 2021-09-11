<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ServiceGiver extends Model
{
    use HasFactory;

    public function bookings(){
        return $this->hasMany(ServiceGiver::class);
    }

    public function service(){
        return $this->belongsTo(Service::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

}
