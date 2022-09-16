<script>
    var currencyUSD = {{ $settings['currency']['usd'] }};
</script>


<div class="hero-area set-bg other-page" data-setbg="{!! Theme::asset()->url('img/about_bg.jpg') !!}"
     style="background-image: url({!! Theme::asset()->url('img/about_bg.jpg') !!});">
</div>
<section class="banners">
    {!! do_shortcode('[google-map] г.Ташкент, ул. Тарраккиёт 45[/google-map]') !!}
    <div class="visible-xs box"><a href="/images/img/map-route.jpg" class="base-color">Открыть карту с маршрутом</a></div>
</section>
<section class="page-header text-center text-uppercase">
    <div class="conteiner">
        <h2>ЭКСКУРСИИ ПО ТАШКЕНТУ</h2>
    </div>
</section>
<section class="section-calc">
    <div class="container">
        <form action="/ajax/createorder" method="post" id="orderForm">
            @csrf
        <div id="form-params" >
            <div class="select-group box bg-base">
                <div class="row">
                    <div class="col-xs-12 col-sm-4">
                        <div class="input-group">
                            <input type="text" id="scheduleDay" class="form-control datepicker-1" name="scheduleDay" value="" placeholder="Выберите дату">
                            <span class="caret-wrap input-group-addon btn"><span class="fa fa-calendar" aria-hidden="true"></span></span>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4">
                        <div class="form-group">
                            <select class="selectpicker" id="scheduleRoute" name="scheduleRoute">
                                <option value="0">Select a route</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4">
                        <div class="form-group">
                            <select class="selectpicker" id="scheduleTime" name="scheduleTime">
                                <option value="0">Choose a time</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
                    <div class="row">
                                    <div class="pm-box check-form">
                                        <div class="room-quantity">

                                        <ul class="nav nav-justified">
                                            <li><div class="txt">Взрослые<small>(13-59 лет)</small></div>
                                                <input name="totalAdult" type="text" class="form-control bfh-number" data-max="54" data-price="{{ $settings['ticketPrice']['adult'] }}" value="0" /></li>
                                            <li><div class="txt">Дети <small>(6-12 лет)</small></div>
                                                <input name="totalChildren" type="text" class="form-control bfh-number" data-max="54" data-price="{{ $settings['ticketPrice']['children'] }}" value="0"  /></li>
                                        </ul>
                                    </div>

                                    </div>


{{--                        <div class="check-form">--}}
{{--                             <div class="room-quantity">--}}
{{--                                    <div class="single-quantity">--}}
{{--                                        <p class="txt">ВЗРОСЛЫЕ <br/><small>(13-59 лет)</small> </p>--}}
{{--                                        <div class="pro-qty"><input type="text" value="0"  class="bfh-number" name="totalAdult" data-max="54" data-price="{{ $settings['ticketPrice']['adult'] }}"></div>--}}
{{--                                    </div>--}}
{{--                                    <div class="single-quantity">--}}
{{--                                        <p>ДЕТИ <br/><small>(6-12 лет)</small></p>--}}
{{--                                        <div class="pro-qty"><input type="text" value="0" class="bfh-number" name="totalChildren"  data-max="54" data-price="{{ $settings['ticketPrice']['adult'] }}"></div>--}}
{{--                                    </div>--}}
{{--                                </div>--}}

