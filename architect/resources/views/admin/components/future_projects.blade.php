<style>
    /* Modal Styles */
    .modal {
        display: none;
        position: fixed;
        z-index: 1;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.5);

        align-items: center;
        justify-content: center;
        /* Black with opacity */
    }

    .modal-content {
        background-color: #fff;
        width: 434px;
        height: 311px;
        border-radius: 20px;
        padding: 30px 30px 42px 30px;
        display: flex;
        align-items: center;
        flex-direction: column;
        justify-content: space-between;
        position: relative;
        text-align: center
    }

    .modal-buttons button {
        margin: 10px;
        padding: 10px 20px;
        cursor: pointer;
    }



    .modal-buttons button:focus {
        outline: none;
    }

    .deleteNo {
        position: absolute;
        top: 20px;
        right: 20px;
        background-color: rgba(0, 0, 0, 0);
    }

    .modal-content__name {

        font-size: 18px;
        font-weight: 700;
        line-height: 21.78px;
        text-align: center;
        color: #FFAC1C;

    }

    .modal-content__desc1 {
        width: 311px;
        color: #323232;
        font-weight: 500;
        font-size: 16px;
        line-height: 20px;
    }

    .modal-content__desc2 {
        width: 311px;
        color: #323232;
        font-weight: 500;
        font-size: 16px;
        line-height: 20px;
    }

    /* Hide close button on small screens */
    @media screen and (max-width: 700px) {
        .modal-content {
            margin: 10% auto;
        }
    }

    .yes_button {
        background-color: rgba(0, 0, 0, 0);
        width: 280px;
        height: 48px;
        background-color: #FFAC1C;
        display: flex;
        align-items: center;
        justify-content: center;
        border-radius: 50px;
        border: 2px solid #FFAC1C;

        color: #fff;
        font-size: 17px;
        font-weight: 700;
        line-height: 20.57px;
        text-align: center;

    }

    .yes_button:hover {
        color: #FFAC1C;
        background-color: #fff;
        border: 2px solid #FFAC1C;
    }
</style>
<!---Admin sections--->
<section class="admin__panel__content-section">
    <div class="section__name__elements">
        <div class="section__name__name">
            Xəbərlər
        </div>
        @if (session('success'))
        <div style="color: rgb(11, 121, 11); font-weight: 600; font-size: 20px;" class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif

        <div class="section__element__search_add">

            <a href="{{ route('admin.main', ['content' => 'new_future_project'])}}" class="section__element__add">
                <img src="{{ asset('style/imgs/add_project_icon.svg') }}" alt="">
                <p>Yenisini əlavə et </p>
            </a>
        </div>

    </div>

    <div class="section__content__wrapper">
        @foreach ($future_projects as $project)
                               <!------->
        <div class="project__element">
            <div class="project__element__wrapper">
                <div class="project__element__image">

                    <img src="{{ asset('uploads/projects/' . $project->main_image) }}" alt="">
                </div>

                <div class="project__element__name__edit">
                    <div class="project__element__name">
                        {{$project->name_az}}
                    </div>
                    <div class="project__element__edit">
                        <a href="{{ route('admin.edit_future_projects', ['id' => $project->id]) }}">
                            <img src="{{ asset('style/imgs/edit_project.svg') }}" alt="">
                        </a>
                        
                        <button type="button" class="delete-button" id="popup_open"
                        data-service-id="{{ $project->id }}">
                        <img src="{{ asset('style/imgs/delete_project.svg') }}" alt="">
                    </button>
                    </div>
                </div>
                <div class="project__element__date">
                    Yaradılma ili - {{$project->year}}
                </div>
                <div class="project__element__desc">
                    <p> {{$project->desc_az}}</p>
                </div>
            </div>
        </div>


        <div id="deleteConfirmationModal{{ $project->id }}" class="modal">
            <div class="modal-content">
                <p class="modal-content__name">Layihənin silinməsinin təsdiqi</p>
                <p class="modal-content__desc1">Bu layihəni veb saytınızdan silmək istədiyinizə əminsiniz?</p>
                <p class="modal-content__desc2">Bu əməliyyat geri qaytarıla bilməz!</p>
                <div class="modal-buttons">
                    <form action="{{ route('admin.delete_future_project', $project->id) }}" method="POST">
                        @csrf
                        @method('DELETE')
                        <button class="yes_button" type="submit">Bəli, əminəm</button>
                    </form>
                </div>
                <button class="deleteNo">
                    <img src="{{ asset('style/imgs/close_popup_delete.svg') }}" alt="">
                </button>
            </div>
        </div>
        <!-------> 
        @endforeach


    </div>

</section>
<script>
    var deleteButtons = document.querySelectorAll('.delete-button');

    deleteButtons.forEach(function(button) {
        button.addEventListener('click', function() {
            var serviceId = button.getAttribute('data-service-id');
            var modal = document.getElementById('deleteConfirmationModal' + serviceId);
            if (modal) {
                modal.style.display = 'flex';
            } else {
                console.error('Modal not found');
            }
        });
    });

    var deleteNoButtons = document.querySelectorAll('.deleteNo');

    deleteNoButtons.forEach(function(button) {
        button.addEventListener('click', function() {
            var modal = button.closest('.modal');
            if (modal) {
                modal.style.display = 'none';
            } else {
                console.error('Modal not found');
            }
        });
    });
</script>