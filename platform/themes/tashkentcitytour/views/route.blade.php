@php \Theme::layout('default'); @endphp
<div class="hero-area set-bg other-page" data-setbg="{!! Theme::asset()->url('img/about_bg.jpg') !!}"
     style="background-image: url({!! Theme::asset()->url('img/about_bg.jpg') !!});">
</div>
<section class="search-filter spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <form action="#" class="check-form">
                    <h4>ЭКСКУРСИИ ПО ТАШКЕНТУ</h4>
                    <div class="datepicker">
                        <p>Выберите дату</p>
                        <input type="text" class="datepicker-1" value="dd / mm / yyyy">
                        <img src="{!! Theme::asset()->url('img/calendar.png') !!}" alt="">
                    </div>
                    <div class="room-selector">
                        <p>Выберите маршрут</p>
                        <select class="suit-select">
                            <option>Классический Ташкент</option>
                        </select>
                    </div>
                    <div class="room-selector">
                        <p>Выберите время</p>
                        <select class="suit-select">
                            <option>10:00</option>
                            <option>12:00</option>
                            <option>14:00</option>
                            <option>15:00</option>
                            <option>16:00</option>
                            <option>17:00</option>
                        </select>
                    </div>
                    <div class="room-quantity">
                        <div class="single-quantity">
                            <p>ВЗРОСЛЫЕ <br/><small>(13-59 лет)</small></p>
                            <div class="pro-qty"><input type="text" value="0"></div>
                        </div>
                        <div class="single-quantity">
                            <p>ДЕТИ <br/><small>(6-12 лет)</small></p>
                            <div class="pro-qty"><input type="text" value="0"></div>
                        </div>
                    </div>

                    <button type="submit"><i class="fa fa-search"></i></button>
                </form>
            </div>
        </div>
    </div>
