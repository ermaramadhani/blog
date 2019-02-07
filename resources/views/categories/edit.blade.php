@extends('layouts.app')
@section('content')
<div class="container">
    <h1>Update Category</h1>
    <hr>
    {!! Form::model($categories,['method' => 'PATCH','route'=>['categories.update',$categories->id]]) !!}
    <div class="form-group">
        {!! Form::label('Name', 'Name:') !!}
        {!! Form::text('name',null,['class'=>'form-control']) !!}
    </div>
    <div class="form-group">
        {!! Form::submit('Update', ['class' => 'btn btn-primary']) !!}
        <a href="{{ url('categories')}}" class="btn btn-primary">Back</a>
    </div>
    {!! Form::close() !!}
</div>
    
@stop