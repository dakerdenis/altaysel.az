<!DOCTYPE html>
<html lang="az">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>

    <link rel="stylesheet" href="{{ asset('style/style.css') }}">
    <link rel="stylesheet" href="{{ asset('style/admin/style.css') }}">
</head>

<body>
    <div class="admin__wrapper">
        <div class="admin__login-form">
            <div class="admin__login__wrapper">
                <div class="login__hello">
                    Xoş gəldiniz!
                </div>
                <div class="login__desc">
                    ALT.AY.SEL İdarəetmə panelı
                </div>

                <form method="POST" action="{{ route('admin.login') }}" class="login__form">
                    @csrf
                    <div class="input__container">
                        <div class="input__container__desc">
                            Login
                        </div>

                        <div class="input__field">
                            <input type="text" id="email" name="email" placeholder="Login |" required>
                        </div>
                    </div>

                    <div class="input__container">
                        <div class="input__container__desc">
                            Şifrə
                        </div>

                        <div class="input__field">
                            <input type="password" id="password" name="password" placeholder="Şifrə |" required>
                        </div>
                    </div>

                    @if(session('error'))
                    <div class="alert alert-danger" role="alert">
                        {{ session('error') }}
                    </div>
                    @endif
                    <div class="input__button">
                        <button type="submit">Daxil ol</button>
                    </div>
                </form>
            </div>
        </div>

        <div class="admin__bakcground">
            <img src="./style/imgs/admin_back.png" alt="">
        </div>

        <div class="admin__absolute-image">
            <img src="./style/imgs/admin_logo.svg" alt="">
        </div>
    </div>
</body>

</html>
