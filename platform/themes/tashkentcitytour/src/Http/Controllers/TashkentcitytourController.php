<?php

namespace Theme\Tashkentcitytour\Http\Controllers;
use Botble\Blog\Repositories\Interfaces\PostInterface;
use Botble\Price\Repositories\Interfaces\PriceInterface;
use Botble\Routes\Models\Order;
use Botble\Routes\Models\Reis;
use Botble\Routes\Models\Routes;
use Botble\Routes\Repositories\Interfaces\RoutesInterface;
use Botble\Tickets\Models\Tickets;
use Botble\Tickets\Repositories\Interfaces\TicketsInterface;
use Illuminate\Http\Request;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Theme\Http\Controllers\PublicController;
use RvMedia;
use SeoHelper;
use SlugHelper;
use Theme;

class TashkentcitytourController extends PublicController
{


    public function createOrder(Request $request)
    {
        $this->layout = false;

        $collections = app(PriceInterface::class)->getModel()->get();
        $data = [];
        foreach ($collections as $key => $row) {
            $data[$row->section][$row->key] = $row->value;
        }

        $settings = $data;

        $days = [
            'day_1' => 'Monday',
            'day_2' => 'Tuesday',
            'day_3' => 'Wednesday',
            'day_4' => 'Thursday',
            'day_5' => 'Friday',
            'day_6' => 'Saturday',
            'day_0' => 'Sunday',
        ];

        $totalPlacesAmound = 0;
        $orderForm = $request->post();
        $phone = preg_replace("#[^0-9]*#is", "", $orderForm['phone']);

        $places = $orderForm['selectedPlaces'];
        $places = explode('|', $places);
        $places = array_filter(
            $places, function ($el) {
            return !empty($el);
        }
        );
        $totalSelectedPlaces = count($places);

        if ($orderForm['scheduleTime'] == 0) {
            die(json_encode(array('success' => false, 'message' => '<div class="alert alert-danger"><button aria-label="Close" data-dismiss="alert" class="close" type="button"><span aria-hidden="true">×</span></button>Вы должны выбрать день и время экскурсии</div>')));
        }

        $total = 0;
        $total += $orderForm['totalAdult'];
        $total += $orderForm['totalChildren'];
//        $total += $orderForm['totalDisabled'];
//        $total += $orderForm['totalHoponhopoff'];
        if ($total < 1) {
            die(json_encode(array('success' => false, 'message' => '<div class="alert alert-danger"><button aria-label="Close" data-dismiss="alert" class="close" type="button"><span aria-hidden="true">×</span></button>Выберите необходимое количество билетов</div>')));
        }

//        $captcha = $this->createAction('captcha')->getVerifyCode();
//        $verifyCode = $request->post('verifyCode');
//        if (isset($verifyCode)) {
//            if ($captcha != $verifyCode) {
//                die(json_encode(array('success' => false, 'message' => '<div class="alert alert-danger"><button aria-label="Close" data-dismiss="alert" class="close" type="button"><span aria-hidden="true">×</span></button>Вы неверно ввели проверочный код</div>')));
//            }
//        }

        if ($totalSelectedPlaces) {
            if ($totalSelectedPlaces <= $total) {
                $totalPlacesAmound = $totalSelectedPlaces * $settings['ticketPrice']['selectPlace'];
            } else {
                $totalPlacesAmound = $total * $settings['ticketPrice']['selectPlace'];
            }
        }


//        $settings->set('usd', 2560.42, 'currency', 'integer');
//        pre($settings->get('currency.usd'), 1);
        $date = date("Y-m-d H:i:s", strtotime($orderForm['scheduleDay'].' '. date('H:i:s')));
        $order = app(Order::class);
        $orderData = [
            'name' => $orderForm['name'],
            'email' => $orderForm['email'],
            'phone' => $orderForm['phone'],
            'order_date'=>$date,
            'total' =>
                ($orderForm['totalAdult'] * $settings['ticketPrice']['adult']) +
                ($orderForm['totalChildren'] * $settings['ticketPrice']['children'])
//                ($orderForm['totalDisabled'] * $settings['ticketPrice']['disabled'])
            ,
            'order_hash' => md5(time())
        ];
        //$order->setAttributes($orderData);
        $order->fill($orderData);
        if ($order->save()) {
            $order_id = $order->id;
        } else {
            pre($order->getErrors());
        }
        /* $raznitsa = (strtotime($orderForm['scheduleDay'] . ' ' . $orderForm['scheduleTime']) - time()) / 60;
          if ($raznitsa < 90) {
          $date = date("Y-m-d", strtotime('next ' . $days[$orderForm['scheduleDay']]));
          } else {
          $date = date("Y-m-d", strtotime($days[$orderForm['scheduleDay']]));
          } */


        $newTickets = [];

        if ($orderForm['totalAdult'] > 0) {
            for ($i = 1; $i <= $orderForm['totalAdult']; $i++) {
                $place = 0;
                if (count($places)) {
                    $place = $places[0];
                    unset($places[0]);
                    sort($places);
                }
                $this->createTicket($order_id, 'adult', $date, $orderForm['scheduleTime'], $place);
            }
        }
        if ($orderForm['totalChildren'] > 0) {
            for ($i = 1; $i <= $orderForm['totalChildren']; $i++) {
                $place = 0;
                if (count($places)) {
                    $place = $places[0];
                    unset($places[0]);
                    sort($places);
                }
                $this->createTicket($order_id, 'children', $date, $orderForm['scheduleTime'], $place);
            }
        }
//        if ($orderForm['totalDisabled'] > 0) {
//            for ($i = 1; $i <= $orderForm['totalDisabled']; $i++) {
//                $place = 0;
//                if (count($places)) {
//                    $place = $places[0];
//                    unset($places[0]);
//                    sort($places);
//                }
//                $this->createTicket($order_id, 'disabled', $date, $orderForm['scheduleTime'], $place);
//            }
//        }
//        if ($orderForm['totalHoponhopoff'] > 0) {
//            for ($i = 1; $i <= $orderForm['totalHoponhopoff']; $i++) {
//                $place = 0;
//                if (count($places)) {
//                    $place = $places[0];
//                    unset($places[0]);
//                    sort($places);
//                }
//                $this->createTicket($order_id, 'hoponhopoff', $date, $orderForm['scheduleTime'], $place);
//            }
//        }

        $secret = "tgzjBmfQWPHUbAO#P6Fswr"; //Нужно заменить параметры на полученные
        $date = date("Y-m-d h:i:s");
        $merchantID = 221; //Нужно заменить параметр на полученный ID
        $merchantUserID = 177;
        $serviceID = 176;
        $transID = $order->id;
        $transAmount = number_format($order->total, 0, '.', '');
        $signString = md5($date . $secret . $serviceID . $transID . $transAmount);
        $userEmail = $orderForm['email'];

        $data = array(
            "foods" => array(
                "0" => array(
                    "name" => "Экскурсия по Ташкенту",
                    "count" => $total,
                    "price" => number_format($order->total, 0, '.', '')
                ),
            ),
            "client" => array(
                "name" => $orderForm['name'],
                "phone" => $orderForm['phone'],
                "address" => ""
            )
        );
        $encoded = base64_encode(serialize($data));

        $clickButton = <<<CODE
<form action="https://my.click.uz/pay/" id="click_form" method="post" target="_blank">
	<input id="click_amount_field" type="hidden" name="MERCHANT_TRANS_AMOUNT" value="$transAmount" class="click_input" />
	<input type="hidden" name="MERCHANT_ID" value="$merchantID"/>
	<input type="hidden" name="MERCHANT_USER_ID" value="$merchantUserID"/>
	<input type="hidden" name="MERCHANT_SERVICE_ID" value="$serviceID"/>
	<input type="hidden" name="MERCHANT_TRANS_ID" value="$transID"/>
	<input type="hidden" name="MERCHANT_TRANS_NOTE" value="Билеты на посещение экскурсии по Ташкенту"/>
	<input type="hidden" name="MERCHANT_USER_PHONE" value="$phone"/>
	<input type="hidden" name="MERCHANT_USER_EMAIL" value="$userEmail"/>
	<input type="hidden" name="SIGN_TIME" value="$date"/>
	<input type="hidden" name="SIGN_STRING" value="$signString"/>
	<input type="hidden" name="MERCHANT_TRANS_NOTE_BASE64" value="$encoded"/>
	<button class="click_logo"><i></i>Оплатить через CLICK</button>
</form>
<div id="click_button" class="field" style="display: none;">
	<button type="submit" class="click_logo"><i></i>Оплатить через CLICK</button>
</div>
CODE;

        $clickPayme = <<<CODE
<form action="https://my.click.uz/pay/" id="click_form" method="post" target="_blank">
	<input id="click_amount_field" type="hidden" name="MERCHANT_TRANS_AMOUNT" value="$transAmount" class="click_input" />
	<input type="hidden" name="MERCHANT_ID" value="$merchantID"/>
	<input type="hidden" name="MERCHANT_USER_ID" value="$merchantUserID"/>
	<input type="hidden" name="MERCHANT_SERVICE_ID" value="$serviceID"/>
	<input type="hidden" name="MERCHANT_TRANS_ID" value="$transID"/>
	<input type="hidden" name="MERCHANT_TRANS_NOTE" value="Билеты на посещение экскурсии по Ташкенту"/>
	<input type="hidden" name="MERCHANT_USER_PHONE" value="$phone"/>
	<input type="hidden" name="MERCHANT_USER_EMAIL" value="$userEmail"/>
	<input type="hidden" name="SIGN_TIME" value="$date"/>
	<input type="hidden" name="SIGN_STRING" value="$signString"/>
	<input type="hidden" name="MERCHANT_TRANS_NOTE_BASE64" value="$encoded"/>
	<button class="click_logo"><i></i>Оплатить через CLICK</button>
</form>
<div id="click_button" class="field" style="display: none;">
	<button type="submit" class="click_logo"><i></i>Оплатить через CLICK</button>
</div>
CODE;
       echo (json_encode(array('success' => true, 'message' =>Theme::partial('ordertable',['settings'=>$settings,'order' => $order, 'clickButton' => $clickButton,'clickPayme'=>$clickPayme]))));
    }


