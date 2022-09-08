/*
================================================================================
* Ѕиблиотека расширени€ стандартного JavaScript                                *

* Ќазвание:	Js_Veremax                                                     *
* ћодуль:	String                                                         *
* ¬ерси€: 	1.1                                                            *
* —айт:		http://garazh.biz                                              *
*                                                                              *
* јвтор: 	¬ерещако ћаксим ¬алерьевич (Veremax)                           *
*  омпани€:	ќќќ "√енѕолис", http://genpolis.ru                             *
================================================================================
*/


String.prototype.trimRight=function()
// убирает все пробелы в конце строки
{
  var r=/\s+$/g;
  return this.replace(r,'');
}

/* *************************************************************************** */

String.prototype.trimLeft=function()
// убирает все пробелы в начале строки
{
  var r=/^\s+/g;
  return this.replace(r,'');
}

/* *************************************************************************** */

String.prototype.trim=function()
// убирает все пробелы в начале и в конце строки
{
  return this.trimRight().trimLeft();
}

/* *************************************************************************** */

String.prototype.trimMiddle=function()
// убирает все пробелы в начале и в конце строки
// помимо этого замен€ет несколько подр€д
// идущих пробелов внутри строки на один пробел
{
  var r=/\s\s+/g;
  return this.trim().replace(r,' ');
}

/* *************************************************************************** */

String.prototype.trimAll=function()
// убирает все пробелы в строке s
{
  var r=/\s+/g;
  return this.replace(r,'');
}

/* *************************************************************************** */

String.prototype.repeat=function(n)
// повтор€ет строку n раз
{
  var r='';
  if (typeof(n)=='number')
    for (var i=1; i<=n; i++) r+=this;
  return r;
}

/* *************************************************************************** */

String.prototype.padRight=function(n,c)
// дополн€ет строку справа строкой c
// или обрезает исходную строку справа до длины n
{
  var r='';
  var s=' ';

  if (typeof(c)=='string')
    if (c.length>0)
      s=c;

  if (typeof(n)=='number')
  {
    if (n>0)
    {
      var l=this.length;
      if (l>n)
        r=this.substr(0,n);
      else
        if (l==n)
          r=this;
        else
        {
          r=this;
          while (r.length<n) r+=s;
          r=r.substr(0,n);
        }
    }
  }
  return r;
}

/* *************************************************************************** */

String.prototype.padLeft=function(n,c)
// дополн€ет строку слева строкой c
// или обрезает исходную строку слева до длины n
{
  var r='';
  var s=' ';

  if (typeof(c)=='string')
    if (c.length>0)
      s=c;

  if (typeof(n)=='number')
  {
    if (n>0)
    {
      var l=this.length;
      if (l>n)
        r=this.substr(l-n);
      else
        if (l==n)
          r=this;
        else
        {
          r=this;
          while (r.length<n) r=s+r;
          r=r.substr(r.length-n);
        }
    }
  }
  return r;
}

/* *************************************************************************** */

String.prototype.isDigits=function()
// провер€ет, €вл€етс€ ли строка
// последовательностью цифр
{
  var r=/^\d+$/;
  return r.test(this);
}

/* *************************************************************************** */

String.prototype.isInt=function()
// провер€ет, €вл€етс€ ли строка целым числом
{
  var r=/^[+\-]?\d+$/;
  return r.test(this);
}

/* *************************************************************************** */

String.prototype.isIntStr=function()
// провер€ет, €вл€етс€ ли строка
// форматированным целым числом
// с (необ€зательным) разделением триад цифр пробелом
{
  var r1=/^(?:[+\-](?:[ ]?))?(?:\d{1,3})(?:[ ]\d{3})+$/;
  var r2=/^(?:[+\-](?:[ ])?)?\d+$/;

  return r1.test(this.trim()) || r2.test(this.trim());
}

/* *************************************************************************** */

String.prototype.isFloat=function()
// провер€ет, €вл€етс€ ли строка дробным числом
// с разделителем "точка"
{
  var r=/^[+\-]?\d+(?:\.\d+)?$/;
  return r.test(this);
}

/* *************************************************************************** */

String.prototype.isFloatStr=function()
// провер€ет, €вл€етс€ ли строка форматированным
// дробным числом с разделителем "зап€та€" или "точка"
// и (необ€зательно) с разделением триад цифр пробелом
{
  var r1=/^(?:[+\-](?:[ ]?))?(?:\d{1,3})(?:\s\d{3})+(?:[\.,]\d+)?$/;
  var r2=/^(?:[+\-](?:[ ])?)?\d+(?:[\.,]\d+)?$/;

  return r1.test(this.trim()) || r2.test(this.trim());
}

/* *************************************************************************** */

String.prototype.isDate=function()
// провер€ет, €вл€етс€ ли строка
// датой в формате YYYY-MM-DD
{
  var r=/^(\d{4})-(\d{2})-(\d{2})$/;
  if (r.test(this))
  {
    var y=RegExp.$1*1;
    var m=RegExp.$2*1;
    var d=RegExp.$3*1;
    var test=new Date(y,m-1,d);
    return
    (
      test.getFullYear()==y &&
      test.getMonth()==m-1 &&
      test.getDate()==d
    );
  }
  else
    return false;
}

/* *************************************************************************** */

String.prototype.isDateStr=function()
// провер€ет, €вл€етс€ ли строка
// датой в формате DD.MM.YYYY
{
  var r=/^(\d{2})-(\d{2})-(\d{4})$/;
  if (r.test(this))
  {
    var y=RegExp.$3*1;
    var m=RegExp.$2*1;
    var d=RegExp.$1*1;
    var test=new Date(y,m-1,d);
    return
    (
      test.getFullYear()==y &&
      test.getMonth()==m-1 &&
      test.getDate()==d
    );
  }
  else
    return false;
}

/* *************************************************************************** */

String.prototype.toInt=function()
// конвертирует строку в целое число
// в случае ошибки возвращает false
{
  if (this.isIntStr())
    return (this.trimAll())*1;
  else
    return false;
}

/* *************************************************************************** */

String.prototype.toFloat=function()
// конвертирует строку в дробное число
// в случае ошибки возвращает false
{
  if (this.isFloatStr())
    return (this.trimAll().replace(',','.'))*1;
  else
    return false;
}

/* *************************************************************************** */

String.prototype.toDateStr=function()
// конвертирует дату из формата YYYY-MM-DD
// в формат DD.MM.YYYY
// в случае ошибки возвращает false
{
  if (this.isDate())
    return this.substr(8,2)+'.'+
    this.substr(5,2)+'.'+this.substr(0,4);
  else
    return false;
}

/* *************************************************************************** */

String.prototype.toDate=function()
// конвертирует дату из формата DD.MM.YYYY
// в формат YYYY-MM-DD
// в случае ошибки возвращает false
{
  if (this.isDateStr())
    return this.substr(6,4)+'-'+
    this.substr(3,2)+'-'+this.substr(0,2);
  else
    return false;
}

/* *************************************************************************** */

String.prototype.toDateObject=function()
// конвертирует дату из формата YYYY-MM-DD
// в объект Date
// в случае ошибки возвращает false
{
  if (this.isDate())
    return new Date
      (
        this.substr(0,4)*1,
        this.substr(5,2)*1-1,
        this.substr(8,2)*1
      );
  else
    return false;
}

/* *************************************************************************** */
