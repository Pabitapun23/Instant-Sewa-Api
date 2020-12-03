<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Address extends Model
{
    protected $fillable = [
        'address_address',
        'address_latitude',
        'address_longitude',
    ];
}
