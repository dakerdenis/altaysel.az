<!-- Admin sections -->
<style>
    .section__images__wrapper-name {
        margin-top: 20px;
        margin-bottom: 40px;
        font-size: 25px;
    }

    .section__additionalimage__wrapper {
        width: 100%;
        display: flex;
        justify-content: space-between
    }

    .standart__additional__block {
        width: 300px;
        height: 400px;
        overflow: hidden;
        display: flex;
        align-items: center;
        flex-direction: column;
    }

    .standart__additional__block-image {
        width: 300px;
        height: 300px;
        border-radius: 10px;
        overflow: hidden;
        margin-bottom: 10px;
    }
    .standart__additional__block-image img{
        width: 100%;height: 100%;object-fit: cover;
    }

    .delete-image {
        width: 200px;
        height: 50px;
        background-color: #FFAC1C;
        color: #fff;
        text-align: center;
        border-radius: 8px;
        font-size: 20px;

    }
    .save-upload{
        width: 200px;
        height: 50px;
        background-color: #FFAC1C;
        color: #fff;
        text-align: center;
        border-radius: 8px;
        font-size: 20px;
    }

    .delete-image {}

    .upload-block {}

    .upload-input {}

    .upload-preview {}

    .save-upload {}
</style>
<section class="admin__panel__content-section">
    <div class="section__name__elements">
        <div class="section__name__name section__name__name_link">
            <a href="{{ route('admin.edit_project', ['id' => $project->id]) }}">
                <img src="{{ asset('style/imgs/go_back.svg') }}" alt="">
                <p>Əvvəlki səhifəyə qayıt</p>
            </a>
        </div>
        @if (session('success'))
            <div style="color: rgb(11, 121, 11); font-weight: 600; font-size: 20px;" class="alert alert-success">
                {{ session('success') }}
            </div>
        @endif

    </div>
    <div class="section__images__wrapper">
        <div class="section__images__wrapper-name">
            Редактирование дополнительных фотографий
        </div>
        @php
            $images = json_decode($project->images);
            $numExistingImages = count($images);
        @endphp
        <div class="section__additionalimage__wrapper">
            @for ($i = 0; $i < 4; $i++)
                @if ($i < $numExistingImages)
                    <form action="{{ route('admin.delete_add_image', ['id'=>$project->id,  'image' =>$images[$i]]) }}" method="POST"
                        class="standart__additional__block  image-block">
                        @csrf
                        @method('DELETE')

                        <div class="standart__additional__block-image">
                            <img src="{{ asset('uploads/projects/' . $images[$i]) }}" alt="Image {{ $i + 1 }}">
                        </div>
                        <button type="submit" class="delete-image" data-image="{{ $images[$i] }}">Delete</button>
                    </form>
                @else
                <div class="standart__additional__block upload-block">
                    <form action="{{ route('admin.upload__additional_image', ['id'=>$project->id]) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <input type="file" name="additional_photo_input" accept="image/*" class="upload-input">
                        <img src="#" alt="Preview" class="upload-preview" style="display: none;">
                        <button type="submit" class="save-upload">Upload</button>
                    </form>
                </div>
                @endif
            @endfor
        </div>
    </div>
</section>