    protected function createTicket($order, $type = 'adult', $date, $time, $place = 0) {

        $reis = Reis::where(['date' => $date, 'time' => $time])->first();
        if ($reis === null) {
            $reis = new Reis();
            $reis->date = $date;
            $reis->time = $time;
            $reis->save();
        }

//        $settings = Yii::$app->settings;
        $collections=app(PriceInterface::class)->getModel()->get();
        $data=[];
        foreach($collections as $key=>$row){
            $data[$row->section][$row->key]=$row->value;
        }
        $settings=$data;
        $ticket = new Tickets();
        $randNum = rand(10000000, 99999999);
        $price = $settings['ticketPrice'][$type];
        if ($type == 'hoponhopoff') {
            $price = $price * $settings['currency']['usd'];
        }
        $amount = $total = $price;

        if ($place > 0) {
            if ($type == 'hoponhopoff') {
                $total = + $amount + ($settings['ticketPrice']['selectPlace'] / $settings['currency']['usd']);
            } else {
                $total = + $amount + $settings['ticketPrice']['selectPlace'];
            }
        }
        $data = [
            'order_id' => $order,
            'type' => $type,
            'number' => $randNum,
            'amount' => ceil($amount),
            'total' => ceil($total),
            'date' => $date,
            'time' => $time,
            'place' => $place,
        ];
        $ticket->fill($data);
        if ($ticket->save()) {
          //  $reis->updateCounters(['total' => 1]);
            return $ticket;
        } else {
            pre($ticket->getErrors(), 1);
            return false;
        }
    }

