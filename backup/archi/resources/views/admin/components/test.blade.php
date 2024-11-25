            <!---Admin sections--->
            <section class="admin__panel__content-section">
                <form action="" method="POST">
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
                        <div class="contact__element__block">
                            <div class="contact__element__image">
                                <img src="../style/imgs/phone_contact.svg" alt="">
                            </div>
                            <div class="contact__element__input">
                                <div class="contact__element__input-input">
                                    <input type="text" placeholder="Zəhmət olmasa nömrəni göstərin*">
                                </div>
                                <div class="contact__element__placeholder">
                                    Əlaqə nömrəsi 1
                                </div>
                            </div>
                            <div class="contact__element__desc">
                                Tələb olunan sahə boşdur
                            </div>
                        </div>
                        <div class="contact__element__block">
                            <div class="contact__element__image">
                                <img src="../style/imgs/wp_contact.svg" alt="">
                            </div>
                            <div class="contact__element__input">
                                <div class="contact__element__input-input">
                                    <input type="text" placeholder="Zəhmət olmasa nömrəni göstərin*">
                                </div>
                                <div class="contact__element__placeholder">
                                    Əlaqə nömrəsi 2
                                </div>
                            </div>
                            <div class="contact__element__desc">
                                Tələb olunan sahə boşdur
                            </div>
                        </div>
                        <div class="contact__element__block">
                            <div class="contact__element__image">
                                <img src="../style/imgs/email_contact.svg" alt="">
                            </div>
                            <div class="contact__element__input">
                                <div class="contact__element__input-input">
                                    <input type="text" placeholder="Zəhmət olmasa e-poçt ünvanı göstərin*">
                                </div>
                                <div class="contact__element__placeholder">
                                    E-poçt ünvanı
                                </div>
                            </div>
                            <div class="contact__element__desc">
                                Tələb olunan sahə boşdur
                            </div>
                        </div>
                        <div class="contact__element__block">
                            <div class="contact__element__image">
                                <img src="../style/imgs/linkdin_contact.svg" alt="">
                            </div>
                            <div class="contact__element__input">
                                <div class="contact__element__input-input">
                                    <input type="text" placeholder="Zəhmət olmasa keçidi göstərin*">
                                </div>
                                <div class="contact__element__placeholder">
                                    Linkedİn keçidi
                                </div>
                            </div>
                            <div class="contact__element__desc">
                                Tələb olunan sahə boşdur
                            </div>
                        </div>
                        <div class="contact__element__block">
                            <div class="contact__element__image">
                                <img src="../style/imgs/fb_contact.svg" alt="">
                            </div>
                            <div class="contact__element__input">
                                <div class="contact__element__input-input">
                                    <input type="text" placeholder="Zəhmət olmasa keçidi göstərin*">
                                </div>
                                <div class="contact__element__placeholder">
                                    Facebook keçidi
                                </div>
                            </div>
                            <div class="contact__element__desc">
                                Tələb olunan sahə boşdur
                            </div>
                        </div>
                        <div class="contact__element__block">
                            <div class="contact__element__image">
                                <img src="../style/imgs/insta_contact.svg" alt="">
                            </div>
                            <div class="contact__element__input">
                                <div class="contact__element__input-input">
                                    <input type="text" placeholder="Zəhmət olmasa keçidi göstərin*">
                                </div>
                                <div class="contact__element__placeholder">
                                    İnstagram keçidi
                                </div>
                            </div>
                            <div class="contact__element__desc">
                                Tələb olunan sahə boşdur
                            </div>
                        </div>
                        <div class="contact__element__block">
                            <div class="contact__element__image">
                                <img src="../style/imgs/tg_contact.svg" alt="">
                            </div>
                            <div class="contact__element__input">
                                <div class="contact__element__input-input">
                                    <input type="text" placeholder="Zəhmət olmasa keçidi göstərin*">
                                </div>
                                <div class="contact__element__placeholder">
                                    Telegram keçidi
                                </div>
                            </div>
                            <div class="contact__element__desc">
                                Tələb olunan sahə boşdur
                            </div>
                        </div>

                        <div class="contact__element__block">
                            <div class="contact__element__image">
                                <img src="../style/imgs/bahance.svg" alt="">
                            </div>
                            <div class="contact__element__input">
                                <div class="contact__element__input-input">
                                    <input type="text" placeholder="Zəhmət olmasa keçidi göstərin*">
                                </div>
                                <div class="contact__element__placeholder">
                                    Behance keçidi
                                </div>
                            </div>
                            <div class="contact__element__desc">
                                Tələb olunan sahə boşdur
                            </div>
                        </div>

                        <div class="contact__element__block">
                            <div class="contact__element__image">
                                <img src="../style/imgs/pinterest.svg" alt="">
                            </div>
                            <div class="contact__element__input">
                                <div class="contact__element__input-input">
                                    <input type="text" placeholder="Zəhmət olmasa keçidi göstərin*">
                                </div>
                                <div class="contact__element__placeholder">
                                    Pinterest keçidi
                                </div>
                            </div>
                            <div class="contact__element__desc">
                                Tələb olunan sahə boşdur
                            </div>
                        </div>

                    </div>
                </form>


            </section>
