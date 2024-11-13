<!-- HTML -->
<!-- Admin sections -->
<style>
    .add_photo__project {
        background-position: center;
        background-size: cover;

    }

    .add_photo__project-small {
        background-position: center;
        background-size: cover;
    }

    .editing__additional__images {
        width: 147px;
        height: 147px;
        margin-left: 30px;
        border-radius: 10px;
        background-color: #FFAC1C;
        display: flex;
        align-items: center;
        justify-content: center;
        text-align: center;
        color: #fff;
        font-size: 15px;
        padding: 20px
    }

</style>
<section class="admin__panel__content-section">
    <form action="{{route('admin.edit_project__form',  ['id' => $project->id])}}" method="POST" enctype="multipart/form-data">
        
        @csrf
        @method('PUT')
        <div class="section__name__elements">
            <div class="section__name__name section__name__name_link">
                <a href="{{ route('admin.main') }}">
                    <img src="{{ asset('style/imgs/go_back.svg') }}" alt="">
                    <p>Əvvəlki səhifəyə qayıt</p>
                </a>
            </div>
            @if (session('success'))
            <div style="color: rgb(11, 121, 11); font-weight: 600; font-size: 20px;" class="alert alert-success">
                {{ session('success') }}
            </div>
        @endif

            <div class="section__add__project">
                <button type="submit">Layihəni yadda saxla və dərc et</button>
            </div>
        </div>

        <div class="section__add__wrapper">
            <!-- Add Photos -->
            <div class="section__add__photos section__add__photos-project">
                <div class="main__photo__block">
                    <div id="add_photo_wrapper" class="add__photo__element">
                        <!-- Delete Button -->
                        <div class="add__photo__delete add__photo__delete-project">
                            <img class="delete_icon" src="{{ asset('style/imgs/delete_photo.svg') }}" alt="Delete">
                        </div>
                        <!-- Photo Container -->
                        <div style="background-image: url('{{ asset('./archi/public/uploads/projects/' . $project->main_image) }}')"
                            class="add__photo__element-image add_photo__project" id="add_photo_container">
                            <!-- Uploaded Image -->
                            <img class="uploaded_image" id="uploaded_image" src="{{ asset('style/imgs/Camera.svg') }}"
                                alt="Upload Photo">

                        </div>
                        <!-- File Input -->
                        <input  type="file" id="photo_input" name="main_photo" class="photo_input"
                            accept="image/*">
                    </div>
                    <div class="error-image" style="color: #d37171;">
                        <!-- Error message will be displayed here -->
                    </div>
                </div>



                @php
                    $additionalImages = json_decode($project->images, true); // Decode the JSON string to an array
                @endphp
                @for ($i = 0; $i < 4; $i++)
                    <div class="additional__photo__block">
                        @if ($i < count($additionalImages))
                            <div id="additional_photo_wrapper_{{ $i + 1 }}"
                                class="add__photo__element add__photo__element-small">
                                <!-- Delete Button -->
                                <div
                                    class="add__photo__delete add__photo__delete-project add__photo__delete-project-small">
                                    
                                <!--    <img class="delete_icon" src="{{ asset('style/imgs/delete_photo.svg') }}"
                                        alt="Delete"-->
                                </div>
                                <!-- Photo Container -->
                                <div style="background-image: url('{{ asset('./archi/public/uploads/projects/' . $additionalImages[$i]) }}')"
                                    class="add__photo__element-image add_photo__project-small"
                                    id="additional_photo_container_{{ $i + 1 }}">
                                    <!-- Uploaded Image -->
                                    <img class="uploaded_image" src="{{ asset('style/imgs/Camera.svg') }}"
                                        alt="Upload Photo">
                                </div>
                                <!-- File Input -->
                                <input type="file" id="photo_input_{{ $i + 1 }}"
                                    name="additional_photo_input[]" class="photo_input" accept="image/*">
                            </div>
                            <div class="error-image" style="color: #d37171;">
                                <!-- Error message will be displayed here -->
                            </div>
                        @else
                            <div id="additional_photo_wrapper_{{$i + 1}}" class="add__photo__element add__photo__element-small">
                                <!-- Delete Button -->
                                <div
                                    class="add__photo__delete add__photo__delete-project add__photo__delete-project-small">
                                    <img class="delete_icon" src="{{ asset('style/imgs/delete_photo.svg') }}"
                                        alt="Delete">
                                </div>
                                <!-- Photo Container -->
                                <div class="add__photo__element-image add_photo__project-small"
                                    id="additional_photo_container_{{$i + 1}}">
                                    <!-- Uploaded Image -->
                                    <img class="uploaded_image" id="uploaded_image_{{$i + 1}}"
                                        src="{{ asset('style/imgs/Camera.svg') }}" alt="Upload Photo">
                                    <!-- Default Image (Placeholder) -->
                                    <img class="default_image" src="{{ asset('style/imgs/Camera.svg') }}"
                                        alt="Placeholder">
                                </div>
                                <!-- File Input -->
                                <input type="file" id="photo_input_{{$i + 1}}" name="additional_photo_input[]"
                                    class="photo_input" accept="image/*">
                            </div>
                            <div class="error-image" style="color: #d37171;">
                                <!-- Error message will be displayed here -->
                            </div>
                        @endif
                    </div>
                @endfor
                
                <a href="{{route('admin.edit__additional__images' , ['id' => $project->id])}}" class="editing__additional__images">
                            Удаление дополнительных изображений 

                </a>

            </div>
            <!-- Project DATE AND LINK TO GOOGLE MAP -->
            <div class="section__add_name">

                <div class="section__add__date">
                    <div class="input__container">
                        <div class="input__container__desc">
                            Yaradılma tarixi
                        </div>
                        <div class="input__field">
                            <input type="number" id="project__year" name="project__year" value="{{ $project->year }}"
                                required>
                        </div>
                    </div>
                    <p style="display: none">Sahənin dəyəri rəqəmsal olmalıdır : 1234</p>
                </div>
                <div class="section__add__date">
                    <div class="input__container">
                        <div class="input__container__desc input__container__desc_ru">
                            Google maps linki
                        </div>
                        <div class="input__field">
                            <input type="text" id="project__location" name="project__location"
                                value="{{ $project->location }}"
                           
                                placeholder="Google maps da linki yazın zəhmət olmasa" >

                        </div>
                    </div>
                    <p style="display: none">Обязательное поле не заполнено</p>
                </div>
            </div>
            <!-- Project name -->
            <div class="section__add_name">

                <div class="section__add__date">
                    <div class="input__container">
                        <div class="input__container__desc">
                            Layihənin adı
                        </div>
                        <div class="input__field">
                            <input type="text" id="project_name_az" name="project_name_az"
                                value="{{ $project->name_az }}" required>
                        </div>
                    </div>
                    <p style="display: none">Tələb olunan sahə boşdur</p>
                </div>
                <div class="section__add__date">
                    <div class="input__container">
                        <div class="input__container__desc input__container__desc_ru">
                            Название проекта
                        </div>
                        <div class="input__field">
                            <input type="text" id="project_name_ru" name="project_name_ru"
                                value="{{ $project->name_ru }}" required>
                        </div>
                    </div>
                    <p style="display: none">Обязательное поле не заполнено</p>
                </div>
            </div>
            <!-- Project description -->
            <div class="section__add_desc">
                <div class="section__add_desc__block">
                    <div class="textarea_field">
                        <textarea name="desc_az" id="desc_az">
                            {{ $project->desc_az }}
                        </textarea>
                    </div>
                    <div class="textarea_desc">
                        Layihənin təsviri
                    </div>
                </div>
                <div class="section__add_desc__block">
                    <div class="textarea_field">
                        <textarea name="desc_ru" id="desc_ru">
                            {{ $project->desc_ru }}
                        </textarea>
                    </div>
                    <div class="textarea_desc">
                        Описание проекта
                    </div>
                </div>
            </div>


        </div>
    </form>
