<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Farmer;
use App\User;
use App\Poc;
use Session;
use DB;
use Auth;
use App\Stock;
use App\Vegetable;

class StockController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
         return view('farmers.stock');
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
          $farmer=  Farmer::where('user_id','=',$id)->first();
        //getting vegetable price
         $vegetable=Vegetable::where(['name' => $request->vegetable, 'state' => $farmer->state])->first();

     
           $stock = new Stock;
        
        $stock->user_id=$id;
        $stock->fname=$farmer->fname;
        $stock->lname=$farmer->lname;
        $stock->age=$farmer->age;
        $stock->address=$farmer->address;
        $stock->state=$farmer->state;
        $stock->city=$farmer->city;
        $stock->pincode=$farmer->pincode;
        $stock->vegetable=$request->vegetable;
        $stock->rating=0;
        $stock->solded=0;
        $stock->quantity=$request->quantity;
        $stock->remained=0;
        $stock->poc_id=0;
        $stock->status=0;
        $stock->price=$vegetable->price*$request->quantity;
       
        $stock->save();
          
            
        //redirect to another base
         
        return view('home');

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
        $history=Stock::where('user_id','=',$id)->get();

         return view('farmers.history')->withHistory($history);

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
