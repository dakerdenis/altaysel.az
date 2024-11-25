<?php
$currentContent = '';
?>
<div class="admin__panel__control-block">
    <div class="admin__panel__control_wrapper">
        <div class="admin__panel__control-image">
            <img src="{{ asset('style/imgs/admin_logo.svg') }}" alt="">
        </div>
        <div class="admin__panel__control-line"></div>
        <div class="admin__panel__control-navigation">
            <a href="{{ route('admin.slider') }}">Slider</a>
            <a href="{{ route('admin.main_projects') }}">Əsas layihələr</a>
            <a href="{{ route('admin.main') }}">Bütün layihələr</a>
            <a href="{{ route('admin.future_projects') }}">Xəbərlər</a>
            <a href="{{ route('admin.map') }}">Xaritə</a>
            <a href="{{ route('admin.services') }}">Xidmətlər</a>
            <a href="{{ route('admin.contact') }}">Əlaqə məlumatları</a>
        </div>

        <div class="admin__panel__control-logout">
            <form action="{{ route('admin.logout') }}" method="post">
                @csrf
                <button type="submit">Çıxış</button>
            </form>
        </div>
    </div>
</div>
