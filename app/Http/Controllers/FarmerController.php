<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Farmer;
use App\User;
use App\Poc;
use Session;
use DB;
use Auth;

class FarmerController extends Controller
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
        return view('forms.farmers');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */

    public function store(Request $request)
    {   
             $id= Auth::id();

         $user=  User::find($id);
         $user->profile=1;
         $user->save();

        $farmer = new Farmer;
        
        $farmer->user_id=$id;
        $farmer->fname=$request->fname;
        $farmer->lname=$request->lname;
        $farmer->age=$request->age;
        $farmer->address=$request->address;
        $farmer->state=$request->state;
        $farmer->city=$request->city;
        $farmer->pincode=$request->pincode;
        $farmer->vegetable=$request->vegetable;
        $farmer->rating=0;
        $farmer->loan=0;

        $farmer->save();
          
            
        //redirect to another base
         
        return redirect()->route('farmers.show',$request->city);

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($city)
    {
        //user id
      $user= Auth::user();
      
      $poc= DB::table('pocs')
        ->select('city')
        ->where('city','=',$city)
        ->first();
       
        return view('farmers.poc')->withPoc($poc);
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
        $farmer=Farmer::where('user_id','=',$id)->first();
        

        //return the view and pass in the var we previously created 
         return view('farmers.edit')->withFarmer($farmer);
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
       

        $farmer=Farmer::find($id);

        $farmer->fname=$request->fname;
        $farmer->lname=$request->lname;
        $farmer->age=$request->age;
        $farmer->address=$request->address;
        $farmer->state=$request->state;
        $farmer->city=$request->city;
        $farmer->pincode=$request->pincode;
        $farmer->vegetable=$request->vegetable;
        

        $farmer->save();

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
         $farmer=Farmer::find($id);
         $user=User::find($farmer->user_id);

      
        $farmer->delete();
        $user->delete();

        return redirect()->route('home');
    }
}
