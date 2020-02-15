
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
  
  <header class="animated fadeInDownBig text-center text-white p-3" style="background-color:#82E0AA ;">
    <h1 class="display-4"> Add New Farmer</h1>
  </header>
    <hr>
    <div class="control-label col-sm-12" style="background-color: #F0F3F4" >
   {!!Form::model($stock,['route'=>['stocks.update',$stock->id],'method'=>'PUT','files'=>true])!!}

     {{Form::label('fname', 'First Name:')}}
           {{Form::text('fname', null,array('class'=>'form-control'))}}

            {{Form::label('lname', 'Last Name:')}}
           {{Form::text('lname', null,array('class'=>'form-control'))}}

            {{Form::label('address', 'Address:')}}
           {{Form::text('address', null,array('class'=>'form-control'))}}
            
            {{Form::label('vegetable', 'Vegetable:')}}
           {{Form::text('vegetable', null,array('class'=>'form-control'))}}

           {{Form::label('quantity', 'Quantity:')}}
           {{Form::text('quantity', null,array('class'=>'form-control'))}}

           {{Form::label('solded', 'Solded:')}}
           {{Form::select('solded', ['0' => 'No', '1' => 'Yes'], $stock->solded)}}
            
             {{Form::label('status', 'Status:')}}

            {{Form::select('status', ['0' => 'Available', '1' => 'Shipped','2'=>'Closed'], $stock->status)}}

          <center> {{Form::submit('Submit',array('class' => 'btn btn-success btn-lg','style'=>'margin-top:20px; background-color:#1A5276;'))}}

{!!Form::close()!!}

  </div>

</div>
@endsection


@section('scripts')

{!! Html::script('js/select2.min.js') !!}

<script type="text/javascript">
  $('.select2-multi').select2();  //select2-multi is a class see line 34
</script>
@endsection

