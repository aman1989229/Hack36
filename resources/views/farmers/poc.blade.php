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
    @if($poc==NULL){
     <h1>NO POC available at your Location!!! We'll come to you soon</h1>
     
  }@else{
       <a href="{{ route('pocgroups.create') }}" class="btn btn-success btn-lg btn-block" role="button" aria-pressed="true">Enroll me</a>
}@endif
		
@endsection


@section('scripts')

{!! Html::script('js/select2.min.js') !!}

<script type="text/javascript">
  $('.select2-multi').select2();  //select2-multi is a class see line 34
</script>
@endsection