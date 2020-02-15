<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <style type="text/css">
        button {
  background-color: grey;
  border: none;
  color: white;
  padding: 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
}
.button5 {border-radius: 50%;}
.button4 {border-radius: 50%;}
button:hover {
  opacity: 0.8;
}
    </style>
</head>
<body>
    <div id="app">
        <nav class="navbar navbar-expand-md navbar-light shadow-sm bg-primary">
            <div class="container" >
                <a class="navbar-brand" href="{{ url('/') }}">
                    {{ config('app.name', 'Laravel') }}
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav mr-auto">

                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Authentication Links -->
                        @guest
                            <li class="nav-item">
                               <BUTTON class="button button5"><a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a></BUTTON>
                            </li>
                            @if (Route::has('register'))
                                <li class="nav-item">
                                  <BUTTON class="button button4"><a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a></BUTTON>
                                </li>
                            @endif
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>
                                
                                 
                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <?php
                                        $user=Auth::user();
                                   
                                      if($user->type==1) {
                                        if($user->profile==0){
                                        ?>
                               <a class="dropdown-item" href="{{route('profile')}}">Create Profile</a>
                                     <?php }
                                     else{
                                     ?>

                                    <a class="dropdown-item" href="{{route('farmers.edit',$user->id)}}">Edit Profile</a>
                                    <?php
                                     } 
                                    ?>

                                 <a class="dropdown-item" href="{{route('stocks.index')}}">Stock</a>

                                  <a class="dropdown-item" href="{{route('stocks.show',$user->id)}}">History</a>
                                  <?php 
                                   }
                                   if($user->type==3) {
                                        if($user->profile==0){
                                        ?>
                                 
                                 
                                   <a class="dropdown-item" href="{{route('employees.index')}}">Create Profile</a>
                                   
                                  <?php }
                                     else{
                                     ?>
                                    
                                    <a class="dropdown-item" href="{{route('employees.edit',$user->id)}}">Edit Profile</a>
                                
                                     <?php 
                                       }
                                     ?>
                            
                                    
                                     <a class="dropdown-item" href="{{route('vegeindex')}}">Add Vegetable</a>

                                      <a class="dropdown-item" href="{{route('requestorder')}}">Requested Orders</a>
                                      
                                      <a class="dropdown-item" href="{{route('employees.show',$user->id)}}">History</a>
                                    <?php 
                                }
                              
                                   
                                   if($user->type==2) {
                                        if($user->profile==0){
                                        ?>
                                 
                                 
                                   <a class="dropdown-item" href="{{route('retailers.index')}}">Create Profile</a>
                                   
                                  <?php }
                                     else{
                                     ?>
                                    
                                    <a class="dropdown-item" href="{{route('retailers.edit',$user->id)}}">Edit Profile</a>
                                
                                     <?php 
                                       }
                                     ?>
                            
                                    
                                     <a class="dropdown-item" href="{{route('placeorder')}}">Place Order</a>
                                      
                                      <a class="dropdown-item" href="{{route('orders.show',$user->id)}}"> Order History</a>
                                    <?php 
                                }
                                ?>
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <main class="py-4">
            @yield('content')
        </main>
    </div>
</body>
</html>
