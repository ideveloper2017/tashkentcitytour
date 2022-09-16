<section class="contact-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="contact-title">
                    <div class="section-title">
                        <h2>{{ __('Contact Us For Any Questions') }}</h2>
                    </div>
{{--                    <a href="#" class="primary-btn">Get Directions</a>--}}
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-8">
                {!! Form::open(['route' => 'public.send.contact', 'class' => 'contact-form', 'method' => 'POST']) !!}

                    <div class="row">
                        <div class="col-lg-6">
                            <input type="text"  name="name" value="{{ old('name') }}" placeholder="{{ __('Name') }}">
                        </div>
                        <div class="col-lg-6">
                            <input type="email"name="email" value="{{ old('email') }}" placeholder="{{ __('Email') }}">
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="input-style mb-20">
                                <input name="address" value="{{ old('address') }}" placeholder="{{ __('Address') }}" type="text">
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="input-style mb-20">
                                <input name="phone" value="{{ old('phone') }}" placeholder="{{ __('Phone') }}" type="tel">
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <input type="text" class="subject" name="subject" value="{{ old('subject') }}" placeholder="{{ __('Subject') }}">
                            <textarea name="content" placeholder="{{ __('Message') }}">{{ old('content') }}</textarea>
                            @if (setting('enable_captcha') && is_plugin_active('captcha'))
                                <div class="col-md-12">
                                    {!! Captcha::display() !!}
                                </div>
                            @endif
                            <button type="submit">{{ __('Send message') }}</button>
                        </div>
                    </div>
                {!! Form::close() !!}
            </div>
            <div class="col-lg-4">
                <div class="info-box">
                    <img src="img/contact-logo.png" alt="">
                    <ul>
                        <li>1525 Madison Lane, <br>Los Angeles, CA</li>
                        <li>+1 (603)535-4592</li>
                        <li>hello@youremail.com</li>
                        <li>Everyday: 06:00 -22:00</li>
                    </ul>
                    <div class="social-links">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                        <a href="#"><i class="fa fa-pinterest"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-youtube-play"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
