@extends('layouts.app')
@section('content')
<div class="container">
    <h1>Create Category</h1>
    <hr>
    {!! Form::open(['url' => 'categories']) !!}
    <div class="form-group">
        {!! Form::label('Name', 'Name:') !!}
        {!! Form::text('name',null,['class'=>'form-control']) !!}
    </div>
    <div class="form-group">
        {!! Form::submit('Save', ['class' => 'btn btn-primary']) !!}
        <a href="{{ url('categories')}}" class="btn btn-primary">Back</a>
    </div>
    {!! Form::close() !!}
</div>
    
@stop