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
     
  }@else
    <div class="container" style="margin-left: 230px;">
      <h2>Introduction and Acknowledgment</h2>
      <br>
<p>AgroGarden Corporation (the "Company") maintains this Web site and applications (collectively and individually, the "Web site") for informational purposes only. Access and use of this Web site by you are governed exclusively by these terms and conditions ("Terms and Conditions"). By accessing and using this Web site, you acknowledge that you have read, accept, and will be bound by these Terms and Conditions. The Company reserves the right to modify or amend these Terms and Conditions at any time without notice.

Third Party Internet Web sites
The Company may from time to time provide links and pointers at this Web site to Internet sites of third parties ("Third Party Sites"). These links and pointers to Third Party Sites are provided as a convenience only. The Company has not reviewed, and does not operate or control in any respect, any information, products or services available on Third Party Sites, and the Company is not responsible for any information provided at any Third Party Sites. The Company makes no representations and provides no warranties whatsoever concerning Third Party Sites, and the fact that the Company has provided a link to any Third Party Site on this Web site does not constitute an endorsement, authorization, sponsorship or affiliation by the Company with respect to such Third Party Site or its owners or providers or any products or services mentioned or offered at the Third Party Site. The Company expressly disclaims any responsibility for the content, the accuracy of the information and/or quality of products or services provided by, advertised on, or sold through, all Third Party Sites.</p>
      <input type="checkbox" name="checkbox" value="check" id="agree" /> 
     I have read and agree to the <a href="">Terms and Conditions Policy </a> <br><br>
       <a href="{{ route('pocgroups.create') }}" class="btn btn-success btn-lg " role="button" aria-pressed="true">Enroll me</a></div>
@endif
		
@endsection


@section('scripts')

{!! Html::script('js/select2.min.js') !!}

<script type="text/javascript">
  $('.select2-multi').select2();  //select2-multi is a class see line 34
</script>
@endsection