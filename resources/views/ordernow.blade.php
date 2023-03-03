@extends('master')
@section("content")
<div class="custom-product">
		<div class="col-sm-12">
			 <table class="table">
			    <tbody>
			      <tr>
			        <td>Amount</td>
			        <td>{{ $data }}$</td>
			      </tr>
			      <tr>
			        <td>Tax</td>
			        <td>12$</td>
			      </tr>
			      <tr>
			        <td>Delivery Charges</td>
			        <td>10$</td>
			      </tr>
			      <tr>
			        <td>Total Amount</td>
			        <td>{{ $data + 12 + 10 }}$</td>
			      </tr>
			    </tbody>
  			</table>
  			<div>
  				<form action="/placeorder" method="POST">
  					@csrf
					  <div class="form-group">
					    <textarea placeholder="Enter Address" name="address" required class="form-control"></textarea>
					  </div>
					  <div class="form-group">
					    <label>Payment Method:</label><br><br>
					    <input type="radio" value="Online Payment" name="payment"> <span>Online Payment</span><br><br>
					    <input type="radio" value="EMI" name="payment"> <span>EMI</span><br><br>
					    <input type="radio" value="Cash On Delivery" name="payment"> <span>Cash On Delivery</span>
					  </div>
					  <button type="submit" class="btn btn-info">Order Now</button>
				</form>
  			</div>
		</div>
</div>
@endsection