    public function getShedules(){
        $data=[];
        return Theme::scope('shedules',compact('data'))->render();
    }

    public function getTickets(){
        $data=[];
        return Theme::scope('tickets',compact('data'))->render();
    }

    public function getRoutes(Request $request, BaseHttpResponse $response)
    {
        SeoHelper::setTitle('Videos');
        Theme::breadcrumb()->add(__('Home'), url('/'))->add(__('Routes'));
        $collections = app(PriceInterface::class)->getModel()->get();

        $data = [];
        foreach ($collections as $key => $row) {
            $data[$row->section][$row->key] = $row->value;
        }

        $settings = $data;
//        $settings=$collect->get('1');
//        dd($settings['ticketPrice']['adult']);
        return Theme::scope('route', compact('settings'))->render();
    }

    public function getRoute(Request $request, BaseHttpResponse $response)
    {
        $day = $request->post('day');
        $routes = app(RoutesInterface::class)->getModel()->where('days', 'LIKE', '%' . date('w', strtotime($day)) . '%')->get();
        if (!count($routes)) {
            echo('<option value="0">В этот день нет рейсов</option>');
        } else {
            foreach ($routes as $route) {
                echo '<option value="' . $route->id . '">' . $route->name . '</option>';
            }
        }
    }

    public function getTime(Request $request)
    {
        $route = $request->post('route');
        if ($route == 0) {
            die('<option value="0">В этот день нет рейсов</option>');
        }
        $day = $date = $request->post('day');
        $date = date('Y-m-d', strtotime($date));

        $reis = Reis::where('date', $date)->where('route_id', $route)->get()->toArray();
        $r = [];
        if ($reis !== null) {
            foreach ($reis as $v) {
                $r[$v['date']][$v['time']] = $v['total'];
            }
        }
        $times = Routes::find($route);
        $times = explode("\n", $times->times);
        foreach ($times as $time) {
            $text = '';
            $time = trim($time);
            $tInt = $time . ':00';
            if (isset($r[$date][$tInt]) && $r[$date][$tInt] < 54) {
                if ($r[$date][$tInt] > 40) {
                    $text = ' (осталось мест: ' . (54 - $r[$date][$tInt]) . ')';
                }
                echo '<option value="' . $time . '">' . $time . $text . '</option>';
            } else {
                if (isset($r[$date][$tInt]) && $r[$date][$tInt] == 54) {
                    echo '<option value="' . $time . '" disabled="disabled">' . $time . ' (мест нет)</option>';
                } else {
                    echo '<option value="' . $time . '">' . $time . '</option>';
                }
            }
        }
    }

