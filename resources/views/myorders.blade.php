@extends('master')
@section("content")
<div class="custom-product">
		<div class="col-sm-12">
			<div class="trending-wrapper">
				@if(count($data) >= 1 )
				<h4><center>Your Orders</center></h4>
				<hr>
				@foreach($data as $item)
			  		<div class="row cart-list-item">
			  			<div class="col-sm-3">
			  				<a href="/detail/{{ $item->id }}">
					      	<img class="trending-image" src="{{ $item->gallery }}">
			  			</a>
			  			</div>
			  			<div class="col-sm-5">
						      	<h3>Name: {{ $item->name }}</h3>
						      	<p>Address: {{ $item->address }}</p>
						      	<p>Payment Method: {{ $item->payment_method }}</p>
						      	<p>Payment Status: {{ $item->payment_status }}</p>
						      	<p>Delivery Status: {{ $item->status }}</p>
					      </div>
			    	</div>
  				@endforeach
  				@else
  				<h4><center>No orders made yet</center></h4>
  				@endif
			</div>
		</div>
</div>
@endsection