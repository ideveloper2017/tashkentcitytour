$(document).ready(function () {



    $('.checkbox input').checkbox('uncheck');

    $('.radio input').radio();

    // Выбор количества персон в калькуляторе с помощью плагина:   http://bootstrapformhelpers.com/number/
    $('form input[type="text"].bfh-number, form input[type="number"].bfh-number').each(function () {
        var $number;
        $number = $(this);
        $number.bfhnumber($number.data());
    });

    $('.selectpicker').selectpicker({
        width: '100%',
        style: 'btn-select'
    });

    function recalc() {
        var summ = 0;
        var dataprice = 0;
        var number = 0;
       //$('#hoponhopoff').attr('data-price', currencyUSD * 20);

        var index = 0;
        var places = [];
        $(".bus-scheme .place.current", document.body).each(function () {
            places[index++] = $(this).attr('data-place');
            summ = summ + parseInt($(this).attr('data-price'));
        });
        $('#selectedPlaces').val(places.join('|'));

        $('.pm-box .bfh-number').each(function () {
            dataprice = parseInt($(this).attr('data-price'));
            number = $(this).val();
            // alert(number);
            summ = number * dataprice + summ;
        });
        $('#result').html(summ.toFloatStr(0, 1));
        var usdres = summ / currencyUSD
        $('#usdresult').html(usdres.roundTo(2));
    }

// При клике на кнопки выбора мест
// вызывается функция калькуляции
// и добавляется класс .current к выбранным местам
    $(function () {
        $('.bus-scheme').on('click', '.place:not(.reserved)', function () {
            $(this).toggleClass('current').toggleClass('free');
            recalc();
        });
    });
    $(function () {
        $('.bfh-number-btn').click(function () {
            recalc();
        });
    });

// Подсказки
    $(function () {
        $('[data-toggle="tooltip"]').tooltip();
    });


// Если галочка на "Я ознакомлен с офертой" стоит, то кнопка "купить" становится активной
    $('.accept').on('change', function () {
        $('.btn-buy').toggleClass('disabled');
    });


    $('#phoneTel').val(998);
    $('#phoneTel').inputmask("+999 (99) 999 99 99");


    var csrfToken = $('meta[name="csrf-token"]').attr("content");
    $(document).on('change', "#scheduleDay", function () {
        var day = $(this).val();
        $.ajax({
            type: "POST",
            url: "/ajax/get-route",
            data: {day: day, _token: csrfToken},
            cache: false,
            success: function (html) {
                $("#scheduleRoute").html(html);
                var route = $('#scheduleRoute').val();
                getScheduleTime(day, route);
                $('#scheduleRoute').selectpicker('refresh');
            }
        });
    });

    $("#scheduleRoute").change(function () {
        getScheduleTime($('#scheduleDay').val(), $(this).val());
    });

    function getScheduleTime(day, route) {
        $.ajax({
            type: "POST",
            url: "ajax/get-time",
            data: {day: day, route: route, _token: csrfToken},
            cache: false,
            success: function (html) {
                $("#scheduleTime").html(html);
                $('#scheduleTime').selectpicker('refresh');
                checkFreePlaces();
            }
        });
    }

    $("#orderForm").validate();
    $('#orderForm').ajaxForm({
            dataType: 'json',
            success: function (data) {
                if (data.success == false) {
                    $("#statusForm").html(data.message);
                } else {
                    $("#payment-params").html(data.message);
                    $(".bfh-number").each(function () {
                        var $number;
                        $number = $(this);
                        $number.bfhnumber($number.data());
                    });
                    $('#payment-params').collapse();
                }
            }
        }
    );

    function checkFreePlaces() {
        var day = $("#scheduleDay").val();
        var time = $("#scheduleTime").val();
        $.ajax({
            type: "POST",
            url: "ajax/get-free-places",
            data: {day: day, time: time, _token: csrfToken},
            dataType: 'json',
            cache: false,
            success: function (data) {
                $(".bus-scheme .place.reserved", document.body).each(function () {
                    $(this).removeClass('reserved').addClass('free');
                });
                $(data).each(function (index, value) {
                    $('.place-' + value).addClass('reserved').removeClass('free').removeClass('current');
                });
            }
        })
        ;
    }

    checkFreePlaces()
    var timerId = setInterval(checkFreePlaces, 5000)


    function payCard() {
        $("#payCardForm").validate();
        $('#payCardForm').ajaxForm({
            dataType: 'json',
            success: function (data) {
                if (data.success == false) {
                    $("#statusForm").html(data.message);
                } else {
                    $("#payment-params").html(data.message);
                    $('input[type="text"].bfh-number, input[type="number"].bfh-number').each(function () {
                            var $number;
                            $number = $(this);
                            $number.bfhnumber($number.data());
                        }
                    )
                    ;
                    $('#payment-params').collapse();
                }
            }
        });
        return false;
    }
});
