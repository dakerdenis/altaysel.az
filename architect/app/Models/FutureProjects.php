<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FutureProjects extends Model
{
    use HasFactory;
    protected $fillable = [
        'main_image',
        // Other fillable attributes
    ];
}
