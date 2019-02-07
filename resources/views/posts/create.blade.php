@extends('layouts.app')
@section('content')
<div class="container">
    <h1>Create Post</h1>
    <hr>
    {!! Form::open(array
    (
        'url' => 'posts',
        'files' => true
    )) !!}
    <div class="form-group">
    {!! Form::label('Category', 'Category:') !!}
    <select name="category" class="form-control">
        <option value="">Choose category</option>
        @foreach ($category as $data)
            <option value="{{ $data->id }}">{{ $data->name}}</option>
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
        {!! Form::file('image',null,['class'=>'form-control']) !!}
    </div>
    <div class="form-group">
        {!! Form::submit('Save', ['class' => 'btn btn-primary']) !!}
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
