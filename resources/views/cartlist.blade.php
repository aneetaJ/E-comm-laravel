@extends('master')
@section("content")
<div class="custom-product">
		<div class="col-sm-12">
			<div class="trending-wrapper">
				@if(count($data) >= 1 )
				<h4><center>Result for Products</center></h4>
				<a class="btn btn-info" style="margin-left: 580px;" href="/ordernow">Order Now</a>
				<hr>
				@foreach($data as $item)
			  		<div class="row cart-list-item">
			  			<div class="col-sm-3">
			  				<a href="/detail/{{ $item->id }}">
					      	<img class="trending-image" src="{{ $item->gallery }}">
			  			</a>
			  			</div>
			  			<div class="col-sm-5">
						      	<h3>{{ $item->name }}</h3>
						      	<p>{{ $item->description }}</p>
					      </div>
			  			<div class="col-sm-4">
			  				<a href="/removefromcart/{{ $item->cart_id }}" style="margin-top: 30px;" class="btn btn-warning">Remove from cart</a>
			  			</div>
			    	</div>
  				@endforeach
  				@else
  				<h4><center>No items in cart</center></h4>
  				@endif
			</div>
		</div>
</div>
@endsection