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
use App\Pocgroup;
use App\Retailer;
use App\Order;

class OtherController extends Controller
{
    //
    public function vegeindex()
    {
        //
        return view('Employee.Addvege');
    }

    public function requestorder()
    {
        //
        $id=Auth::id();
          $poc=Poc::where('user_id','=',$id)->first();
        $request=Order::where(['poc_id'=>$poc->id,'status'=>'3'])->get(); 
        return view('Employee.requestorder')->withRequest($request);
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

    public function placeorder()
    {
        //

        return view('Order.searchorder');
    }

    public function searchstate(Request $request)
    {
        //
           $vegetable=Vegetable::where('state','=',$request->state)->get();
           $pocgroups=Poc::where('state','=',$request->state)->get();

        return view('Order.statelist')->withVegetable($vegetable)->withPocgroups($pocgroups);
    }
   

   public function searchcity(Request $request)
    {
        //
           $vegetable=Vegetable::where('district','=',$request->city)->get();
           $pocgroups=Poc::where('city','=',$request->city)->get();

        return view('Order.citylist')->withVegetable($vegetable)->withPocgroups($pocgroups);
    }

     public function searchvegetable(Request $request)
    {
        //
           $vegetable=Vegetable::where('name','=',$request->vegetable)->get();
           $pocgroups=Poc::where('city','=',$request->city)->get();

        return view('Order.citylist')->withVegetable($vegetable)->withPocgroups($pocgroups);
    }

    public function statequantity(Request $request)
    {
        //
           $vegetable=Vegetable::where('state','=',$request->state)->get();

        return view('Order.statelist')->withVegetable($vegetable);
    }
}
