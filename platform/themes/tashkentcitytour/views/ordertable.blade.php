<div class="highlight payment-panel">
    <div class="row">
        <div class="col-sm-offset-2 col-sm-8 text-center">
            <div class="row">
                <div class="col-xs-6 col-md-5 col-md-offset-1">
                    <div class="radio">
                        <label class="radio-custom" data-initialize="radio">
                            <input class="sr-only" name="pay" id="pay-click" type="radio" value="opt" data-toggle="#pay-method-click">
                            Оплата через<span class="visible-xs-inline">Click</span>
                        </label>
                        <img src="/images/img/click.jpg" alt="Click" class="hidden-xs" />
                    </div>
                </div>

                <div class="col-xs-6 col-md-5 col-mda-offset-1">
                    <div class="radio">
                        <label class="radio-custom" data-initialize="radio">
                            <input class="sr-only" name="pay" id="pay-card" type="radio" value="opt2" data-toggle="#pay-method-card">
                            Оплата через
                        </label>
                        <img src="/images/img/payme_01.png" alt="Card" class="hidden-xs" />
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
                <td><{{ $order->id }}</td>
                <td><?= date('d.m.Y H:i', strtotime($order->creation_date)) ?></td>
                <td><span class="base-color">{{ number_format($order->total, 0, '.', ' ') }} сум</span></td>
            </tr>
            <tr>
                <td colspan="3">
                    <strong>Вы выбрали способ оплаты: </strong>
                    Оплата через CLICK
                    <div class="pull-right">
                        {{ $clickButton }}
                    </div>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</div>

<div class="highlight-table hidden" id="pay-method-payme">
    <div class="table-responsive">
        <table class="table table-bordered">
            <tbody>
            <tr>
                <td>№ заказа</td>
                <td>Дата заказа</td>
                <td>Общая сумма</td>
            </tr>
            <tr>
                <td><{{ $order->id }}</td>
                <td><?= date('d.m.Y H:i', strtotime($order->creation_date)) ?></td>
                <td><span class="base-color">{{ number_format($order->total, 0, '.', ' ') }} сум</span></td>
            </tr>
            <tr>
                <td colspan="3">
                    <strong>Вы выбрали способ оплаты: </strong>
                    Оплата через Payme
                    <div class="pull-right">
                        {{ $paymeButton }}
                    </div>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</div>

<div class="highlight hidden" id="pay-method-card">
    <div class="table-responsive">
        <table class="table table-bordered">
            <tbody>
            <tr>
                <td>№ заказа</td>
                <td>Дата заказа</td>
                <td>Общая сумма</td>
            </tr>
            <tr>
                <td><{{ $order->id }}</td>
                <td><?= date('d.m.Y H:i', strtotime($order->creation_date)) ?></td>
                <td><span class="base-color">{{ number_format($order->total, 0, '.', ' ') }} сум</span></td>
            </tr>
            <tr>
                <td colspan="3">
                    <strong>Вы выбрали способ оплаты: </strong>
                    Оплата через Payme
                    <div class="pull-right">
                        {{ $paymeButton }}
                    </div>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
