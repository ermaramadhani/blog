<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
	protected $table = "posts";
    protected $fillable=[
        'category',
        'title',
        'slug',
        'short_description',
        'content',
        'image'
    ];
}
