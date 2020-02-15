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
use App\Stock;
use App\Vegetable;

class OtherController extends Controller
{
    //
    public function vegeindex()
    {
        //
        return view('Employee.Addvege');
    }

    public function addvege(Request $request)
    {
        //
        $id=Auth::id();
         $user=Employee::where('user_id','=',$id)->first();
        $vegetable=new Vegetable;

        $vegetable->name=$request->vegetable;
        $vegetable->price=$request->price;
        $vegetable->state=$user->state;
        $vegetable->district=$user->city;
        $vegetable->save();

         return redirect()->route('home');
        
    }

    public function editstock($id)
    {
        //
        $stock=Stock::where('id','=',$id)->first();

        return view('Employee.stockedit')->withStock($stock);
    }
}
