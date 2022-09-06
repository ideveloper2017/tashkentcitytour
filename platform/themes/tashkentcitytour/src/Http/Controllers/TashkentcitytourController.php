<?php

namespace Theme\Tashkentcitytour\Http\Controllers;
use Botble\Blog\Repositories\Interfaces\PostInterface;
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
        Theme::breadcrumb()->add(__('Home'), url('/'))->add('Video');
        $settings=collect();
      return Theme::scope('route',compact('settings'))->render();
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
