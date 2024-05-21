@extends('admin.layouts.app')
@section('content')
    <div class="admin__panel__wrapper">
        @include('admin.components.header')

        <div class="admin__panel__content-block">

            @if (isset($content))
                @include('admin.components.' . $content)
            @else
                @include('admin.components.all_projects') <!-- Default content -->
            @endif
        </div>
    </div>
@endsection