    public function getFreePlaces(Request $request)
    {
        $post = $request->post();
        if ($post !== null) {
            if (isset($post['day'])) {
                $date = date("Y-m-d", strtotime($post['day']));
                $shedule = app(TicketsInterface::class)->getModel()->where('date', $date)->where('time', $post['time'])->get()->toArray();
                $pl = [];
                foreach ($shedule as $s) {
                    $pl[] = $s['place'];
                }
                echo(json_encode($pl));
            }
        }
    }



    public function thank(Request $request){

        $orderId = $request->post('orderId');
        $post = $request->post();
        $order = Order::find($orderId);
        if ($order === null) {
            return redirect(['index']);
        }

        $order->fill(['card_num' => $post['card_num'], 'valid_m' => $post['valid_m'], 'valid_y' => $post['valid_y']]);
        $order->save();

        return Theme::scope('thank', ['order' => $order])->render();
    }

    public function getNewsVideos()
    {
        SeoHelper::setTitle('Videos');
        Theme::breadcrumb()->add(__('Home'), url('/'))->add('Video');

        $posts = app(PostInterface::class)->advancedGet([
            'condition' => [
                'posts.format_type' => 'video',
            ],
            'paginate' => [
                'per_page' => 10,
                'current_paged' => (int)request()->input('page', 1),
            ],
            'order_by' => ['created_at' => 'DESC'],
        ]);

        $postsLayout = 'metro';

        return Theme::scope('videos', compact('posts', 'postsLayout'))->render();
    }




}
