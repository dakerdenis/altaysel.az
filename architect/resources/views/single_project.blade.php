<!DOCTYPE html>
<html lang="{{ $locale }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alt.Ay.Sel</title>

    <!-- Meta tags for Open Graph -->
    <meta property="og:title" content="{{ $locale === 'az' ? $project->name_az : $project->name_ru }}" />
    <meta property="og:description" content="{{ $locale === 'az' ? $project->desc_az : $project->desc_ru }}" />
    <meta property="og:url" content="{{ request()->fullUrl() }}" />
    <meta property="og:type" content="website" />
    
    @if($project->main_image)
        <meta property="og:image" content="{{ asset('archi/public/uploads/projects/' . $project->main_image) }}" />
    @else
        <!-- Fallback image if no project image is available -->
        <meta property="og:image" content="{{ asset('path/to/fallback-image.jpg') }}" />
    @endif

    <!-- Twitter Card tags for sharing on Twitter -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="{{ $locale === 'az' ? $project->name_az : $project->name_ru }}">
    <meta name="twitter:description" content="{{ $locale === 'az' ? $project->desc_az : $project->desc_ru }}">
    <meta name="twitter:image" content="{{ $project->main_image ? asset('archi/public/uploads/projects/' . $project->main_image) : asset('path/to/fallback-image.jpg') }}">

    <!-- Other meta tags -->
    <meta name="description" content="{{ $locale === 'az' ? $project->name_az : $project->name_ru }}">
    <meta name="keywords" content="{{ $locale === 'az' ? $project->name_az : $project->name_ru }}">

    <!-- Stylesheets -->
    <link rel="stylesheet" href="{{ asset('style/style.css') }}">
    <link rel="stylesheet" href="{{ asset('style/projects.css') }}">
    <link rel="stylesheet" href="{{ asset('style/single.css') }}">

    <!-- Link Swiper's CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/ui/dist/fancybox.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <!---LINK FOR STYLES IF RUSSIAN LANGUAGE---->
    @if ($locale === 'ru')
        <link rel="stylesheet" href="{{ asset('style/ru_style.css') }}">
    @endif

</head>

<body id="background_change">

    <div id="background_change" class="main__wrapper">
        @include('components.header_pr')
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
                        {{ $locale === 'az' ? $project->name_az : $project->name_ru }}
                    </div>

                    <div class="project-single__back">
                        <a href="{{route('projects_year',['locale' => $locale === 'az' ? 'az' : 'ru', 'year'=>$year])}}">
                            {{ $locale === 'az' ? 'Əvvəlki Səhifə' : 'Назад' }} 
                        </a>
                    </div>
                </div>
            </div>

            <div class="projects__block-wrapper">
                <div class="gallery__photos__wrapper">
                    @if($project->main_image)
                        <a href="{{ asset('archi/public/uploads/projects/' . $project->main_image) }}" data-fancybox="gallery" data-caption="{{ $locale === 'az' ? $project->name_az : $project->name_ru }}">
                            <img src="{{ asset('archi/public/uploads/projects/' . $project->main_image) }}" alt="Main Image" />
                        </a>
                    @endif
        
                    @if($project->images)
                        @foreach(json_decode($project->images) as $image)
                            <a href="{{ asset('archi/public/uploads/projects/' . $image) }}" data-fancybox="gallery" data-caption="{{ $locale === 'az' ? $project->name_az : $project->name_ru }}">
                                <img src="{{ asset('archi/public/uploads/projects/' . $image) }}" alt="Gallery Image" />
                            </a>
                        @endforeach
                    @endif
                </div>


                <div class="single__project__info">
                    <div class="single__project__year">
                        <p>{{ $locale === 'az' ? 'Yaradılma tarixi:' : 'Год постройки:' }}</p>
                        <p>{{$project->year}}</p>
                    </div>
                    <div class="single__project__google">
                        <a target="_blank" href="{{$project->location}}">
                            {{ $locale === 'az' ? 'Google Maps-da baxmaq' : 'Смотреть на Google-картах' }}
                        </a>
                    </div>
                    <div class="single__project__description">
                        {{ $locale === 'az' ? $project->desc_az : $project->desc_ru }}
                    </div>
    
    
                    <div class="single__project__social">
                        <p>{{ $locale === 'az' ? "Social'da paylaşın:" : 'Поделиться:' }}</p>
                        <div class="social-share-buttons">
                            <a href="https://www.facebook.com/sharer/sharer.php?u={{ urlencode(request()->fullUrl()) }}" target="_blank" class="social-button facebook">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                            <a href="https://www.linkedin.com/shareArticle?mini=true&url={{ urlencode(request()->fullUrl()) }}" target="_blank" class="social-button linkedin">
                                <i class="fab fa-linkedin-in"></i>
                            </a>
                            <a href="https://vk.com/share.php?url={{ urlencode(request()->fullUrl()) }}" target="_blank" class="social-button vk">
                                <i class="fab fa-vk"></i>
                            </a>
                            <a href="https://pinterest.com/pin/create/button/?url={{ urlencode(request()->fullUrl()) }}" target="_blank" class="social-button pinterest">
                                <i class="fab fa-pinterest-p"></i>
                            </a>
                            <a href="https://telegram.me/share/url?url={{ urlencode(request()->fullUrl()) }}" target="_blank" class="social-button telegram">
                                <i class="fab fa-telegram-plane"></i>
                            </a>
                            <a href="https://api.whatsapp.com/send?text={{ urlencode(request()->fullUrl()) }}" target="_blank" class="social-button whatsapp">
                                <i class="fab fa-whatsapp"></i>
                            </a>
                        </div>
                        
                    </div>
                </div>




            </div>



        </div>




        @include('components.footer_pr')


    </div>


    <script src="{{ asset('js/projects.js') }}"></script>
    <script src="https://cdn.jsdelivr.net/npm/@fancyapps/ui@4.0/dist/fancybox.umd.js"></script>
</body>

</html>
