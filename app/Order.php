<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    //
    protected $fillable = ['ordersidencytpe','usersid','ordfullname','ordmail','ordnohp','ordalamat','ordkota','ordprovinsi','ordbyr','ordstatus','ordmethod',];
}
