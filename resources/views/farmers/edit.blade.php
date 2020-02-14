@extends('layouts.app')

@section('title','|EditPost')

@section('stylesheets')
{!! Html::style('css/select2.min.css') !!}
 <script src='https://cloud.tinymce.com/stable/tinymce.min.js'></script>


<script>
    tinymce.init({
     selector:'textarea'
      });
</script>
@endsection

@section('content')
<div class="row">
    
    <div class="col-md-8 col-md-offset-2">
        <h1 style="text-align: center;"> Edit Your Profile</h1>
        <hr>

	{!!Form::model($farmer,['route'=>['farmers.update',$farmer->id],'method'=>'PUT','files'=>true])!!}

		 {{Form::label('fname', 'First Name:')}}
           {{Form::text('fname', null,array('class'=>'form-control input-lg'))}}

            {{Form::label('lname', 'Last Name:')}}
           {{Form::text('lname', null,array('class'=>'form-control input-lg'))}}

            {{Form::label('age', 'Age:')}}
           {{Form::text('age', null,array('class'=>'form-control input-lg'))}}

            {{Form::label('address', 'Address:')}}
           {{Form::text('address', null,array('class'=>'form-control input-lg'))}}
            
            {{Form::label('state', 'State:')}}
           {{Form::text('state', null,array('class'=>'form-control input-lg'))}}
                    
            {{Form::label('city', 'City:')}}
           {{Form::text('city', null,array('class'=>'form-control input-lg'))}} 

          {{Form::label('pincode', 'Pincode:')}}
           {{Form::text('pincode', null,array('class'=>'form-control input-lg'))}}

           {{Form::label('vegetable', 'Vegetable:')}}
           {{Form::text('vegetable', null,array('class'=>'form-control input-lg'))}}

           {{Form::submit('Edit Farmer',array('class' => 'btn btn-success btn-lg btn-block','style'=>'margin-top:20px;'))}}

{!!Form::close()!!}

{{Form::open(['route'=>['farmers.destroy',$farmer->id],'method'=>'DELETE'])}}
            
                    {{Form::submit('Delete Farmer',['class'=>'btn btn-danger btn-block','style'=>'margin-top:20px;'])}}
                
        {{Form::close()}}
</div>
</div>
@endsection

@section('scripts')

{!! Html::script('js/select2.min.js') !!}

@endsection