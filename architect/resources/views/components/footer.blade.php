        <!--! ---FOOTER------->
        <footer class="footer" id="contactBlock">
            <div class="footer__container">
                <div id="color_change"  class="footer__mobile__name">
                    {{ $locale === 'az' ? 'Bizimlə Əlaqə' : 'Контакты' }}
                </div>

                
                <div class="footer__map">

                        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d903.4875054719068!2d49.845307804543815!3d40.38763191468053!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40307d00441592e1%3A0x88381df51251ba41!2sAltaysel.co%20-%20memarl%C4%B1q%20dizayn!5e0!3m2!1sru!2saz!4v1716273607326!5m2!1sru!2saz"
                        width="100%" height="100%"
                         style="border-radius:20px;" 
                         allowfullscreen="" 
                         loading="lazy" 
                         referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>

                <div class="footer__content">
                    <div class="footer__content__image">
                        <img src="../style/imgs/footer.jpg" alt="">
                    </div>

                    <div class="footer__content__placeholder">

                    </div>
                    <div id="color_change" class="footer__name font_change">

                        {{ $locale === 'az' ? 'Bizimlə Əlaqə' : 'Контакты' }}
                    </div>
                    <div class="footer__content__block">
                        <div class="footer__content__block-links">
                            <ul class="header__navigation__container">
                                <li>
                                    <button data-target="#aboutBlock">
                                        <p>
                                            {{ $locale === 'az' ? 'Haqqımızda' : 'О нас' }}
                                        </p>
                                    </button>
                                </li>
                                <li>
                                    <button data-target="#projectsBlock">
                                        <p>
                                            {{ $locale === 'az' ? 'Layihələrimiz' : 'Проекты' }}
                                        </p>
                                    </button>
                                </li>
                                <li>
                                    <button data-target="#futureBlock">
                                        <p>
                                            {{ $locale === 'az' ? 'Xəbərlər' : 'Новости' }}
                                        </p>
                                    </button>
                                </li>
                                <li>
                                    <button data-target="#servicesBlock">
                                        <p>
                                            {{ $locale === 'az' ? 'Xidmətlər' : 'Услуги' }}
                                        </p>
                                    </button>
                                </li>
                                <li>
                                    <button data-target="#teamBlock">
                                        <p>
                                            {{ $locale === 'az' ? 'Komanda' : 'Команда' }}
                                        </p>
                                    </button>
                                </li>
                                <!--li>
                                    <button data-target="#contactBlock">
                                        <p>
                                            {{ $locale === 'az' ? 'Bizimlə əlaqə' : 'Связь с нами' }}
                                        </p>
                                    </button>
                                </li-->
                            </ul>
                        </div>

                        <div class="footer__content__block-contact">
                            <div class="footer__contact__numbers-wrapper">

                                <div class="footer__contact-element">
                                    <div class="footer__contact-element__image">
                                        <img src="../style/imgs/call.svg" alt="">
                                    </div>
                                    <div class="footer__contact-element__text">
                                        +994 50 210 03 59 (H.Ramiz)
                                    </div>
                                </div>
                                <div class="footer__contact-element">
                                    <div class="footer__contact-element__image">
                                        <img src="../style/imgs/call.svg" alt="">
                                    </div>
                                    <div class="footer__contact-element__text">
                                        +994 77 218 15 48 &nbsp;(H.Altay)
                                    </div>
                                </div>
                                <div class="footer__contact-element">
                                    <div class="footer__contact-element__image">
                                        <img src="../style/imgs/call.svg" alt="">
                                    </div>
                                    <div class="footer__contact-element__text">
                                        +994  55 888 22 77 (H.Aysel)
                                    </div>
                                </div>
                                <div class="footer__contact-element">
                                    <div class="footer__contact-element__image">
                                        <img src="../style/imgs/mail.svg" alt="">
                                    </div>
                                    <div class="footer__contact-element__text">
                                        info@altaysel.az
                                    </div>
                                </div>
                            </div>


                            <div class="footer__contact__social-block">
                                @if($contacts)
                                    @if($contacts->number_1)
                                        <a href="tel:{{ $contacts->number_1 }}" class="footer__contact_social-element">
                                            <img src="../style/imgs/number_1_contact.svg" alt="">
                                        </a>
                                    @endif
                            
                                    @if($contacts->number_2)
                                        <a href="tel:{{ $contacts->number_2 }}" class="footer__contact_social-element">
                                            <img src="../style/imgs/number_2_contact.svg" alt="">
                                        </a>
                                    @endif
                            
                                    @if($contacts->email)
                                        <a href="mailto:{{ $contacts->email }}" class="footer__contact_social-element">
                                            <img src="../style/imgs/email_contact.svg" alt="">
                                        </a>
                                    @endif
                            
                                    @if($contacts->linkdin)
                                        <a href="{{ $contacts->linkdin }}" target="_blank" class="footer__contact_social-element">
                                            <img src="../style/imgs/linkdin_contact.svg" alt="">
                                        </a>
                                    @endif
                            
                                    @if($contacts->facebook)
                                        <a href="{{ $contacts->facebook }}" target="_blank" class="footer__contact_social-element">
                                            <img src="../style/imgs/facebook_contact.svg" alt="">
                                        </a>
                                    @endif
                            
                                    @if($contacts->instagram)
                                        <a href="{{ $contacts->instagram }}" target="_blank" class="footer__contact_social-element">
                                            <img src="../style/imgs/instagram_contact.svg" alt="">
                                        </a>
                                    @endif
                            
                                    @if($contacts->telegram)
                                        <a href="{{ $contacts->telegram }}" target="_blank" class="footer__contact_social-element">
                                            <img src="../style/imgs/telegram_contact.svg" alt="">
                                        </a>
                                    @endif
                            
                                    @if($contacts->behance)
                                        <a href="{{ $contacts->behance }}" target="_blank" class="footer__contact_social-element">
                                            <img src="../style/imgs/behance_contact.svg" alt="">
                                        </a>
                                    @endif
                            
                                    @if($contacts->pinterest)
                                        <a href="{{ $contacts->pinterest }}" target="_blank" class="footer__contact_social-element">
                                            <img src="../style/imgs/pinterest_contact.svg" alt="">
                                        </a>
                                    @endif
                                @endif
                            </div>
                            
                            

                        </div>



                    </div>

                </div>

                <div class="footrer__created__copy">
                    <a target="_blank" href="https://daker.site/">
                        <img src="../style/imgs/daker_created.svg" alt="">
                    </a>
                    <p class="font_change">
                        Copyright 2024
                    </p>
                </div>

            </div>

        </footer>
