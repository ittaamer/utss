@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12 mb-42">
            <img src="{{ url('uploads/h2.jpg') }}" class="rounded mx-auto d-block" width="1100"height="200" alt=""style="display: block; margin: auto;">
            <blockquote class="blockquote text-center">
  <p class="mb-0" style="font-family: garamond;"><strong>Beauty come in the Inseide and Outside </strong></p>
  <footer class="blockquote-footer">Beauty woman around the World <cite title="Source Title"></cite></footer>
</blockquote>
        </div>
        <div class="container">
        

<div class="row justify-content- center ">
<div class="col-md-12 mb-42">
<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="{{ url('uploads/o.jpg') }}" class=" w-30" width="700" height="300"alt="..." style="display: block; margin: auto;margin-top: 20px; margin-bottom: 20px;">
    </div>
    <div class="carousel-item">
      <img src="{{ url('uploads/o1.jpg') }}" class=" w-30" width="700" height="300"alt="..." style="display: block; margin: auto;margin-top: 20px; margin-bottom: 20px;">
    </div>
    <div class="carousel-item">
      <img src="{{ url('uploads/bi1.jpg') }}" class=" w-30" width="700" height="300"alt="..."style="display: block; margin: auto;margin-top: 20px;margin-bottom: 20px;"> 
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>
</div>
</div>



        @foreach($barangs as $barang)
        
        <div class="col-md-4">
            <div class="card">
              <img src="{{asset($barang->gambar )}}" class="card-img-top" alt="...">
              

              <div class="card-body">
                <h5 class="card-title">{{ $barang->nama_barang }}</h5>
                <p class="card-text">
                    <strong>Harga :</strong> Rp. {{ number_format($barang->harga)}} <br>
                    <strong>Stok :</strong> {{ $barang->stok }} <br>
                    <hr>
                    <strong>Description :</strong> <br>
                  {{ $barang->keterangan }} 
                </p>
                <a href="{{ url('pesan') }}/{{ $barang->id }}" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Beli </a>
               </div>
            </div> 
        </div>
        @endforeach
        
    </div>
</div>
@endsection
