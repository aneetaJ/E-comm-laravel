@extends('master')
@section("content")
<div class="custom-product">
<div class="trending-wrapper">
	<h4>Result For Products</h4>
	@if(count($searchdata) >= 1 )
	@foreach($searchdata as $item)
	
		<div class="searched-item">
			<a href="/detail/{{ $item['id'] }}">
	      <img class="trending-image" src="{{$item['gallery']}}">
	    </a>
	      <div class="">
	      	<h2>{{ $item['name']}}</h2>
	      	<h5>{{ $item['description'] }}</h5>
	      </div>
	    </div>
  	@endforeach
  	@else
  		<h4><center>No Products Found</center></h4>
  	@endif
</div>
</div>
@endsection