</section>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const addPhotoContainer = document.getElementById('add_photo_container');
        const uploadedImage = document.getElementById('uploaded_image');
        const defaultImage = document.querySelector('.default_image');
        const deleteButton = document.querySelector('.add__photo__delete');
        const fileInput = document.getElementById('photo_input');
        const errorImage = document.querySelector('.error-image');

        // Event listener for clicking on the photo container to trigger file input
        addPhotoContainer.addEventListener('click', function() {
            fileInput.click();
        });

        // Event listener for when a file is selected
        fileInput.addEventListener('change', function(event) {
            const file = event.target.files[0];
            if (file) {
                // Check if file size is greater than 2MB
                if (file.size > (2 * 1024 * 1024)) {
                    // Display error message
                    errorImage.textContent = "The image may not be greater than 2 megabytes";
                    return; // Stop further execution
                }

                const reader = new FileReader();
                reader.onload = function() {
                    uploadedImage.src = reader.result;
                    uploadedImage.style.display = 'block'; // Show uploaded image
                    defaultImage.style.display = 'none'; // Hide default image
                    errorImage.textContent = ""; // Clear error message
                };
                reader.readAsDataURL(file);
            }
        });

        // Event listener for clicking the delete button to remove the uploaded image
        deleteButton.addEventListener('click', function() {
            uploadedImage.src = ""; // Reset uploaded image
            uploadedImage.style.display = 'none'; // Hide uploaded image
            defaultImage.style.display = 'block'; // Show default image
            fileInput.value = null; // Clear the file input
            errorImage.textContent = ""; // Clear error message
        });
    });

    document.addEventListener('DOMContentLoaded', function() {
        // Function to handle file input change for additional photo blocks
        function handleFileInputChange(inputId, containerId, deleteButtonClass, errorClass) {
            const fileInput = document.getElementById(inputId);
            const photoContainer = document.getElementById(containerId);

            // Ensure photoContainer exists before proceeding
            if (!photoContainer) return;

            const errorContainer = photoContainer.querySelector(errorClass);
            const deleteButton = photoContainer.querySelector(deleteButtonClass);
            const uploadedImage = photoContainer.querySelector(
                '.uploaded_image'); // Local variable for uploaded image
            const defaultImage = photoContainer.querySelector('.default_image'); // Default image

            // Event listener for clicking on the photo container to trigger file input
            photoContainer.addEventListener('click', function() {
                fileInput.click();
            });

            // Event listener for when a file is selected
            fileInput.addEventListener('change', function(event) {
                const file = event.target.files[0];
                if (file) {
                    // Add the required attribute if a file is selected
                    fileInput.setAttribute('required', 'required');
                } else {
                    // Remove the required attribute if no file is selected
                    fileInput.removeAttribute('required');
                }
                if (file) {
                    // Check if file size is greater than 2MB
                    if (file.size > (2 * 1024 * 1024)) {
                        // Display error message if error container exists
                        if (errorContainer) {
                            errorContainer.textContent =
                                "The image may not be greater than 2 megabytes";
                        }
                        return; // Stop further execution
                    }

                    const reader = new FileReader();
                    reader.onload = function() {
                        uploadedImage.src = reader.result;
                        uploadedImage.style.display = 'block'; // Show uploaded image
                        uploadedImage.style.width = '100%'; // Set width to 100%
                        uploadedImage.style.height = '100%'; // Set height to 100%
                        // Hide default image
                        if (defaultImage) {
                            defaultImage.style.display = 'none';
                        }

                        // Clear error message if error container exists
                        if (errorContainer) {
                            errorContainer.textContent = "";
                        }
                    };
                    reader.readAsDataURL(file);
                }
            });

            // Event listener for clicking the delete button to remove the uploaded image
            deleteButton.addEventListener('click', function(event) {
                event.preventDefault();
                event.stopPropagation();

                // Reset uploaded image
                if (uploadedImage) {
                    uploadedImage.src = ""; // Clear the uploaded image
                    uploadedImage.style.display = 'none'; // Hide uploaded image
                }

                // Set the src attribute of the uploaded image to the default image source
                const defaultImageSrc = '{{ asset('style/imgs/Camera.svg') }}';
                if (uploadedImage) {
                    uploadedImage.src = defaultImageSrc;
                    uploadedImage.style.width = '100%'; // Set width to 100%
                    uploadedImage.style.height = '100%'; // Set height to 100%
                }

                // Show default image
                if (defaultImage) {
                    defaultImage.style.display = 'block';
                }

                // Clear error message if error container exists
                if (errorContainer) {
                    errorContainer.textContent = "";
                }

                // Reset file input value to allow re-uploading the same image
                fileInput.value = "";
            });
        }

        // Call handleFileInputChange function for each additional photo block
        handleFileInputChange('photo_input_1', 'additional_photo_wrapper_1', '.add__photo__delete',
            '.error-image');
        handleFileInputChange('photo_input_2', 'additional_photo_wrapper_2', '.add__photo__delete',
            '.error-image');
        handleFileInputChange('photo_input_3', 'additional_photo_wrapper_3', '.add__photo__delete',
            '.error-image');
        handleFileInputChange('photo_input_4', 'additional_photo_wrapper_4', '.add__photo__delete',
            '.error-image');
        // Repeat this for each additional photo block (3, 4, ...)
    });
</script>

