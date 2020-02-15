
@extends('layouts.app')

@section('title','|CreatePost')

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
    <h1 style="text-align: center;"> Add New Farmer</h1>
    <hr>
    
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

          <center> {{Form::submit('Submit',array('class' => 'btn btn-success btn-lg','style'=>'margin-top:20px;'))}}

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

