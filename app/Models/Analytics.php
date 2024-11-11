<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Analytics extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'page',
        'action',
        'timestamp',
        'ip_address',
        'user_agent',
    ];

    // Relationships
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
