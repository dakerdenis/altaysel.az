        <!--! ---HEADER------->
        <header class="header" id="background_change2">
            <div class="header__container" id="background_change">
                <div class="header__logo__navigation">
                    <div class="header__logo">
                        <a href="{{ route('index', ['locale' => $locale])}}"
                            aria-label="Home">
                            <img id="image_change" src="{{asset('style/imgs/Vector1.svg')}}" alt="Alt.Ay.Sel Logo">
                        </a>
                    </div>

                    <nav class="header__navigation" aria-label="Main Navigation">
                        <ul class="header__navigation__container header__navigation__container-links">
                            <li>
                                <button onclick="window.location.href='{{ route('index', ['locale' => $locale]) }}#aboutBlock'">
                                    <p id="color_change">
                                        {{ $locale === 'az' ? 'Haqqımızda' : 'О нас' }}
                                    </p>
                                </button>
                            </li>
                            <li>
                                <button onclick="window.location.href='{{ route('index', ['locale' => $locale]) }}#projectsBlock'">
                                    <p id="color_change">
                                        {{ $locale === 'az' ? 'Layihələrimiz' : 'Проекты' }}
                                    </p>
                                </button>
                            </li>
                            <li>
                                <button  onclick="window.location.href='{{ route('index', ['locale' => $locale]) }}#futureBlock'">
                                    <p id="color_change">
                                        {{ $locale === 'az' ? 'Xəbərlər' : 'Новости' }}
                                    </p>
                                </button>
                            </li>
                            <li>
                                <button onclick="window.location.href='{{ route('index', ['locale' => $locale]) }}#servicesBlock'" >
                                    <p id="color_change">
                                        {{ $locale === 'az' ? 'Xidmətlər' : 'Услуги' }}
                                    </p>
                                </button>
                            </li>
                            <li>
                                <button onclick="window.location.href='{{ route('index', ['locale' => $locale]) }}#teamBlock'">
                                    <p id="color_change">
                                        {{ $locale === 'az' ? 'Komanda' : 'Команда' }}
                                    </p>
                                </button>
                            </li>
                            <li>
                                <button data-target="#contactBlock">
                                    <p id="color_change">
                                        {{ $locale === 'az' ? 'Bizimlə əlaqə' : 'Связь с нами' }}
                                    </p>
                                </button>
                            </li>
                        </ul>
                    </nav>

                </div>
                <div class="header__phone__language">
                    <a href="tel: +994124403711" aria-label="Contact Phone Number">
                        <p id="color_change">+994 12 440 37 11</p>
                    </a>

                    <div class="header__language" aria-label="Langsuage Selection">
                        <div class="language__toggle" role="button" aria-expanded="false"
                            aria-controls="languageDropdown">
                            <span>{{ strtoupper($locale) }}</span>
                            <span class="arrow" aria-hidden="true"></span>
                        </div>

                        <div id="languageDropdown" class="language__dropdown" aria-hidden="true">
                            @php
                                $header_year = isset($year) ? $year : 1960;
                            @endphp
                            <a href="{{ $locale === 'az' ? route('projects_year', ['locale' => 'ru', 'year' => $header_year]) : route('projects_year', ['locale' => 'az', 'year' => $header_year]) }}">
                                {{ strtoupper($locale === 'az' ? 'ru' : 'az') }}
                            </a>
                        </div>
                        
                    </div>
                </div>
            </div>
        </header>