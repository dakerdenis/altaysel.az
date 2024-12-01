        <!--! ---HEADER------->
        <header class="header" id="background_change2">
            <div class="header__container font_change" id="color_change">
                <div class="header__logo__navigation">
                    <div class="header__logo">
                        @if ($locale ==='az')
                        <a href="{{route('index', ['locale'=>'az'])}}"
                        aria-label="Home">
                        <img id="image_change" src="./style/imgs/Vector1.svg" alt="Alt.Ay.Sel Logo">
                    </a>
                        @else
                        <a href="{{route('index', ['locale'=>'ru'])}}"
                            aria-label="Home">
                            <img id="image_change" src="./style/imgs/Vector1.svg" alt="Alt.Ay.Sel Logo">
                        </a>
                        @endif

                    </div>

                    <nav class="header__navigation" aria-label="Main Navigation">
                        <ul class="header__navigation__container header__navigation__container-links">
                            <li>
                                <button data-target="#aboutBlock">
                                    <p class="font_change" id="color_change">
                                        {{ $locale === 'az' ? 'Haqqımızda' : 'О нас' }}
                                    </p>
                                </button>
                            </li>
                            <li>
                                <button data-target="#projectsBlock">
                                    <p class="font_change"  id="color_change">
                                        {{ $locale === 'az' ? 'Layihələrimiz' : 'Проекты' }}
                                    </p>
                                </button>
                            </li>
                            <li>
                                <button data-target="#futureBlock">
                                    <p  class="font_change"  id="color_change">
                                        {{ $locale === 'az' ? 'Xəbərlər' : 'Новости' }}
                                    </p>
                                </button>
                            </li>
                            <li>
                                <button data-target="#servicesBlock">
                                    <p class="font_change"  id="color_change">
                                        {{ $locale === 'az' ? 'Xidmətlər' : 'Услуги' }}
                                    </p>
                                </button>
                            </li>
                            <li>
                                <button data-target="#teamBlock">
                                    <p class="font_change"  id="color_change">
                                        {{ $locale === 'az' ? 'Komanda' : 'Команда' }}
                                    </p>
                                </button>
                            </li>
                            <li>
                                <button data-target="#contactBlock">
                                    <p class="font_change"  id="color_change">
                                        {{ $locale === 'az' ? 'Bizimlə əlaqə' : 'Связь с нами' }}
                                    </p>
                                </button>
                            </li>
                        </ul>
                    </nav>

                </div>
                <div class="header__phone__language">
                    <a href="tel: +994124403711" aria-label="Contact Phone Number">
                        <p class="font_change" id="color_change">+994 12 440 37 11</p>
                    </a>

                    <div class="header__language" aria-label="Langsuage Selection">
                        <div class="language__toggle" role="button" aria-expanded="false"
                            aria-controls="languageDropdown">
                            <span>{{ strtoupper($locale) }}</span>
                            <span class="arrow" aria-hidden="true"></span>
                        </div>

                        <div id="languageDropdown" class="language__dropdown" aria-hidden="true">

                            <a href="{{ $locale === 'az' ? '/ru' : '/az' }}"
                                lang="{{ $locale === 'az' ? '/ru' : '/az' }}">
                                {{ strtoupper($locale === 'az' ? 'ru' : 'az') }}
                            </a>


                        </div>
                    </div>
                </div>
            </div>
        </header>