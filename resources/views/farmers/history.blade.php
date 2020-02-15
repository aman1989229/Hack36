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
  <div class="display-5">
    <header class="animated fadeInDownBig text-center bg-primary text-white  p-3" style="padding: 10px;">
          <h1 class="display-4" > All Posts</h1>

   </header>
  
  <br> <br>
  <div class="col-md-2">
    <a href="{{ route('stocks.index') }}" class="btn btn-sm  btn-primary text-primary" style="border-radius: 10px;padding:10px; background-color:white;" id="h1"> Create new Stock</a>
  </div>
  <br> <br>
  <div class="col-md-12">
    <hr>
  </div>
</div>
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
                  <th scope="col">Price</th>
                  <th scope="col">Rating</th>
                </tr>
              </thead>
              <tbody>
                @foreach($history as $history)
                   <tr>
                    <th>{{ $history->id }}</th>
                    <td>{{ $history->vegetable }}</td>
                    <td>{{ $history->quantity }}</td>
                    <td>{{ date('M j, Y',strtotime($history->created_at)) }}</td>
                    <td>{{ $history->status }}</td>
                    <td>{{ $history->price}}</td>
                    <td>{{ $history->rating }}</td>
                   </tr>
                  @endforeach
              </tbody>
            </table>
            
            <!--pagination links starts here-->
      </div>     
    </div>
     </div>
@endsection


