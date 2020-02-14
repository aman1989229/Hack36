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
    
    {!! Form::open(['route' => 'stocks.store','data-parsley-validate'=>'','files'=>true]) !!}<!-- here form will open only but when we use model lets check edit.php inside posts
       upload a image set (files = true) -->
           {{Form::label('vegetable', 'Vegetable:')}}
           {{Form::text('vegetable', null,array('class'=>'form-control'))}}

            {{Form::label('quantity', 'Quantity:(in tones)')}}
           {{Form::text('quantity', null,array('class'=>'form-control'))}}

            
           {{Form::submit('Add My stock',array('class' => 'btn btn-success btn-lg btn-block','style'=>'margin-top:20px;'))}}
        {!! Form::close() !!}
  </div>

</div>
@endsection


@section('scripts')

{!! Html::script('js/select2.min.js') !!}

<script type="text/javascript">
  $('.select2-multi').select2();  //select2-multi is a class see line 34
</script>
@endsection