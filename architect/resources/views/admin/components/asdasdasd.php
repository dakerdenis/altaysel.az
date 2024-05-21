            <!-- Project DATE AND LINK TO GOOGLE MAP -->
            <div class="section__add_name">

                <div class="section__add__date">
                    <div class="input__container">
                        <div class="input__container__desc">
                            Yaradılma tarixi
                        </div>
                        <div class="input__field">
                            <input type="number" id="project__year" name="project__year"
                                placeholder="Zəhmət olmasa layənin yaradılma ili göstərin*" required>
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
                            Layihənin adı
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
                            Название проекта
                        </div>
                        <div class="input__field">
                            <input type="text" id="project_name_ru" name="project_name_ru"
                                placeholder="Пожалуйста, укажите название проекта*" required>
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
                        Layihənin təsviri
                    </div>
                </div>
                <div class="section__add_desc__block">
                    <div class="textarea_field">
                        <textarea name="desc_ru" id="desc_ru"></textarea>
                    </div>
                    <div class="textarea_desc">
                        Описание проекта
                    </div>
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
                        <input required type="file" id="photo_input_2" name="additional_photo_input[]"
                            class="photo_input" accept="image/*">
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
                        <input required type="file" id="photo_input_3" name="additional_photo_input[]"
                            class="photo_input" accept="image/*">
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
                        <input required type="file" id="photo_input_4" name="additional_photo_input[]"
                            class="photo_input" accept="image/*">
                    </div>
                    <div class="error-image" style="color: #d37171;">
                        <!-- Error message will be displayed here -->
                    </div>
                </div>








            handleFileInputChange('photo_input_2', 'additional_photo_wrapper_2', '.add__photo__delete',
            '.error-image');
        handleFileInputChange('photo_input_3', 'additional_photo_wrapper_3', '.add__photo__delete',
            '.error-image');
        handleFileInputChange('photo_input_4', 'additional_photo_wrapper_4', '.add__photo__delete',
            '.error-image');