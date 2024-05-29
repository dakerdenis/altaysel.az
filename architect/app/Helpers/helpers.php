<?php

if (!function_exists('custom_public_path')) {
    function custom_public_path($path = '')
    {
        return base_path('../public_html') . ($path ? '/' . $path : $path);
    }
}
