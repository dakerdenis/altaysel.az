<!-- HTML -->
<!-- Admin sections -->
<section class="admin__panel__content-section">
    <form action="{{ route('admin.edit_service_form', ['id' => $service->id]) }}" method="POST" enctype="multipart/form-data">
        
        @csrf
        @method('PUT') <!-- Use PUT method for updating the service -->

        <div class="section__name__elements">
            <!-- Previous page link -->
            <div class="section__name__name section__name__name_link">
                <a href="{{ route('admin.services') }}">
                    <img src="{{ asset('style/imgs/go_back.svg') }}" alt="">
                    <p>Əvvəlki səhifəyə qayıt</p>
                </a>
            </div>
            <!-- Success message -->
            @if (session('success'))
                <div class="alert alert-success">
                    {{ session('success') }}
                </div>
            @endif

            <!-- Submit button -->
            <div class="section__add__project">
                <button type="submit">Xidməti yadda saxla və dərc et</button>
            </div>
        </div>

        <div class="section__add__wrapper">
            <!-- Add Photo -->
            <div class="section__add__photos">
                <div id="add_photo_wrapper" class="add__photo__element">
                    <!-- Delete Button -->
                    <div class="add__photo__delete">
                        <img class="delete_icon" src="{{ asset('style/imgs/delete_photo.svg') }}" alt="Delete">
                    </div>
                    <!-- Photo Container -->
                    <div class="add__photo__element-image" id="add_photo_container">
                        <!-- Uploaded Image -->
                        <img class="uploaded_image" id="uploaded_image"
                            src="{{ $service->image ? asset('uploads/' . $service->image) : asset('style/imgs/Camera.svg') }}"
                            alt="Upload Photo">
                        <!-- Default Image (Placeholder) -->
                        <img class="default_image"
                            src="{{ $service->image ? asset('uploads/' . $service->image) : asset('style/imgs/Camera.svg') }}"
                            alt="Placeholder"
                            style="width: 100%; height: 100%; object-fit: cover;">
                    </div>

                    <!-- File Input -->
                    <input type="file" id="photo_input" name="photo_input" class="photo_input" accept="image/*">
                </div>

            </div>

            <!-- Project name -->
            <div class="section__add_name">
                <!-- AZ Name -->
                <div class="section__add__date">
                    <div class="input__container">
                        <div class="input__container__desc">
                            Xidmətin adı
                        </div>
                        <div class="input__field">
                            <input type="text" id="service_name_az" value="{{ $service->service_name_az }}"
                                name="service_name_az" placeholder="Zəhmət olmasa adını göstərin*" required>
                        </div>
                    </div>
                    <p>Tələb olunan sahə boşdur</p>
                </div>
                <!-- RU Name -->
                <div class="section__add__date">
                    <div class="input__container">
                        <div class="input__container__desc input__container__desc_ru">
                            Название сервиса
                        </div>
                        <div class="input__field">
                            <input type="text" id="service_name_ru" name="service_name_ru"
                                value="{{ $service->service_name_ru }}"
                                placeholder="Пожалуйста, укажите название сервиса*" required>
                        </div>
                    </div>
                    <p>Обязательное поле не заполнено</p>
                </div>
            </div>
            <!-- Project description -->
            <div class="section__add_desc">
                <!-- Description AZ -->
                <div class="section__add_desc__block">
                    <div class="textarea_field">
                        <textarea name="desc_az" id="desc_az">{{ $service->desc_az }}</textarea>
                    </div>
                    <div class="textarea_desc">
                        Xidmətin təsviri
                    </div>
                </div>
                <!-- Description RU -->
                <div class="section__add_desc__block">
                    <div class="textarea_field">
                        <textarea name="desc_ru" id="desc_ru">{{ $service->desc_ru }}</textarea>
                    </div>
                    <div class="textarea_desc">
                        Описание сервиса
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

        // Event listener for clicking on the photo container to trigger file input
        addPhotoContainer.addEventListener('click', function() {
            fileInput.click();
        });

        // Event listener for when a file is selected
        fileInput.addEventListener('change', function(event) {
            const file = event.target.files[0];
            if (file) {
                const reader = new FileReader();
                reader.onload = function() {
                    uploadedImage.src = reader.result;
                    uploadedImage.style.display = 'block'; // Show uploaded image
                    defaultImage.style.display = 'none'; // Hide default image
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
        });
    });
</script>
