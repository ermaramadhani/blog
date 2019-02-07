@extends('layouts.app')
@section('content')
    
    <div class="container">
        <h1>Post</h1>
        <hr>
        <div class="row">
            <div class="col-md-9">
                <h1><b>{{$posts->title}}</b></h1>
                <h6>{{$posts->slug}} - <b>{{$posts->category}}</b></h6>
                @if ($posts->image!="")
                    <img src="{{asset('storage/'.$posts->image)}}" height="250" width="250" class="img-rounded">
                @endif
                <h6>{!!$posts->short_description!!}</h6>
                <p>{!!$posts->content!!}</p>
            </div>
            <div class="col-md-3">
                <p>Category</p>
                <ul>
                     @foreach ($category as $categories)
                        <li>{{$categories->name}}</li>
                    @endforeach
                </ul>
            </div>
        </div>
    </div>


        
@stop