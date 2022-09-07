<footer class="footer-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="footer-item">
                    {!! dynamic_sidebar('footer_sidebar_1') !!}
                </div>
            </div>
            <div class="col-lg-4">
                <div class="footer-item">
                {!! dynamic_sidebar('footer_sidebar_2') !!}
                </div>
            </div>
            <div class="col-lg-4">
                <div class="footer-item">
                    <h5>Контактная информация</h5>
                    <ul>
                        <li><img src="{!! Theme::asset()->url('img/placeholder.png') !!}" alt="">1525 Boring Lane,<br />Los Angeles, CA</li>
                        <li><img src="{!! Theme::asset()->url('img/phone.png') !!}" alt="">+1 (603)535-4592</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    {!!
                            Menu::renderMenuLocation('main-menu', [
                                'options' => ['class' => 'menu sub-menu--slideLeft'],
                                'view'    => 'main-menu',
                            ])
                        !!}

                </div>
            </div>
            <div class="row pt-5">
                <div class="col-lg-12 ">
                    <div class="small text-white text-center"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with
                       </div>
                </div>
            </div>

        </div>
    </div>
</footer>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.0.4/popper.js"></script>
        {!! Theme::footer() !!}

    </body>
</html>
