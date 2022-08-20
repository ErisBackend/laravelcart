@extends('shop.app')
@section('title')
Satu Langkah Lagi
@endsection
@section('content')
<div class="container">
	<div class="col-md-12 thumbnail product-box">
					<form action="{{url('checkout')}}" method="post" class="creditly-card-form agileinfo_form">
						{{ csrf_field() }}
						<div class="container row">
							<div class="col-md-6">
								<div class="first-row">
									<div class="form-goup">
										<label>Nama Lengkap</label>
										<input class="form-control" type="text" name="ordfullname" placeholder="Full Name" required="" value="{{ Auth::user()->name }}">
									</div>
									<div class="form-goup">
										<label>E-mail</label>
										<input class="form-control" type="email" name="ordmail" placeholder="E-mail Name" required="" value="{{ Auth::user()->email }}">
									</div>									
									<div class="w3_agileits_card_number_grids">
										<div class="w3_agileits_card_number_grid_left">
											<div class="form-goup">
												<label>No.HP</label>
												<input type="text" placeholder="Mobile Number" name="ordnohp" required="" class="form-control">
											</div>
										</div>
										<div class="w3_agileits_card_number_grid_right">
											<div class="form-goup">
												<label>Alamat</label>
												<textarea class="form-control" name="ordalamat" required=""></textarea>
											</div>
										</div>
										<div class="clear"> </div>
									</div>
									<div class="form-goup">
										<label>Kota</label>
										<input type="text" placeholder="Town/City" name="ordkota" class="form-control" required="">
									</div>
									<div class="form-goup">
										<label>Provinsi</label>
										<input type="text" placeholder="Provinsi" class="form-control" name="ordprovinsi" required="">
									</div>									
									<div class="form-goup">
										<label>Menthode Pembayaran</label>
										<select name="ordmethod" class="form-control">
											<option>Select type payments</option>
											<option value="COD">COD</option>
											<option value="TF">Transfer ATM</option>
										</select>
									</div><br><br>
									<div class="row">
								  		<div class="container">
								  			<input type="submit" name="save" class="btn btn-primary" value="Confirm">
								  		</div>
								  	</div>									
								</div>
							</div>
							<div class="col-md-6">
								<h4>Rincian Pesanan</h4>
							  	<table class="table table-bordered">
								    <thead>
								      <tr>
								        <th>Name</th>
								        <th>Image</th>
								        <th>Size</th>
								        <th>Color</th>
								        <th>Prize</th>
								        <th>Qty</th>
								        <th>Total</th>
								      </tr>
								    </thead>
								    <tbody>
								    @foreach(Cart::content() as $cart)
								      <tr>
								        <td>
								        	{{$cart->name}}
								        </td>
								        <td><img src="{{url('shopnew/assets/img')}}/{{$cart->model->prdthumb}}" height="80"></td>
								        <td>{{ strtoupper($cart->options->size) }}</td>
								        <td>{{ ucfirst($cart->options->color) }}</td>
								        <td>{{ $cart->price }}</td>
								        <td>{{$cart->qty}}</td>
								        <td>{{$cart->price * $cart->qty }}</td>       
								      </tr>
								    @endforeach
								    </tbody>
								    <tfoot>
								    	<tr>
								    		<td colspan="6" align="center"><h4>Subtotal</h4></td>
								    		<td><h4>{{Cart::subtotal()}}</h4></td>
								    	</tr>
								    </tfoot>
							  	</table>
							</div>
						</div>
					</form>
	</div>
</div>
@endsection