</section>
<section class="services-section">
    <div class="container">
        <form id="orderForm" action="/site/create-order" method="post" >
            <input type="hidden" name="_csrf" value="LlFLLVY3QnBFKzxbI2EzXRsIMUkRXwE7YR96fC9ROARBM3pUBG46Hg==">
            <div id="form-params">


                <div class="choice-location">
                    <div class="checkbox checked">
                        <label class="checkbox-custom checked" data-initialize="checkbox" data-toggle="collapse" data-target="#bus-wrap" aria-expanded="true">
                            <input class="sr-only" type="checkbox" value="1" name="selectPlace" checked="checked">
                            <span class="checkbox-label text-uppercase">Выберите место</span>
                        </label>
                    </div>
                    <div class="collapse in" id="bus-wrap" aria-expanded="true" style="">
                        <div class="row">
                            <div class="col-sm-12 col-md-6">
                                <p class="bus-top-title col-md-offset-1 col-xs-offset-5"><small>Верхний этаж</small></p>
                                <div class="bus-scheme top-floor">
                                    <div class="inner">
                                        <div class="place place-1 free" data-price="10000" data-place="1">1</div>
                                        <div class="place place-2 free" data-price="10000" data-place="2">2</div>
                                        <div class="place place-3 free" data-price="10000" data-place="3">3</div>
                                        <div class="place place-4 free" data-price="10000" data-place="4">4</div>
                                        <div class="place place-5 free" data-price="10000" data-place="5">5</div>
                                        <div class="place place-6 free" data-price="10000" data-place="6">6</div>
                                        <div class="place place-7 free" data-price="10000" data-place="7">7</div>
                                        <div class="place place-8 free" data-price="10000" data-place="8">8</div>
                                        <div class="place place-9 free" data-price="10000" data-place="9">9</div>
                                        <div class="place place-10 free" data-price="10000" data-place="10">10</div>
                                        <div class="place place-11 free" data-price="10000" data-place="11">11</div>
                                        <div class="place place-12 free" data-price="10000" data-place="12">12</div>
                                        <div class="place place-13 free" data-price="10000" data-place="13">13</div>
                                        <div class="place place-14 free" data-price="10000" data-place="14">14</div>
                                        <div class="place place-15 free" data-price="10000" data-place="15">15</div>
                                        <div class="place place-16 free" data-price="10000" data-place="16">16</div>
                                        <div class="place place-17 free" data-price="10000" data-place="17">17</div>
                                        <div class="place place-18 free" data-price="10000" data-place="18">18</div>
                                        <div class="place place-19 free" data-price="10000" data-place="19">19</div>
                                        <div class="place place-20 free" data-price="10000" data-place="20">20</div>
                                        <div class="place place-21 free" data-price="10000" data-place="21">21</div>
                                        <div class="place place-22 free" data-price="10000" data-place="22">22</div>
                                        <div class="place place-23 free" data-price="10000" data-place="23">23</div>
                                        <div class="place place-24 free" data-price="10000" data-place="24">24</div>
                                        <div class="place place-25 free" data-price="10000" data-place="25">25</div>
                                        <div class="place place-26 free" data-price="10000" data-place="26">26</div>
                                        <div class="place place-27 free" data-price="10000" data-place="27">27</div>
                                        <div class="place place-28 free" data-price="10000" data-place="28">28</div>
                                        <div class="place place-29 free" data-price="10000" data-place="29">29</div>
                                        <div class="place place-30 free" data-price="10000" data-place="30">30</div>
                                        <div class="place place-31 free" data-price="10000" data-place="31">31</div>
                                        <div class="place place-32 free" data-price="10000" data-place="32">32</div>
                                        <div class="place place-33 free" data-price="10000" data-place="33">33</div>
                                        <div class="place place-34 free" data-price="10000" data-place="34">34</div>
                                        <div class="place place-35 free" data-price="10000" data-place="35">35</div>
                                        <div class="place place-36 free" data-price="10000" data-place="36">36</div>
                                        <div class="place place-37 free" data-price="10000" data-place="37">37</div>
                                        <div class="place place-38 free" data-price="10000" data-place="38">38</div>
                                        <div class="place place-39 free" data-price="10000" data-place="39">39</div>
                                        <div class="place place-40 free" data-price="10000" data-place="40">40</div>
                                        <div class="place place-41 free" data-price="10000" data-place="41">41</div>
                                        <div class="place place-42 free" data-price="10000" data-place="42">42</div>
                                        <div class="place place-43 free" data-price="10000" data-place="43">43</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-6">
                                <p class="bus-ground-title col-md-offset-1 col-xs-offset-5"><small>Нижний этаж</small></p>
                                <div class="bus-scheme ground-floor">
                                    <div class="inner">
                                        <div class="place place-44 free" data-price="10000" data-place="44">44</div>
                                        <div class="place place-45 free" data-price="10000" data-place="45">45</div>
                                        <div class="place place-46 free" data-price="10000" data-place="46">46</div>
                                        <div class="place place-47 free" data-price="10000" data-place="47">47</div>
                                        <div class="place place-48 free" data-price="10000" data-place="48">48</div>
                                        <div class="place place-49 free" data-price="10000" data-place="49">49</div>
                                        <div class="place place-50 free" data-price="10000" data-place="50">50</div>
                                        <div class="place place-51 free" data-price="10000" data-place="51">51</div>
                                        <div class="place place-52 free" data-price="10000" data-place="52">52</div>
                                        <div class="place place-53 free" data-price="10000" data-place="53">53</div>
                                        <div class="place place-54 free" data-price="10000" data-place="54">54</div>
                                        <div class="place place-inv-1 free" data-price="10000" data-place="55"></div>
                                        <div class="place place-inv-2 free" data-price="10000" data-place="56"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <p>При выборе места стоимость билета увеличивается на 10 000 сум</p>
                    </div>
                </div>

                <div class="form-horizontal box bg-base">
                    <div class="row">
                        <div class="col-xs-12 col-sm-8">
                            <div class="row">
                                <div class="col-sm-6 col-xs-12">
                                    <div class="form-group">
                                        <label class="control-label">Имя</label>
                                        <input class="form-control" type="text" name="name" required="" aria-required="true">
                                    </div>
                                </div>
                                <div class="col-sm-6 col-xs-12">
                                    <div class="form-group">
                                        <label class="control-label">e-mail</label>
                                        <input class="form-control" type="email" name="email" required="" aria-required="true">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12 col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label">Телефон</label>
                                        <input class="form-control" type="tel" id="phoneTel" name="phone" required="" aria-required="true">
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label">Введите код на картинке:</label>
                                        <div class="col-xs-6"><div class="captcha row"><img id="w0-image" src="/site/captcha?v=6315eca738008" alt=""></div></div><div class="col-xs-6"><input type="text" id="w0" class="form-control" name="verifyCode"></div>                                </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-4">
                            <div class="form-group">
                                <div class="result-block">
                                    <span>Итого:</span>
                                    <strong id="result">0</strong>
                                    <strong>&nbsp;сум</strong>
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
                                <input class="sr-only accept" type="checkbox" value="1" name="oferta" required="" aria-required="true">
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
        </form>        <div id="payment-params" class="collapse payment-params">
        </div>
    </div>
</section>
