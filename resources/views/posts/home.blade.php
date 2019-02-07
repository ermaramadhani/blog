@extends('layouts.app')
@section('content')
    
    <div class="container">
        <h1>Post</h1>
        <hr>
        <div class="row">
            <div class="col-md-9">
                @foreach($posts as $post)
                    <h1><b>{{$post->title}}</b></h1>
                    <h6>{{$post->slug}}</h6>
                    @if ($post->image!="")
                        <img src="{{asset('storage/'.$post->image)}}" height="250" width="250" class="img-rounded">
                    @endif
                    <h6>{!!$post->short_description!!}</h6>
                    <p>{!!substr($post->content, 0, 300)!!}</p>
                    <a href="{{url('readmore',$post->id)}}" class="btn btn-primary">Read More</a>
                    <hr>
                @endforeach
                
                {{$posts->links()}}
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