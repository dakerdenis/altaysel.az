<!-- HTML -->
<!-- Admin sections -->
<section class="admin__panel__content-section">
    <form action="{{ route('admin.add_future_projects') }}" method="POST" enctype="multipart/form-data">
        @csrf
        <div class="section__name__elements">
            <div class="section__name__name section__name__name_link">
                <a href="{{ route('admin.future_projects') }}">
                    <img src="{{ asset('style/imgs/go_back.svg') }}" alt="">
                    <p>Əvvəlki səhifəyə qayıt</p>
                </a>
            </div>
            @if (session('success'))
                <div class="alert alert-success">
                    {{ session('success') }}
                </div>
            @endif

            <div class="section__add__project">
                <button type="submit">Xəbəri yadda saxla və dərc et</button>
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
                        <div class="add__photo__element-image add_photo__project" id="add_photo_container">
                            <!-- Uploaded Image -->
                            <img class="uploaded_image" id="uploaded_image" src="{{ asset('style/imgs/Camera.svg') }}"
                                alt="Upload Photo">
                            <!-- Default Image (Placeholder) -->
                            <img class="default_image" src="{{ asset('style/imgs/Camera.svg') }}" alt="Placeholder">
                        </div>
                        <!-- File Input -->
                        <input required type="file" id="photo_input" name="main_photo" class="photo_input"
                            accept="image/*">
                    </div>
                    <div class="error-image" style="color: #d37171;">
                        <!-- Error message will be displayed here -->
                    </div>
                </div>

                <div class="additional__photo__block">
                    <div id="additional_photo_wrapper_1" class="add__photo__element add__photo__element-small">
                        <!-- Delete Button -->
                        <div class="add__photo__delete add__photo__delete-project add__photo__delete-project-small">
                            <img class="delete_icon" src="{{ asset('style/imgs/delete_photo.svg') }}" alt="Delete">
                        </div>
                        <!-- Photo Container -->
                        <div class="add__photo__element-image add_photo__project-small"
                            id="additional_photo_container_1">
                            <!-- Uploaded Image -->
                            <img class="uploaded_image" id="uploaded_image_1" src="{{ asset('style/imgs/Camera.svg') }}"
                                alt="Upload Photo">
                            <!-- Default Image (Placeholder) -->
                            <img class="default_image" src="{{ asset('style/imgs/Camera.svg') }}" alt="Placeholder">
                        </div>
                        <!-- File Input -->
                        <input type="file" id="photo_input_1" name="additional_photo_input[]" class="photo_input"
                            accept="image/*">
                    </div>
                    <div class="error-image" style="color: #d37171;">
                        <!-- Error message will be displayed here -->
                    </div>
                </div>

                <div class="additional__photo__block">
                    <div id="additional_photo_wrapper_2" class="add__photo__element add__photo__element-small">
                        <!-- Delete Button -->
                        <div class="add__photo__delete add__photo__delete-project add__photo__delete-project-small">
                            <img class="delete_icon" src="{{ asset('style/imgs/delete_photo.svg') }}" alt="Delete">
                        </div>
                        <!-- Photo Container -->
                        <div class="add__photo__element-image add_photo__project-small"
                            id="additional_photo_container_2">
                            <!-- Uploaded Image -->
                            <img class="uploaded_image" id="uploaded_image_2"
                                src="{{ asset('style/imgs/Camera.svg') }}" alt="Upload Photo">
                            <!-- Default Image (Placeholder) -->
                            <img class="default_image" src="{{ asset('style/imgs/Camera.svg') }}" alt="Placeholder">
                        </div>
                        <!-- File Input -->
                        <input type="file" id="photo_input_2" name="additional_photo_input[]" class="photo_input"
                            accept="image/*">
                    </div>
                    <div class="error-image" style="color: #d37171;">
                        <!-- Error message will be displayed here -->
                    </div>
                </div>
                <div class="additional__photo__block">
                    <div id="additional_photo_wrapper_3" class="add__photo__element add__photo__element-small">
                        <!-- Delete Button -->
                        <div class="add__photo__delete add__photo__delete-project add__photo__delete-project-small">
                            <img class="delete_icon" src="{{ asset('style/imgs/delete_photo.svg') }}" alt="Delete">
                        </div>
                        <!-- Photo Container -->
                        <div class="add__photo__element-image add_photo__project-small"
                            id="additional_photo_container_3">
                            <!-- Uploaded Image -->
                            <img class="uploaded_image" id="uploaded_image_3"
                                src="{{ asset('style/imgs/Camera.svg') }}" alt="Upload Photo">
                            <!-- Default Image (Placeholder) -->
                            <img class="default_image" src="{{ asset('style/imgs/Camera.svg') }}" alt="Placeholder">
                        </div>
                        <!-- File Input -->
                        <input type="file" id="photo_input_3" name="additional_photo_input[]" class="photo_input"
                            accept="image/*">
                    </div>
                    <div class="error-image" style="color: #d37171;">
                        <!-- Error message will be displayed here -->
                    </div>
                </div>

                <div class="additional__photo__block">
                    <div id="additional_photo_wrapper_4" class="add__photo__element add__photo__element-small">
                        <!-- Delete Button -->
                        <div class="add__photo__delete add__photo__delete-project add__photo__delete-project-small">
                            <img class="delete_icon" src="{{ asset('style/imgs/delete_photo.svg') }}"
                                alt="Delete">
                        </div>
                        <!-- Photo Container -->
                        <div class="add__photo__element-image add_photo__project-small"
                            id="additional_photo_container_4">
                            <!-- Uploaded Image -->
                            <img class="uploaded_image" id="uploaded_image_4"
                                src="{{ asset('style/imgs/Camera.svg') }}" alt="Upload Photo">
                            <!-- Default Image (Placeholder) -->
                            <img class="default_image" src="{{ asset('style/imgs/Camera.svg') }}" alt="Placeholder">
                        </div>
                        <!-- File Input -->
                        <input type="file" id="photo_input_4" name="additional_photo_input[]" class="photo_input"
                            accept="image/*">
                    </div>
                    <div class="error-image" style="color: #d37171;">
                        <!-- Error message will be displayed here -->
                    </div>
                </div>
            </div>
            <!-- Project DATE AND LINK TO GOOGLE MAP -->
            <div class="section__add_name">

                <div class="section__add__date">
                    <div class="input__container">
                        <div class="input__container__desc">
                            Xəbəri tarixi
                        </div>
                        <div class="input__field">
                            <input type="number" id="project__year" name="project__year"
                                placeholder="Zəhmət olmasa Xəbərin yaradılma ili göstərin*" required>
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
                                placeholder="Google maps'da linki yazın zəhmət olmasa">
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
                            Xəbərin adı
                        </div>
                        <div class="input__field">
                            <input type="text" id="project_name_az" name="project_name_az"
                                placeholder="Zəhmət olmasa adını göstərin*" required>
                        </div>
                    </div>
                    <p style="display: none">Tələb olunan sahə boşdur</p>
                </div>
                <div class="section__add__date">
                    <div class="input__container">
                        <div class="input__container__desc input__container__desc_ru">
                            Название новости
                        </div>
                        <div class="input__field">
                            <input type="text" id="project_name_ru" name="project_name_ru"
                                placeholder="Пожалуйста, укажите название новости*" required>
                        </div>
                    </div>
                    <p style="display: none">Обязательное поле не заполнено</p>
                </div>
            </div>
            <!-- Project description -->
            <div class="section__add_desc">
                <div class="section__add_desc__block">
                    <div class="textarea_field">
                        <textarea name="desc_az" id="desc_az"></textarea>
                    </div>
                    <div class="textarea_desc">
                        Xəbərin təsviri
                    </div>
                </div>
                <div class="section__add_desc__block">
                    <div class="textarea_field">
                        <textarea name="desc_ru" id="desc_ru"></textarea>
                    </div>
                    <div class="textarea_desc">
                        Описание новости
                    </div>
                </div>
            </div>

            <br> <br>
            <!---Project video URL---->
            <div class="section__add__youtube__link">
                <div class="input__container">
                    <div class="input__container__desc">
                        YouTube Link
                    </div>
                    <div class="input__field">
                        <input type="text" id="project__video_link" name="project__video_link"
                            placeholder="YouTube Link" >
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
</script>
<script>
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
                //  if (file) {
                //      // Add the required attribute if a file is selected
                //      fileInput.setAttribute('required', 'required');
                //  } else {
                //      // Remove the required attribute if no file is selected
                //      fileInput.removeAttribute('required');
                //  }   
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
