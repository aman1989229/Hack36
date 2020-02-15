@extends('layouts.app')

@section('title','|EditPost')

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
      <h1 class="display-4">Edit Your Profile</h1>
  </header>
    <hr>
 <div class="control-label col-sm-12" style="background-color: #F0F3F4">
	{!!Form::model($retailer,['route'=>['retailers.update',$retailer->id],'method'=>'PUT','files'=>true])!!}

		 {{Form::label('fname', 'First Name:')}}
           {{Form::text('fname', null,array('class'=>'form-control'))}}

            {{Form::label('lname', 'Last Name:')}}
           {{Form::text('lname', null,array('class'=>'form-control'))}}

            {{Form::label('address', 'Address:')}}
           {{Form::text('address', null,array('class'=>'form-control'))}}
            
            {{Form::label('state', 'State:')}}
           {{Form::text('state', null,array('class'=>'form-control'))}}
                    
            {{Form::label('city', 'City:')}}
           {{Form::text('city', null,array('class'=>'form-control'))}} 

          {{Form::label('pincode', 'Pincode:')}}
           {{Form::text('pincode', null,array('class'=>'form-control'))}}


         {{Form::label('contact', 'Contact:')}}
           {{Form::text('contact', null,array('class'=>'form-control'))}}

          <center> {{Form::submit('Edit Details',array('class' => 'btn btn-success btn-lg','style'=>'margin-top:20px; background-color:#1A5276;'))}}

          {!!Form::close()!!}

         </center>
  </div>
</div>
@endsection

@section('scripts')

{!! Html::script('js/select2.min.js') !!}

@endsection