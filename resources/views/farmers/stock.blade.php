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
  
      <header class="animated fadeInDownBig text-center bg-primary text-white  p-3">
          <h1 class="display-4">Add New Farmer</h1>

   </header>
  
    <hr>
    
    
    <div class="control-label col-sm-12" style=""><br>
    {!! Form::open(['route' => 'stocks.store','data-parsley-validate'=>'','files'=>true]) !!}<!-- here form will open only but when we use model lets check edit.php inside posts
       upload a image set (files = true) -->
           {{Form::label('vegetable', 'Vegetable:')}}
           {{Form::text('vegetable', null,array('class'=>'form-control'))}}
           <br>
            {{Form::label('quantity', 'Quantity:(in tones)')}}
           {{Form::text('quantity', null,array('class'=>'form-control'))}}

        <br><br>
           <center>{{Form::submit('Add My stock',array('class' => 'btn btn-success btn-lg ','style'=>'margin-top:20px; '))}}</center>
        {!! Form::close() !!}
  </div>
</div>
</div>
@endsection


@section('scripts')

{!! Html::script('js/select2.min.js') !!}

<script type="text/javascript">
  $('.select2-multi').select2();  //select2-multi is a class see line 34
</script>
@endsection