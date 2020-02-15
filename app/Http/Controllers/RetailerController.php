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
use App\Retailer;

class RetailerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return view('Retailer.profile');
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
        $user=  User::find($id);
         $user->profile=1;
         $user->save();

        $retailer = new Retailer;
        
        $retailer->user_id=$id;
        $retailer->fname=$request->fname;
        $retailer->lname=$request->lname;
        $retailer->address=$request->address;
        $retailer->state=$request->state;
        $retailer->city=$request->city;
        $retailer->contact=$request->contact;
        $retailer->pincode=$request->pincode;
         
        $retailer->save();
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
        $retailer=Retailer::where('user_id','=',$id)->first();
        

        //return the view and pass in the var we previously created 
         return view('Retailer.edit')->withRetailer($retailer);
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
        $retailer=Retailer::find($id);

        $retailer->fname=$request->fname;
        $retailer->lname=$request->lname;
        $retailer->contact=$request->contact;
        $retailer->address=$request->address;
        $retailer->state=$request->state;
        $retailer->city=$request->city;
        $retailer->pincode=$request->pincode;
        

        $retailer->save();

           Session::flash('success','The tag has been changed successsfully!!!');
    return redirect()->route('home');
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
