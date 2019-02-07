@extends('layouts.app')

@section('content')
<div class="container">
    <a href="{{url('/posts/create')}}" class="btn btn-success">Create Post</a>
     <hr>
     <table class="table table-striped table-bordered table-hover">
         <thead>
         <tr class="bg-info">
             <th>ID</th>
             <th>Category</th>
             <th>Title</th>
             <th>Slug</th>
             <th>Short Description</th>
             <th>Content</th>
             <th>Image</th>
             <th colspan="3">Actions</th>
         </tr>
         </thead>
         <tbody>
         @foreach ($posts as $post)
             <tr>
                 <td>{!! $post->id !!}</td>
                 <td>{!! $post->name !!}</td>
                 <td>{!! $post->title !!}</td>
                 <td>{!! $post->slug !!}</td>
                 <td>{!! substr($post->short_description, 0, 150) !!}</td>
                 <td>{!!substr($post->content, 0, 150)!!}</td>
                 <td>
                    @if ($post->image!="")
                        <img src="{{asset('storage/'.$post->image)}}" height="35" width="35"></td>
                    @endif
                 <td><a href="{{url('posts',$post->id)}}" class="btn btn-primary">Read</a></td>
                 <td><a href="{{route('posts.edit',$post->id)}}" class="btn btn-warning">Update</a></td>
                 <td>
                 {!! Form::open(['method' => 'DELETE', 'route'=>['posts.destroy', $post->id]]) !!}
                 {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                 {!! Form::close() !!}
                 </td>
             </tr>
         @endforeach

         </tbody>

     </table>
</div>

@endsection