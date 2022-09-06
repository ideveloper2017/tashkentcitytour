$('#phoneTel').val(998);
$('#phoneTel').inputmask("+999 (99) 999 99 99");


$("#scheduleDay").change(function () {
    var day = $(this).val();
    $.ajax({
        type: "POST", url: "' . yii\helpers\Url::to('site/get-route') . '",
        data: {day: day, _csrf: csrfToken},
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
    getScheduleTime($('#scheduleDay').val(), $(this).val());});

    function getScheduleTime(day, route) {
        $.ajax({
            type: "POST", url: "' . yii\helpers\Url::to('site/get-time') . '",
            data: {day: day, route: route, _csrf: csrfToken},
            cache: false,
            success: function (html) {
                $("#scheduleTime").html(html);
                $('#scheduleTime').selectpicker('refresh');checkFreePlaces();}
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
            type: "POST", url: "' . yii\helpers\Url::to('site/get-free-places') . '",
            data: {day: day, time: time, _csrf: csrfToken},
            dataType:'json',
        cache: false,
            success:function (data) {
            $(".bus-scheme .place.reserved", document.body).each(function () {
                $(this).removeClass('reserved').addClass('free');
            });
            $(data).each(function (index, value) {
                $('.place-'+value).addClass('reserved').removeClass('free').removeClass('current');
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
