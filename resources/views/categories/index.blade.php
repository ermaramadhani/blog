@extends('layouts.app')

@section('content')
 
 <div class="container">
    <a href="{{url('/categories/create')}}" class="btn btn-success">Create Category</a>
    <hr>
    <table class="table table-striped table-bordered table-hover">
         <thead>
         <tr class="bg-info">
             <th>ID</th>
             <th>Name</th>
             <th colspan="2">Actions</th>
         </tr>
         </thead>
         <tbody>
         @foreach ($categories as $category)
             <tr>
                 <td>{{ $category->id }}</td>
                 <td>{{ $category->name }}</td>
                 <td><a href="{{route('categories.edit',$category->id)}}" class="btn btn-warning">Update</a></td>
                 <td>
                 {!! Form::open(['method' => 'DELETE', 'route'=>['categories.destroy', $category->id]]) !!}
                 {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                 {!! Form::close() !!}
                 </td>
             </tr>
         @endforeach

         </tbody>

     </table>
 </div>
 
@endsection