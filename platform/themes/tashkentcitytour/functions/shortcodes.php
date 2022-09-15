<?php

use Botble\Theme\Supports\ThemeSupport;

app()->booted(function () {
    ThemeSupport::registerGoogleMapsShortcode();
    ThemeSupport::registerYoutubeShortcode();



    add_shortcode('section-area', __('Section Area'), __('Section Area'), function ($shortCode) {
        return Theme::partial('shortcodes.section-area', ['title' => $shortCode->title,'style'=>$shortCode->style]);
    });

    shortcode()->setAdminConfig('section-area', Theme::partial('shortcodes.section-area-admin-config'));

    add_shortcode('search-filter', __('Search Filter'), __('Search Filter'), function ($shortCode) {
        return Theme::partial('shortcodes.search-filter', ['title' => $shortCode->title,'style'=>$shortCode->style]);
    });

    shortcode()->setAdminConfig('search-filter', Theme::partial('shortcodes.search-filter-admin-config'));

    add_shortcode('section-intro', __('Section Intro'), __('Section Intro'), function ($shortCode) {
        return Theme::partial('shortcodes.section-intro', ['title' => $shortCode->title]);
    });

    add_shortcode('section-facilities', __('Section Facilities'), __('Section Facilities'), function ($shortCode) {
        return Theme::partial('shortcodes.section-facilities', ['title' => $shortCode->title]);
    });
    add_shortcode('section-testimonial', __('Section Testimonial'), __('Section Testimonial'), function ($shortCode) {
        return Theme::partial('shortcodes.section-testimonial', ['title' => $shortCode->title]);
    });

    add_shortcode('section-video', __('Section Video'), __('Section Video'), function ($shortCode) {
        return Theme::partial('shortcodes.section-video', ['title' => $shortCode->title]);
    });

    add_shortcode('homepage-about', __('Homepage About'), __('Homepage About'), function ($shortCode) {
        return Theme::partial('shortcodes.homepage-about', ['title' => $shortCode->title]);
    });

    if (is_plugin_active('contact')) {
        add_filter(CONTACT_FORM_TEMPLATE_VIEW, function () {
            return Theme::getThemeNamespace() . '::partials.shortcodes.contact-form';
        }, 120);
    }

});
