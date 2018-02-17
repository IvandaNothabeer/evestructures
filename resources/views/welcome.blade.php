
@extends('layouts.app')

@section('content')
@include('layouts.errors')

<div class="container">
  <div class="blog-main">
    <div class="panel panel-primary">
      <div class="panel-heading"><h3 class="panel-title"><strong>@php echo env("APP_WELCOME_HEADER", "Set Welcome Message in .env")@endphp</strong></h3></div>
        <div class="panel-body">
        </div>
    </div>


    <div class="panel panel-warning">
      <div class="panel-heading"><h3 class="panel-title text-center"><strong>Disclaimer</strong></h3></div>
        <div class="panel-body">
        <p>EVE Online and the EVE logo are the registered trademarks of CCP hf. All rights are reserved worldwide. All other trademarks are the property of their respective owners. EVE Online, the EVE logo, EVE and all associated logos and designs are the intellectual property of CCP hf. All artwork, screenshots, characters, vehicles, storylines, world facts or other recognizable features of the intellectual property relating to these trademarks are likewise the intellectual property of CCP hf. CCP hf. has granted permission to {{env('SITE_NAME')}} to use EVE Online and all associated logos and designs for promotional and information purposes on its website but does not endorse, and is not in any way affiliated with, {{env('SITE_NAME')}}. CCP is in no way responsible for the content on or functioning of this website, nor can it be liable for any damage arising from the use of this website. </p>
      </div>
    </div>
  </div> <!-- close blog-main -->
</div><!-- close container -->
@endsection
