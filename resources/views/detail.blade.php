@extends('master')
@section("content")
<div class="container">
	<div class="row">
		<div class="col-sm-6">
			<img class="detail-img" src="{{ $productDetail['gallery'] }}">
		</div>
		<div class="col-sm-6">
			<a href="/">Go Back</a>
			<h2>{{ $productDetail['name'] }}</h2>
			<h3>Price: {{ $productDetail['price'] }}</h3>
			<h4>Details: {{ $productDetail['description'] }}</h4>
			<h4>Category: {{ $productDetail['category'] }}</h4>
			<br><br>
			<form action="/add_to_cart" method="POST">
				@csrf
				<input type="hidden" name="product_id" value="{{ $productDetail['id'] }}">
				<button class="btn btn-primary">Add To Cart</button>
			</form>
			<br><br>
			<button class="btn btn-success">Buy Now</button>
			<br><br>
		</div>
	</div>

</div>
@endsection