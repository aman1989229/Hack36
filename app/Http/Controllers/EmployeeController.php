<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Farmer;
use App\User;
use App\Poc;
use Session;
use DB;
use Auth;
use App\Employee;

class EmployeeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return view('Employee.profile');
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

        $employee = new Employee;
        
        $employee->user_id=$id;
        $employee->fname=$request->fname;
        $employee->lname=$request->lname;
        $employee->age=$request->age;
        $employee->address=$request->address;
        $employee->state=$request->state;
        $employee->city=$request->city;
        $employee->pincode=$request->pincode;
        $employee->rating=0;
  

        $employee->save();
          

            
        //redirect to another base
         
        return redirect()->route('poc.create');

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
        $employee=Employee::where('user_id','=',$id)->first();
        

        //return the view and pass in the var we previously created 
         return view('Employee.edit')->withEmployee($employee);
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
        $employee=Farmer::find($id);

        $employee->fname=$request->fname;
        $employee->lname=$request->lname;
        $employee->age=$request->age;
        $employee->address=$request->address;
        $employee->state=$request->state;
        $employee->city=$request->city;
        $employee->pincode=$request->pincode;
        $employee->rating=0;
        

        $employee->save();

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
        $employee=Employee::find($id);
         $user=User::find($employee->user_id);
          
      
        $farmer->delete();
        $user->delete();

        return redirect()->route('home');
    }
}
