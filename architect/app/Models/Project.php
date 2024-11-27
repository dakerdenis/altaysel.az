<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    use HasFactory;
    protected $fillable = [
        'year',
        'location',
        'name_ru',
        'name_az',
        'desc_ru',
        'desc_az',
        'main_image',
        'images',
        'video_url', // Add the new field here
    ];
}