{{--                        </div>--}}
                    </div>

            <div class="choice-location">
                <div class="checkbox">
                    <label class="checkbox-custom" data-initialize="checkbox" data-toggle="collapse" data-target="#bus-wrap">
                        <input class="sr-only" type="checkbox" value="1" name="selectPlace" />
                        <span class="checkbox-label text-uppercase">Выберите место</span>
                    </label>
                </div>
                <div class="collapse" id="bus-wrap">
                    <div class="row">
                        <div class="col-sm-12 col-md-6">
                            <p class="bus-top-title col-md-offset-1 col-xs-offset-5"><small>Верхний этаж</small></p>
                            <div class="bus-scheme top-floor">
                                <div class="inner">
                                    <div class="place place-1 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="1" >1</div>
                                    <div class="place place-2 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="2" >2</div>
                                    <div class="place place-3 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="3" >3</div>
                                    <div class="place place-4 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="4" >4</div>
                                    <div class="place place-5 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="5" >5</div>
                                    <div class="place place-6 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="6" >6</div>
                                    <div class="place place-7 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="7" >7</div>
                                    <div class="place place-8 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="8" >8</div>
                                    <div class="place place-9 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="9" >9</div>
                                    <div class="place place-10 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="10" >10</div>
                                    <div class="place place-11 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="11" >11</div>
                                    <div class="place place-12 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="12" >12</div>
                                    <div class="place place-13 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="13" >13</div>
                                    <div class="place place-14 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="14" >14</div>
                                    <div class="place place-15 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="15" >15</div>
                                    <div class="place place-16 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="16" >16</div>
                                    <div class="place place-17 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="17" >17</div>
                                    <div class="place place-18 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="18" >18</div>
                                    <div class="place place-19 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="19" >19</div>
                                    <div class="place place-20 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="20" >20</div>
                                    <div class="place place-21 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="21" >21</div>
                                    <div class="place place-22 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="22" >22</div>
                                    <div class="place place-23 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="23" >23</div>
                                    <div class="place place-24 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="24" >24</div>
                                    <div class="place place-25 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="25" >25</div>
                                    <div class="place place-26 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="26" >26</div>
                                    <div class="place place-27 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="27" >27</div>
                                    <div class="place place-28 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="28" >28</div>
                                    <div class="place place-29 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="29" >29</div>
                                    <div class="place place-30 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="30" >30</div>
                                    <div class="place place-31 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="31" >31</div>
                                    <div class="place place-32 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="32" >32</div>
                                    <div class="place place-33 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="33" >33</div>
                                    <div class="place place-34 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="34" >34</div>
                                    <div class="place place-35 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="35" >35</div>
                                    <div class="place place-36 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="36" >36</div>
                                    <div class="place place-37 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="37" >37</div>
                                    <div class="place place-38 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="38" >38</div>
                                    <div class="place place-39 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="39" >39</div>
                                    <div class="place place-40 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="40" >40</div>
                                    <div class="place place-41 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="41" >41</div>
                                    <div class="place place-42 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="42" >42</div>
                                    <div class="place place-43 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="43" >43</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-6">
                            <p class="bus-ground-title col-md-offset-1 col-xs-offset-5"><small>Нижний этаж</small></p>
                            <div class="bus-scheme ground-floor">
                                <div class="inner">
                                    <div class="place place-44 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="44" >44</div>
                                    <div class="place place-45 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="45" >45</div>
                                    <div class="place place-46 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="46" >46</div>
                                    <div class="place place-47 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="47" >47</div>
                                    <div class="place place-48 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="48" >48</div>
                                    <div class="place place-49 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="49" >49</div>
                                    <div class="place place-50 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="50" >50</div>
                                    <div class="place place-51 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="51" >51</div>
                                    <div class="place place-52 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="52" >52</div>
                                    <div class="place place-53 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="53" >53</div>
                                    <div class="place place-54 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="54" >54</div>
                                    <div class="place place-inv-1 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="55" ></div>
                                    <div class="place place-inv-2 free" data-price="{{ $settings['ticketPrice']['selectPlace'] }}" data-place="56" ></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <p>При выборе места стоимость билета увеличивается на {{ number_format($settings['ticketPrice']['selectPlace'], 0, ',', ' ') }} сум</p>

                </div>
            </div>

            <div class="form-horizontal box bg-base">
                <div class="row">
                    <div class="col-xs-12 col-sm-8">
                        <div class="row">
                            <div class="col-sm-6 col-xs-12">
                                <div class="form-group">
                                    <label class="control-label">Имя</label>
                                    <input class="form-control" type="text" name="name" required />
                                </div>
                            </div>
                            <div class="col-sm-6 col-xs-12">
                                <div class="form-group">
                                    <label class="control-label">e-mail</label>
                                    <input class="form-control" type="email" name="email" required />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-6">
                                <div class="form-group">
                                    <label class="control-label">Телефон</label>
                                    <input class="form-control" type="tel" id="phoneTel" name="phone" required />
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6">
                                <div class="form-group">
                                    <label class="control-label">Введите код на картинке:</label>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4">
                        <div class="form-group">
                            <div class="result-block">
                                <span>Итого:</span>
                                <strong id="result">0</strong>
                                <strong>&nbsp;sum</strong>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-xs-6">
                                    <div class="result-block">
                                        <span>Итого:</span>
                                        <strong id="usdresult">0</strong>
                                        <strong>&nbsp;$</strong>
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <div class="form-btn-wrap">
                                        <input type="hidden" id="selectedPlaces" name="selectedPlaces" value="">
                                        <button type="submit" class="btn btn-buy disabled">Купить</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="checkbox">
                        <label class="checkbox-custom" data-initialize="checkbox">
                            <input class="sr-only accept" type="checkbox" value="1" name="oferta" required />
                        </label>
                        <span class="checkbox-label oferta">Я ознакомлен(а) c <a href="#" class="text-uppercase" data-toggle="modal" data-target="#oferta">Офертой</a> и согласен(а) с условиями</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12" id="statusForm">
            </div>
        </div>
        </form>
        <div id="payment-params" class="collapse payment-params">
        </div>
    </div>
