@extends('layouts.app')

@section('content')

  <div id="particles-js">
    
  </div>


<script type="text/javascript">window.$crisp=[];window.CRISP_WEBSITE_ID="d2f99348-ef00-411c-a529-75b901934f30";(function(){d=document;s=d.createElement("script");s.src="https://client.crisp.chat/l.js";s.async=1;d.getElementsByTagName("head")[0].appendChild(s);})();</script>
  <script src="https://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script>

  <script>
    particlesJS.load('particles-js', '{{ asset('particles.json') }}', function(){
      console.log('particles.json loaded...');
    });
  </script>


@endsection
