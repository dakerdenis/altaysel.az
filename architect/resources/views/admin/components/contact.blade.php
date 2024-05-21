<!-- Admin sections -->
<section class="admin__panel__content-section">
    <form action="{{ route('admin.update_contact') }}" method="POST">
        @csrf
        <div class="section__name__elements">
            <div class="section__name__name">
                Əlaqə məlumatları
            </div>
            @if (session('success'))
                <div class="alert alert-success">
                    {{ session('success') }}
                </div>
            @endif

            <div class="section__add__project">
                <button type="submit">Dəyişikləri yadda saxla və dərc et</button>
            </div>
        </div>

        <div class="section__contact__wrapper">
            @foreach ([
                'number_1' => 'Əlaqə nömrəsi 1',
                'number_2' => 'Əlaqə nömrəsi 2',
                'email' => 'E-poçt ünvanı',
                'linkdin' => 'Linkedİn keçidi',
                'facebook' => 'Facebook keçidi',
                'instagram' => 'İnstagram keçidi',
                'telegram' => 'Telegram keçidi',
                'behance' => 'Behance keçidi',
                'pinterest' => 'Pinterest keçidi'
            ] as $field => $placeholder)
                <div class="contact__element__block">
                    <div class="contact__element__image">
                        <img src="../style/imgs/{{ $field }}_contact.svg" alt="">
                    </div>
                    <div class="contact__element__input">
                        <div class="contact__element__input-input">
                            <input type="text" name="{{ $field }}" value="{{ old($field, $contact->$field ?? '') }}" placeholder="Zəhmət olmasa {{ strtolower($placeholder) }} göstərin*">
                        </div>
                        <div class="contact__element__placeholder">
                            {{ $placeholder }}
                        </div>
                    </div>
                    <div class="contact__element__desc">
                        Tələb olunan sahə boşdur
                    </div>
                </div>
            @endforeach
        </div>
    </form>
</section>
