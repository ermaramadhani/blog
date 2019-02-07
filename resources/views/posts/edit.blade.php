@extends('layouts.app')
@section('content')
<div class="container">
    <h1>Update Post</h1>
    <hr>
    {!! Form::model($posts,['method' => 'PATCH','route'=>['posts.update',$posts->id]]) !!}
    <div class="form-group">
        {!! Form::label('Category', 'Category:') !!}
        <select name="category" class="form-control">
            @foreach ($category as $data)
                    <option value="{{ $data->id }}" {!! ($data->id == $posts->category ? "selected=\"selected\"" : "") !!}>{{ $data->name}}</option>
            @endforeach
        </select>
    </div>
    <div class="form-group">
        {!! Form::label('Title', 'Title:') !!}
        {!! Form::text('title',null,['class'=>'form-control']) !!}
    </div>
    <div class="form-group">
        {!! Form::label('Short Description', 'Short Description:') !!}
        {!! Form::text('short_description',null,['class'=>'form-control']) !!}
    </div>
    <div class="form-group">
        {!! Form::label('Content', 'Content:') !!}
        {!! Form::textarea('content',null,['class'=>'form-control', 'id'=>'content']) !!}
    </div>
    <div class="form-group">
        {!! Form::label('Image', 'Image:') !!}
        @if ($posts->image!="")
            <img src="{{ asset('storage/'.$posts->image) }}" height="150" width="150" class="img-rounded">
            {!! Form::hidden('image',null,['class'=>'form-control']) !!}     
        @else
            {!! Form::file('image',null,['class'=>'form-control']) !!}
        @endif   
    </div>
    <div class="form-group">
        {!! Form::submit('Update', ['class' => 'btn btn-primary']) !!}
        <a href="{{ url('posts')}}" class="btn btn-primary">Back</a>
    </div>
    {!! Form::close() !!}
</div>
<script>
     $('#content').summernote({
        placeholder: '',
        tabsize: 2,
        height: 200
      });
 </script>
@stop