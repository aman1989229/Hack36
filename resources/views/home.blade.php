@extends('layouts.app')

@section('content')

  <div id="particles-js">
    
  </div>

  <script src="https://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script>

  <script>
    particlesJS.load('particles-js', '{{ asset('particles.json') }}', function(){
      console.log('particles.json loaded...');
    });
  </script>


@endsection
