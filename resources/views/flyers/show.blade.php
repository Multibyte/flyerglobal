@extends('layout')

@section('content')
	<div class="row">
		<div class="col-md-4">
			<h1>{{ $flyer->street }}</h1>
			<h2>{{ $flyer->price }}</h2>

			<hr />

			<div class="description">{!! nl2br($flyer->description) !!}</div>
		</div>

		<div class="col-md-8 gallery">
			@foreach($flyer->photos->chunk(4) as $set)
				<div class="row">
					@foreach($set as $photo)
						<div class="col-md-3 gallery_image">
							{!! link_to('Delete', "/photos/{$photo->id}", 'DELETE') !!}
<!-- 							<form method="POST" action="/photos/{{ $photo->id }}">
								{!! csrf_field() !!}
								{{ method_field("DELETE")}}
								<button type="submit">Delete</button>
							</form>
 -->
							<a href="/{{ $photo->path }}" data-lity>
								<img src="/{{ $photo->thumbnail_path }}" alt="" />
							</a>
						</div>
					@endforeach
				</div>
			@endforeach
			@if ($user && $user->owns($flyer))
				<hr />
				<form id="addPhotosForm"
					  action="{{ route('store_photo_path', [$flyer->zip, $flyer->street]) }}"
					  method="POST"
					  class="dropzone">
					{{ csrf_field() }}
				</form>
			@endif
		</div>
	</div>
@stop

@section('scripts.footer')
	<script src='https://cdnjs.cloudflare.com/ajax/libs/dropzone/4.3.0/dropzone.js'></script>
	<script type="text/javascript">
		Dropzone.options.addPhotosForm = {
			paramName: 'photo',
			maxFileSize: 2,
			acceptedFiles: '.jpg, .jpeg, .png, .bmp'
		}
	</script>
@stop