@extends('shop.app')
@section('title')
Beranda {{ Auth::user()->name }}
@endsection
@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-4">
                <div>
                    <a href="#" class="list-group-item active">My Account
                    </a>
                    <ul class="list-group">
                        <li class="list-group-item">Mobile
                          <span class="label label-primary pull-right">234</span>
                        </li>
                        <li class="list-group-item">Computers
                          <span class="label label-success pull-right">34</span>
                        </li>
                        <li class="list-group-item">Tablets
                          <span class="label label-danger pull-right">4</span>
                        </li>
                        <li class="list-group-item">Appliances
                          <span class="label label-info pull-right">434</span>
                        </li>
                        <li class="list-group-item">Games & Entertainment
                          <span class="label label-success pull-right">34</span>
                        </li>
                    </ul>
                </div>			
		</div>
		<div class="col-md-8">
			<div class="panel panel-primary">
				<div class="panel-heading">
					Dashboard
				</div>
				<div class="panel-body">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>No</th>
								<th>Order Id</th>
								<td>Tagihan</td>
								<td>Tanggal</td>
								<th>Status</th>
								<th>Details</th>
							</tr>
						</thead>
						<tbody>
							@foreach($orders as $item)
							<tr>
								<td>#</td>
								<td>{{$item->ordersidencytpe}}</td>
								<td>{{$item->ordbyr}}</td>
								<td>{{$item->created_at}}</td>
								<td>
									@if($item->ordstatus=="N")
									<span class="label label-danger text-center">Belum Di Konfirmasi</span>
									@else
									<span class="label label-success text-center">Sudah Dikonfirmasi</span>
									@endif
								</td>
								<td>
									<a href="{{url('track')}}">views</a>
								</td>
							</tr>
							@endforeach
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection