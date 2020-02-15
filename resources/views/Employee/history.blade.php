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
  <div class="col-md-10">
    <h1>All Posts</h1>
  </div>
  
  
  <div class="col-md-12">
    <hr>
  </div>
</div>
  <div class="row">
    <div class="col-md-12">
      
           <table class="table">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Vegetable</th>
                  <th scope="col">Quantity</th>
                  <th scope="col">Created At</th>
                  <th scope="col">status</th>
                  <th scope="col">Price</th>
                  <th scope="col">Rating</th>
                </tr>
              </thead>
              <tbody>
                @foreach($history as $history)
                   <tr>
                    <th>{{ $history->id }}</th>
                    <td>{{ $history->vegetable }}</td>
                    <td>{{ $history->quantity }}</td>
                    <td>{{ date('M j, Y',strtotime($history->created_at)) }}</td>
                     @if($history->status==0)
                    <td>Available</td>
                    @endif
                    @if($history->status==1)
                    <td>Shipped</td>
                    @endif
                    @if($history->status==2)
                    <td>Closed</td>
                    @endif
                    <td>{{ $history->price}}</td>
                    <td>{{ $history->rating }}</td>
                    <td><a href="{{ route('stocks.edit',$history->id)
                    }}" class="btn btn-warning btn-sm">Edit</a></td>
                   </tr>
                  @endforeach
              </tbody>
            </table>
            
            <!--pagination links starts here-->
           
    </div>
     </div>
@endsection


