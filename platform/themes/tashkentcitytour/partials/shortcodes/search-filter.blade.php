<section class="search-filter {{ $style }}">
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
                            <p>ВЗРОСЛЫЕ <br/><small>(13-59 лет)</small> </p>
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
