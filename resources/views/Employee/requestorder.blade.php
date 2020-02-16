@extends('layouts.app')

@section('title','|CreatePost')

@section('stylesheets')

{!! Html::style('css/animate.css') !!}
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
   integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.css" 
   integrity="sha256-a2tobsqlbgLsWs7ZVUGgP5IvWZsx8bTNQpzsqCSm5mk=" crossorigin="anonymous" />
<script src='https://cloud.tinymce.com/stable/tinymce.min.js'></script>


<script>
    tinymce.init({
     selector:'textarea'
      });
</script>
@endsection

@section('content')

<div class="container">
<header class="animated fadeInDownBig text-center  text-white  p-3" style="background-color:#82E0AA ;">
    <h1 class="display-4">All Orders</h1>  
</header>
  
    <hr>
  

  <div class="row">
    <div class="col-md-12">
      
           <table class="table">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Vegetable</th>
                  <th scope="col">Quantity</th>
                  <th scope="col">Created At</th>
                  <th scope="col">status</th>
                  <th scope="col">Price(per tonne)</th>
                  <th scope="col">Amount</th>
                
                </tr>
              </thead>
              <tbody>
                @foreach($request as $request)
                   <tr>
                    <th>{{ $request->id }}</th>
                    <td>{{ $request->vegetable }}</td>
                    <td>{{ $request->quantity }}</td>
                    <td>{{ date('M j, Y',strtotime($request->created_at)) }}</td>
                     @if($request->status==0)
                    <td>Available</td>
                    @endif
                    @if($request->status==1)
                    <td>Shipped</td>
                    @endif
                    @if($request->status==2)
                    <td>Closed</td>
                    @endif
                     @if($request->status==3)
                    <td>Placed</td>
                    @endif
                    <td>{{ $request->price}}</td>
                    <td>{{ $request->paidamount}}</td>
                    
                   </tr>
                  @endforeach
              </tbody>
            </table>
   
    </div>
     </div>
@endsection