<!-- HTML -->
<!-- Admin sections -->
<style>
    .add__photo__element {
        width: 550px;;
    }
    .add__photo__element-image{
        width: 500px;
    }
</style>

<section class="admin__panel__content-section">
    <form action="{{ route('admin.add_slider') }}" method="POST" enctype="multipart/form-data">
        @csrf
        <div class="section__name__elements">
            <div class="section__name__name section__name__name_link">
                <a href="{{ route('admin.slider') }}">
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
                <button type="submit">Slider yadda saxla və dərc et</button>
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
                        <img class="uploaded_image" id="uploaded_image" src="{{ asset('style/imgs/Camera.svg') }}"
                            alt="Upload Photo">
                        <!-- Default Image (Placeholder) -->
                        <img class="default_image" src="{{ asset('style/imgs/Camera.svg') }}" alt="Placeholder">
                    </div>
                    <!-- File Input -->
                    <input type="file" id="photo_input" name="photo_input" class="photo_input" accept="image/*">
                </div>                 
                <div class="error-image" style="color: #d37171;">
                    <!-- Error message will be displayed here -->
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