</section>

<div id="oferta" class="fade modal" role="dialog" tabindex="-1">
    <div class="modal-dialog ">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h2>Правила</h2>
            </div>
            <div class="modal-body">
                <p>Турист на данном сайте обязан ознакомиться с правилами поведения в экскурсионном автобусе и обращения с оборудованием салона.</p>
                <ol>
                    <li>Обзорная экскурсия по г. Ташкенту начинается в указанные на сайте часы.</li>
                    <li>Дети до 6 лет (бесплатно) без места.</li>
                    <li>Порядок посадки туристов и граждан Республики Узбекистан в экскурсионный автобус производится в порядке живой очереди на свободные места, кроме случаев когда билет был приобретен на сайте с указанием конкретного места.</li>
                    <li>Следует строго придерживаться некоторых правил поведения в экскурсионном автобусе: в автобусе запрещается оставлять мусор,грызть семечки, оставлять пустые бутылки, фантики, очистки от&nbsp;фруктов и т.д. и не употреблять спиртные напитки (в т.ч. пиво!).&nbsp;<strong>Категорически запрещается</strong>&nbsp;курить в салоне, курение возможно только во время остановок, которые осуществляются на установленных маршрутах местах. Вы входите в чистый автобус. Выйти вы должны из чистого автобуса.&nbsp;</li>
                </ol>
                <ol>
                    <li>Пассажир должен бережно обращаться с оборудованием автобуса, не допускать его порчи.</li>
                    <li>Приём пищи и прохладительных напитков разрешается&nbsp;<strong>ТОЛЬКО</strong>&nbsp;на остановках.</li>
                    <li>Мусор необходимо складывать в индивидуальные пакеты и выбрасывать в мусоросборник в автобусе.</li>
                </ol>
                <ol start="8">
                    <li>По правилам туристических перевозок все пассажиры автобуса должны быть пристёгнуты – при наличии ремней безопасности на всех местах.</li>
                    <li>Для безопасности движения во время следования автобуса по&nbsp;маршруту запрещается хождение по автобусу, нельзя высовывать голову, руки в окна. <strong>Категорически запрещается&nbsp;</strong>ставить сумки, рюкзаки в проходах. В целях безопасности движения проход должен быть свободным.</li>
                    <li><strong>Запрещается&nbsp;</strong>отвлекать водителя во время движения. Все предложения и пожелания, предназначенные для водителя – передавать через своего гида-сопровождающего.</li>
                    <li>Пассажир несет&nbsp;<strong>материальную ответственность</strong>за ущерб, нанесенный им транспортному средству и его оборудованию.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Во время экстренного торможения надо упереться ногами и руками во впереди стоящее кресло.</li>
                    <li>В случае аварии&nbsp;&nbsp;необходимо чётко выполнять инструкции водителя, руководителя группы или лиц их заменяющих.</li>
                    <li>Во время конечной остановки автобуса не вставать с мест до особого распоряжения водителя автобуса или сопровождающего. Выходить&nbsp;из автобуса надо по очереди, не толкаясь. Также, по очереди, надо&nbsp;заходить в автобус. Последним в автобус заходит руководитель&nbsp;группы, чтобы проверить её численность. Последним он его и покидает.</li>
                    <li>Экскурсия проводится как для индивидуальных туристов так и для для группы. Во время проведения&nbsp;экскурсии нужно внимательно слушать аудио гид, не разговаривать, не мешать окружающим.</li>
                    <li>Если вам необходимо отлучиться в туалет или вы почувствовали себя плохо во время проведения экскурсии, нужно обратиться к сопровождающему.</li>
                </ol>
                <p>Дорогие жители Узбекистана и гости нашей столицы. &nbsp;<strong>Будьте вежливы и предупре</strong><strong>дительны. Экскурсия — это не пикник, а познавательная поездка.</strong></p>
                <p>&nbsp;</p>
            </div>

        </div>
    </div>
</div>

