<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Gloudemans\Shoppingcart\Facades\Cart;
use App\Product;


class CartController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        //dd(Cart::content());
        return view('shop.cart');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        //cek color 
        if ($request->color!=null)
        {
            $color = $request->color;
        }
        else
        {
            $color = null;
        }
        
        //cek size 

        if ($request->prdsize!=null)
            {
                $size= $request->prdsize;
            }
            else
            {
                $size=null;
            }

        //cek qty
        if($request->quantity!=null)
            {
                $quantity = $request->quantity;
            }
            else
            {
                $quantity =1;
            }

        Cart::add($request->id, $request->name, $quantity, $request->price,['prdthumb'=>$request->prdthumb,'color'=>$color,'size'=>$size])->associate('App\Products');
        
        return redirect('cart')->with('sukses','prodak berhasil ditambahkan ke kernajang');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        Cart::update($id,$request->quantity);
        return redirect('cart')->with('update','qty berhasil di update');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
