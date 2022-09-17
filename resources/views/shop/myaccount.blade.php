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
                        <li class="list-group-item"><a href="{{url('myaccount')}}">Belanja saya</a>
                          <span class="label label-primary pull-right">234</span>
                        </li>
                        <li class="list-group-item"><a href="{{url('konfirmasi_pembayaran')}}">Account Saya</a>
                          <span class="label label-success pull-right">34</span>
                        </li>
                        <li class="list-group-item"><a href="">My Orders></a>
                          <span class="label label-danger pull-right">4</span>
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
					@yield('contentuser')
				</div>
			</div>
		</div>
	</div>
</div>
@endsection