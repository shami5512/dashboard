<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RentIndexBaseline extends Model
{
    public $timestamps = false;
    use HasFactory;
    protected $table = 'rent_index_baseline';
    protected $fillable = ['name'];
}
