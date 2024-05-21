<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    use HasFactory;
    protected $fillable = [
        'number_1',
        'number_2',
        'email',
        'linkdin',
        'facebook',
        'instagram',
        'telegram',
        'behance',
        'pinterest'
    ];
}
