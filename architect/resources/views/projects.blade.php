<!DOCTYPE html>
<html lang="{{ $locale }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alt.Ay.Sel</title>
    <meta name="description" content="Brief description of your website">
    <meta name="keywords" content="keywords, related, to, your, content">


    <link rel="stylesheet" href="{{ asset('style/style.css') }}">
    <link rel="stylesheet" href="{{ asset('style/projects.css') }}">


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <!---LINK FOR STYLES IF RUSSIAN LANGUAGE---->
    @if ($locale === 'ru')
        <link rel="stylesheet" href="{{ asset('style/ru_style.css') }}">
    @endif

</head>

<body id="background_change">

    <div id="background_change" class="main__wrapper">
        @include('components.header_pr');
        <!--? ---MAIN BLOCK------->
        <div class="main__block" id="background_change_main">

            <!--* container for all----->
            <div class="main__block__container">
                <!--* block with slider----->
                <div class="main__block__slider">
                    <!-- Swiper -->
                    <div class="swiper mySwiper">
                        <div class="swiper-wrapper">



                        </div>
                        <div class="swiper-pagination"></div>
                    </div>
                </div>
                <!--* block with THEME CHANGER----->
                <div class="main__block__theme-changer">
                    <div class="__theme-surface">
                        <div class="__theme-surface__circle"></div>
                        <div class="__theme-surface__sun">
                            <img src="" alt="">
                        </div>
                        <div class="__theme-surface__moon">
                            <img src="" alt="">
                        </div>
                        <div class="__theme-surface__sun"></div>
                    </div>
                </div>
                <!--* block with MAIN NAME ----->
                <div class="main__block__name">
                    <div class="main__block__name-container">
                        <div class="__name-link__main-name">
                            Alt<span>.</span>Ay<span>.</span>Sel
                        </div>
                        <div class="__name-link__main-desc">

                            {{ $locale === 'az' ? 'Reklam tikinti şirkəti' : 'Рекламно строительное бюро' }}
                        </div>
                        <div class="__name-link__main-info">

                            {{ $locale === 'az' ? 'Hər çətin asan olur, amma çətin asan olur.' : 'Любая трудность становится легкой, но сложное становится легким' }}
                        </div>
                        <div class="__name-link__main-co">
                            co
                        </div>
                    </div>
                </div>

                <!--*  LINK -> contact------>
                <div class="main__block__link header__navigation__container">
                    <button data-target="#contactBlock">
                        {{ $locale === 'az' ? 'Bizimlə əlaqə' : 'Связь с нами' }}
                    </button>
                </div>

                <!--* block with MAIN SERVICES * 3 tiles----->
                <div class="main__block__services header__navigation__container">
                    <div class="main__block__services__container">

                        <div id="background_change_main_services" class="main__block__services-element">
                            <div class="__services-element__container">
                                <div id="color_change" class="__services-element__type">
                                    {{ $locale === 'az' ? 'Tikinti Insaat' : 'Строительное И Ландшафтное ' }}
                                </div>
                                <div id="color_change" class="__services-element__name">

                                    {{ $locale === 'az' ? 'LAYİHƏLƏNDİRMƏ' : 'ПРОЕКТИРОВАНИЕ ' }}
                                </div>
                                <div class="__services-element__link">
                                    <button data-target="#servicesBlock">
                                        <img src="" alt="">
                                        <p id="color_change">
                                            {{ $locale === 'az' ? 'ƏTRAFLI MƏLUMAT' : 'БОЛЬШЕ ИНФОРМАЦИИ ' }}
                                        </p>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div id="background_change_main_services" class="main__block__services-element">
                            <div class="__services-element__container">
                                <div id="color_change" class="__services-element__type">
                                    {{ $locale === 'az' ? 'İnteryer və eksteryer' : 'Интерьер и экстерьер' }}
                                </div>
                                <div id="color_change" class="__services-element__name">
                                    {{ $locale === 'az' ? 'DİZAYN' : 'ДИЗАЙН' }}
                                </div>
                                <div class="__services-element__link">
                                    <button data-target="#servicesBlock">
                                        <img src="" alt="">
                                        <p id="color_change">
                                            {{ $locale === 'az' ? 'ƏTRAFLI MƏLUMAT' : 'БОЛЬШЕ ИНФОРМАЦИИ ' }}
                                        </p>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div id="background_change_main_services" class="main__block__services-element">
                            <div class="__services-element__container">
                                <div id="color_change" class="__services-element__type">
                                    {{ $locale === 'az' ? 'Memarlıq və interyer dizayn' : 'Архитектура и интерьерный дизайн' }}
                                </div>
                                <div id="color_change" class="__services-element__name">
                                    {{ $locale === 'az' ? 'TƏDRİS MƏRKƏZİ' : 'ОБРАЗОВАНИЯ' }}
                                </div>
                                <div class="__services-element__link">
                                    <button data-target="#servicesBlock">
                                        <img src="" alt="">
                                        <p id="color_change">
                                            {{ $locale === 'az' ? 'ƏTRAFLI MƏLUMAT' : 'БОЛЬШЕ ИНФОРМАЦИИ ' }}
                                        </p>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>


        <!--? ---PROJECTS------->
        <div class="projects__block" id="projectsBlock">
            <div class="projects__desc-block">
                <div class="projects__block-name">
                    <div class="projects__block-name_name">
                        Layihələrimiz
                    </div>
                    <div class="projects__block-name_line">

                    </div>
                    <div class="projects__block-name_desc">
                        Portfel
                    </div>
                </div>

                <div class="projects__timeframe">
                    <?php
                    $years = [1960, 1970, 1980, 1990, 2000, 2010, 2020, '2020+'];
                    ?>
                    <div class="projects__timeframe__numbers">
                        <div class="projects__timeframe__numbers-lines">
                            <a
                                href="{{ route('projects_year', ['locale' => $locale === 'az' ? 'az' : 'ru', ($year = 1960)]) }}">
                                <div class="timeframe_year">1960</div>
                                <div class="timeframe__line"></div>
                            </a>
                        </div>
                        <div class="projects__timeframe__numbers-lines">
                            <a href="{{ route('projects_year', ['locale' => $locale === 'az' ? 'az' : 'ru', ($year = 1970)]) }}">
                                <div class="timeframe_year">1970</div>
                                <div class="timeframe__line"></div>
                            </a>
                        </div>
                        <div class="projects__timeframe__numbers-lines">
                            <a href="{{ route('projects_year', ['locale' => $locale === 'az' ? 'az' : 'ru', ($year = 1980)]) }}">
                                <div class="timeframe_year">1980</div>
                                <div class="timeframe__line"></div>
                            </a>
                        </div>
                        <div class="projects__timeframe__numbers-lines">
                            <a href="{{ route('projects_year', ['locale' => $locale === 'az' ? 'az' : 'ru', ($year = 1990)]) }}">
                                <div class="timeframe_year">1990</div>
                                <div class="timeframe__line"></div>
                            </a>
                        </div>
                        <div class="projects__timeframe__numbers-lines">
                            <a href="{{ route('projects_year', ['locale' => $locale === 'az' ? 'az' : 'ru', ($year = 2000)]) }}">
                                <div class="timeframe_year">2000</div>
                                <div class="timeframe__line"></div>
                            </a>
                        </div>
                        <div class="projects__timeframe__numbers-lines">
                            <a href="{{ route('projects_year', ['locale' => $locale === 'az' ? 'az' : 'ru', ($year = 2010)]) }}">
                                <div class="timeframe_year">2010</div>
                                <div class="timeframe__line"></div>
                            </a>
                        </div>
                        <div class="projects__timeframe__numbers-lines">
                            <a href="{{ route('projects_year', ['locale' => $locale === 'az' ? 'az' : 'ru', ($year = 2020)]) }}">
                                <div class="timeframe_year">2020</div>
                                <div class="timeframe__line"></div>
                            </a>
                        </div>

                    </div>
                    <div class="projects__timeframe__scale">
                        <div class="projects__time-line">
                            <div class="projects__time-line-orange"></div>
                        </div>
                        <div class="projects__timeframe-circle">
                            <div class="projects__timeframe-circle_white">
                                <div class="projects__timeframe-circle-small"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="projects__block-wrapper">

                @foreach ($all_projects as $index => $main_project)
                    <div class="projects__block-element">
                        <div class="projects__block-element-image">
                            <img src="{{ asset('uploads/projects/' . $main_project->main_image) }}" alt="">
                        </div>

                        <div class="projects__block-element-hover">
                            <div class="projects__block-hover__name">
                                {{ $locale === 'az' ? $main_project->name_az : $main_project->name_ru }}
                            </div>

                            <div class="projects__block-hover__popup" data-project-id="{{ $main_project->id }}">
                                <img src="{{ asset('style/imgs/project_popup.svg') }} " alt="">
                                <p>{{ $locale === 'az' ? 'ƏTRAFLI MƏLUMAT' : 'ДЕТАЛЬНАЯ ИНФОРМАЦИЯ' }}</p>
                            </div>
                        </div>
                    </div>
                @endforeach



            </div>


            <!-- Popup Overlay -->
            <div class="popup__overlay" id="popup_overlay">
                <div class="popup__content" id="popup_content">
                    <div class="popup__name__close">
                        <div class="popup__name" id="popup_name"></div>
                        <button class="popup__close" id="popup_close">
                            <img src="{{ asset('style/imgs/close_popup.svg') }}" alt="">
                        </button>
                    </div>
                    <div class="popup__container">
                        <div class="popup__container__image">
                            <button id="prev_button">
                                <img src="{{ asset('style/imgs/prev.svg') }}" alt="">
                            </button>
                            <button id="next_button">
                                <img src="{{ asset('style/imgs/prev.svg') }}" alt="">
                            </button>
                            <div class="popup__container__image-img">
                                <img class="popup__container__image-img" id="popup_image" src=""
                                    alt="">
                            </div>
                        </div>
                        <div class="popup__container__description">
                            <div class="popup__address__block">
                                <p>{{ $locale === 'az' ? 'Layihənin' : 'ДЕТАЛЬНАЯ ИНФОРМАЦИЯ' }}</p>
                                <div class="popup__adress" id="popup__adress"></div>
                            </div>

                            <div class="popup__year" id="popup_year"></div>
                            <div class="popup__location">
                                <a id="popup_location" href="" target="_blank">View Location</a>
                            </div>
                            <div class="popup__description" id="popup_description"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>




        @include('components.footer_pr');


    </div>


    <script src="{{ asset('js/projects.js') }}"></script>
</body>

</html>
