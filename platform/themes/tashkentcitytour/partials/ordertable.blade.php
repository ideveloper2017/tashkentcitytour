<div class="highlight payment-panel">
    <div class="row">
        <div class="col-sm-offset-2 col-sm-8 text-center">
            <div class="row">
                <div class="col-xs-6 col-md-5 col-md-offset-1">
                    <div class="radio">
                        <label class="radio-custom" data-initialize="radio">
                            <input class="sr-only" name="pay" id="pay-click" type="radio" value="opt" data-toggle="#pay-method-click">
                            {{ __('Payment through') }}<span class="visible-xs-inline">Click</span>
                        </label>
                        <img src="{{ Theme::asset()->url('img/click.jpg') }}" alt="Click" class="hidden-xs" />
                    </div>
                </div>
                <div class="col-xs-6 col-md-5 col-mda-offset-1">
                    <div class="radio">
                        <label class="radio-custom" data-initialize="radio">
                            <input class="sr-only" name="pay" id="pay-card" type="radio" value="opt2" data-toggle="#pay-method-card">
                            {{ __('Payment by card') }}
                        </label>
                        <img src="{{ Theme::asset()->url('img/card.jpg') }}" alt="Card" class="hidden-xs" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="highlight-table hidden" id="pay-method-click">
    <div class="table-responsive">
        <table class="table table-bordered">
            <tbody>
            <tr>
                <td>№ заказа</td>
                <td>Дата заказа</td>
                <td>Общая сумма</td>
            </tr>
            <tr>
                <td>{{ $order->id }} </td>
                <td>{{ date('d.m.Y H:i', strtotime($order->order_date))  }} </td>
                <td><span class="base-color">{{ number_format($order->total, 0, '.', ' ') }} сум</span></td>
            </tr>
            <tr>
                <td colspan="3">
                    <strong>Вы выбрали способ оплаты: </strong>
                    Оплата через CLICK
                    <div class="pull-right">
                        {!!  $clickButton !!}
                    </div>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
<div class="highlight hidden" id="pay-method-card">
    <div class="box">
        <div class="row margin-b">
            <div class="col-sm-3">
                <img src="{{ Theme::asset()->url('img/visa-master-card.jpg') }}" alt="" />
            </div>
            <div class="col-sm-9">
                <dl class="dl-horizontal">
                    <dt>Стоимость заказа: </dt>
                    <dd>{{number_format($order->total /$settings['currency']['usd'], 2, '.', '') }} $</dd>
                </dl>
                <!--dl class="dl-horizontal">
                    <dt>Заплатить до: </dt>
                    <dd>30 мая 10:25</dd>
                </dl -->
                <div class="separate"></div>
                <dl class="dl-horizontal dl-total">
                    <dt>Итого к оплате: </dt>
                    <dd class="base-color">{{ number_format($order->total / $settings['currency']['usd'], 2, '.', '')}} $</dd>
                </dl>
            </div>
        </div>
        <div class="row">
            <form action="site/thank" method="post" id="payCardForm" onsubmit="payCard(); false;">

            <div class="col-sm-5 col-xs-12">
                <div class="well">
                    <div class="form-horizontal">
                        <div class="form-group">
                            <label class="control-label">Номер карты <span class="base-color">*</span></label>
                            <input type="text" name="card_num" class="form-control">
                        </div>
                        <div class="form-group">
                            <label class="control-label">Действительна до  <span class="base-color">*</span></label>
                            <div class="row">
                                <div class="col-xs-6 col-sm-5">
                                    <div class="number-input">
                                        <input type="text" name="valid_m" class="form-control bfh-number" data-min="1" data-max="12" />
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-5">
                                    <div class="number-input">
                                        <input type="text" name="valid_y" class="form-control bfh-number"  data-max="<?= date('Y') + 10 ?>" data-min="<?= date('Y') ?>" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-7 col-xs-12">
                <div class="row">
                    <div class="col-md-4 col-sm-6 col-sm-offset-1 col-xs-8 col-xs-offset-2">
                        <div class="p-well margin-b">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label class="control-label">Выберите карту <span class="base-color">*</span></label>
                                    <select class="selectpicker">
                                        <option value="1">Visa</option>
                                        <option value="2">MasterCard</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="p-well">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <button type="submit" class="btn btn-red btn-block" id="cardCheckoutButton">
                                        {{ __('Checkout') }}</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <input type="hidden" name="orderId" value="<?= $order->id ?>">
            </form>

        </div>
    </div>
</div>
