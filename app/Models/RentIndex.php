<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RentIndex extends Model
{
    public $timestamps = false;
    protected $table = 'rent_index';
    protected $fillable = ['index_month','index_year','index_amount','rent_index_baseline'];
    use HasFactory;
}
