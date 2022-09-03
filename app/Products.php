<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Products extends Model
{
    //
    protected $fillable = ['prdid','prdname','prdslug','prdcatid','prdsize','prdprice','prddesc','prdstock','prdthumb'];
}
