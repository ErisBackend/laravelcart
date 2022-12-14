<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
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
        
        $ids = $request->id;

        if ($request->warna!=null)
        {
            $warna = $request->warna;
        }
        else
        {
            $warna = null;
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
        //jika false adalah kondisi jika berarti tidak merequest apapun dan memunculkan datanya
        if($request->quantity == false)
            {
                $request->quantity =1;
            }
            else
            {
                
                $request->quantity;
            }

        Cart::add($request->id, $request->name,$request->quantity, $request->price,['prdthumb'=>$request->prdthumb,'warna'=>$request->warna,'size'=>$request->size,])->associate('App\Products');
       //dd(Cart::content());
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
        $validasi = validator::make($request->all(),[
                'quantity' =>'required|numeric|between:1,20'
        ]);

            if($validasi->fails()){
                return redirect('cart')->with('gagal','minimal quantity 1 dan maximal 20');
            }

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
        //dd($id);
        Cart::remove($id);
        return redirect('cart')->with('gagal','product dihpus dari keranjang');
    }
}
