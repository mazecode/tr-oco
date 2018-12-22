<?php

namespace App\Models;

use TypeRocket\Models\Model;

class Contact extends Model
{
    protected $resource = 'contacts';
    
    protected $fillable = [
        'email',
        'created_at'
    ];

    protected $guard = [
        'id'
    ];

}
