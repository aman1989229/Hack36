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
    
    <div class="control-label col-sm-4" style="background-color: #F0F3F4">

       <div class="card" style="width: 18rem;">
  <img class="card-img-top" src="{{ asset('img.jpg') }}" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Search by State</h5>
    <p class="card-text">We'll help you to search according to states.</p>
    {!! Form::open(['url'=>'searchstate','method' => 'GET']) !!}
    <!-- here form will open only but when we use model lets check edit.php inside posts
       upload a image set (files = true) -->
           {{Form::label('state', 'State:')}}
           {{Form::text('state', null,array('class'=>'form-control'))}}

          <br>
          <center> {{Form::submit('Search',array('class' => 'btn btn-success btn-sm ','style'=>'margin-top:20px;background-color:#1A5276;'))}} </center>
        {!! Form::close() !!}
  </div>
  </div>
</div>

<!-- search by state and city-->
<div class="control-label col-sm-4" style="background-color: #F0F3F4">
     <div class="card" style="width: 18rem;">
  <img class="card-img-top" src="{{ asset('img.jpg') }}" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Search by city</h5>
    <p class="card-text">We'll help you to search according to city.</p>
    {!! Form::open(['url'=>'searchcity','method' => 'GET']) !!}
    <!-- here form will open only but when we use model lets check edit.php inside posts
       upload a image set (files = true) -->

            {{Form::label('city', 'City:')}}
           {{Form::text('city', null,array('class'=>'form-control'))}}

          <br>
          <center> {{Form::submit('Search',array('class' => 'btn btn-success btn-sm ','style'=>'margin-top:20px;background-color:#1A5276;'))}} </center>
        {!! Form::close() !!}
  </div>
</div>
</div>
<!-- search by vegetable-->
<div class="control-label col-sm-4" style="background-color: #F0F3F4">
     <div class="card" style="width: 18rem;">
  <img class="card-img-top" src="{{ asset('img.jpg') }}" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Search by Vegetable</h5>
    <p class="card-text">We'll help you to search according to vegetables.</p>
    {!! Form::open(['url'=>'searchvegetable','method' => 'GET']) !!}
    <!-- here form will open only but when we use model lets check edit.php inside posts
       upload a image set (files = true) -->

            {{Form::label('vegetable', 'Vegetable or fruit:')}}
           {{Form::text('vegetable', null,array('class'=>'form-control'))}}

          <br>
          <center> {{Form::submit('Search',array('class' => 'btn btn-success btn-sm ','style'=>'margin-top:20px;background-color:#1A5276;'))}} </center>
        {!! Form::close() !!}
  </div>
</div>
</div>
</div>
<!-- search ended here -->
</div>
</div>
@endsection


@section('scripts')

{!! Html::script('js/select2.min.js') !!}

<script type="text/javascript">
  $('.select2-multi').select2();  //select2-multi is a class see line 34
</script>
@endsection