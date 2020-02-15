<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Farmer;
use App\User;
use App\Poc;
use Session;
use DB;
use Auth;
use App\Employee;
use App\Stock;
use App\Vegetable;
use App\Pocgroup;
use App\Retailer;
use App\Order;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
      
        $id= Auth::id();
        $user=Retailer::where('user_id','=',$id)->first();
        $vegetable=Vegetable::find($request->vegetableid);
        $poc=Poc::where('city','=',$vegetable->district)->first();
        $order =new Order;
        $order->user_id=$id;
          $order->fname=$user->fname;
          $order->lname=$user->lname;
          $order->poc_id=$poc->id;
          $order->address=$user->address;
          $order->state=$user->state;
          $order->city=$user->city;
          $order->contact=$user->contact;
          $order->rating=0;
          $order->quantity=$request->quantity;
           $order->status=3;
           $order->pincode=$user->pincode;
           $order->price=$vegetable->price;
           $order->paidamount=$request->quantity*$vegetable->price;
          $order->vegetable=$vegetable->name;

          $order->save();

          return redirect()->route('home');

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
        $history=Order::where('user_id','=',$id)->get();

        return view('Retailer.history')->withHistory($history);

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
