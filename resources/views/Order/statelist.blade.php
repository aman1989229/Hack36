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
	
	<header class="animated fadeInDownBig text-center text-white  p-3" style="background-color:#82E0AA ;">
		<h1 class="display-4">Choose your Option</h1>
  </header>
		<hr>

    <div class="row">
     @foreach($vegetable as $vegetable)
		<div class="control-label col-sm-4" style="background-color: #F0F3F4">
		  
      <div class="card" style="width: 18rem;">
  <img class="card-img-top" src="{{ asset('img.jpg') }}" alt="Card image cap">
        
               <div class="card-body">
    <p class="card-text">{{$vegetable->district}}</p>
    <p class="card-text"> Rating:  {{$vegetable->name}}</p>
     <p class="card-text">Price(per ton):{{$vegetable->price}}</p>
    {!! Form::open(['route' => 'orders.store','method' => 'post']) !!}
    <!-- here form will open only but when we use model lets check edit.php inside posts
       upload a image set (files = true) -->
           {{Form::label('quantity', 'Quantity:')}}
           {{Form::text('quantity', null,array('class'=>'form-control'))}}

             <input type="hidden" value="{{$vegetable->id}}" name="vegetableid">
          <br>
          <center> {{Form::submit('Place order',array('class' => 'btn btn-success btn-sm ','style'=>'margin-top:20px;background-color:#1A5276;'))}} </center>
        {!! Form::close() !!}
   
  </div>
  </div>
</div>
      @endforeach

<!-- search ended here -->
 
</div>

@endsection


@section('scripts')

{!! Html::script('js/select2.min.js') !!}

<script type="text/javascript">
  $('.select2-multi').select2();  //select2-multi is a class see line 34
</script>
@endsection