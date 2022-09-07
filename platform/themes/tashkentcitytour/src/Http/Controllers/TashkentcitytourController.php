<?php

namespace Theme\Tashkentcitytour\Http\Controllers;
use Botble\Blog\Repositories\Interfaces\PostInterface;
use Botble\Price\Repositories\Interfaces\PriceInterface;
use Botble\Routes\Models\Reis;
use Botble\Routes\Models\Routes;
use Botble\Routes\Repositories\Interfaces\RoutesInterface;
use Botble\Tickets\Repositories\Interfaces\TicketsInterface;
use Illuminate\Http\Request;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Theme\Http\Controllers\PublicController;
use phpDocumentor\Reflection\Types\Collection;
use RvMedia;
use SeoHelper;
use SlugHelper;
use Theme;

class TashkentcitytourController extends PublicController
{


    public function getTickets(){
        $data=[];
        return Theme::scope('tickets',compact('data'))->render();
    }

    public function getRoutes(Request $request, BaseHttpResponse $response){
        SeoHelper::setTitle('Videos');
        Theme::breadcrumb()->add(__('Home'), url('/'))->add(__('Routes'));
        $collections=app(PriceInterface::class)->getModel()->get();

        $data=[];
        foreach($collections as $key=>$row){
            $data[$row->section][$row->key]=$row->value;
        }

        $settings=$data;
//        $settings=$collect->get('1');
//        dd($settings['ticketPrice']['adult']);
        return Theme::scope('route',compact('settings'))->render();
    }

    public function getRoute(Request $request, BaseHttpResponse $response){
        $day=$request->post('day');
        $routes=app(RoutesInterface::class)->getModel()->where('days','LIKE','%'.date('w', strtotime($day)).'%')->get();
        if (!count($routes)) {
            echo ('<option value="0">В этот день нет рейсов</option>');
        } else {
            foreach ($routes as $route) {
                echo '<option value="' . $route->id . '">' . $route->name . '</option>';
            }
        }
    }

    public function getTime(Request $request) {
        $route = $request->post('route');
        if ($route == 0) {
            die('<option value="0">В этот день нет рейсов</option>');
        }
        $day = $date =$request->post('day');
        $date = date('Y-m-d', strtotime($date));

        $reis=Reis::where('date',$date)->where('route_id',$route)->get()->toArray();
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

    public function getFreePlaces(Request $request) {
        $post = $request->post();
        if ($post !== null) {
            if(isset($post['day'])){
                $date = date("Y-m-d", strtotime($post['day']));
                $shedule = app(TicketsInterface::class)->getModel()->where('date',$date)->where('time',$post['time'])->get()->toArray();
                $pl = [];
                foreach ($shedule as $s) {
                    $pl[] = $s['place'];
                }
                echo(json_encode($pl));
            }
        }
    }


    public function getNewsVideos()
    {
        SeoHelper::setTitle('Videos');
        Theme::breadcrumb()->add(__('Home'), url('/'))->add('Video');

        $posts = app(PostInterface::class)->advancedGet([
            'condition' => [
                'posts.format_type' => 'video',
            ],
            'paginate'  => [
                'per_page'      => 10,
                'current_paged' => (int)request()->input('page', 1),
            ],
            'order_by'  => ['created_at' => 'DESC'],
        ]);

        $postsLayout = 'metro';

        return Theme::scope('videos', compact('posts', 'postsLayout'))->render();
    }


}
