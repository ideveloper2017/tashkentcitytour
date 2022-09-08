/*
================================================================================
* ���������� ���������� ������������ JavaScript                                *

* ��������:	Js_Veremax                                                     *
* ������:	String                                                         *
* ������: 	1.1                                                            *
* ����:		http://garazh.biz                                              *
*                                                                              *
* �����: 	�������� ������ ���������� (Veremax)                           *
* ��������:	��� "��������", http://genpolis.ru                             *
================================================================================
*/


String.prototype.trimRight=function()
// ������� ��� ������� � ����� ������
{
  var r=/\s+$/g;
  return this.replace(r,'');
}

/* *************************************************************************** */

String.prototype.trimLeft=function()
// ������� ��� ������� � ������ ������
{
  var r=/^\s+/g;
  return this.replace(r,'');
}

/* *************************************************************************** */

String.prototype.trim=function()
// ������� ��� ������� � ������ � � ����� ������
{
  return this.trimRight().trimLeft();
}

/* *************************************************************************** */

String.prototype.trimMiddle=function()
// ������� ��� ������� � ������ � � ����� ������
// ������ ����� �������� ��������� ������
// ������ �������� ������ ������ �� ���� ������
{
  var r=/\s\s+/g;
  return this.trim().replace(r,' ');
}

/* *************************************************************************** */

String.prototype.trimAll=function()
// ������� ��� ������� � ������ s
{
  var r=/\s+/g;
  return this.replace(r,'');
}

/* *************************************************************************** */

String.prototype.repeat=function(n)
// ��������� ������ n ���
{
  var r='';
  if (typeof(n)=='number')
    for (var i=1; i<=n; i++) r+=this;
  return r;
}

/* *************************************************************************** */

String.prototype.padRight=function(n,c)
// ��������� ������ ������ ������� c
// ��� �������� �������� ������ ������ �� ����� n
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
// ��������� ������ ����� ������� c
// ��� �������� �������� ������ ����� �� ����� n
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
// ���������, �������� �� ������
// ������������������� ����
{
  var r=/^\d+$/;
  return r.test(this);
}

/* *************************************************************************** */

String.prototype.isInt=function()
// ���������, �������� �� ������ ����� ������
{
  var r=/^[+\-]?\d+$/;
  return r.test(this);
}

/* *************************************************************************** */

String.prototype.isIntStr=function()
// ���������, �������� �� ������
// ��������������� ����� ������
// � (��������������) ����������� ����� ���� ��������
{
  var r1=/^(?:[+\-](?:[ ]?))?(?:\d{1,3})(?:[ ]\d{3})+$/;
  var r2=/^(?:[+\-](?:[ ])?)?\d+$/;

  return r1.test(this.trim()) || r2.test(this.trim());
}

/* *************************************************************************** */

String.prototype.isFloat=function()
// ���������, �������� �� ������ ������� ������
// � ������������ "�����"
{
  var r=/^[+\-]?\d+(?:\.\d+)?$/;
  return r.test(this);
}

/* *************************************************************************** */

String.prototype.isFloatStr=function()
// ���������, �������� �� ������ ���������������
// ������� ������ � ������������ "�������" ��� "�����"
// � (�������������) � ����������� ����� ���� ��������
{
  var r1=/^(?:[+\-](?:[ ]?))?(?:\d{1,3})(?:\s\d{3})+(?:[\.,]\d+)?$/;
  var r2=/^(?:[+\-](?:[ ])?)?\d+(?:[\.,]\d+)?$/;

  return r1.test(this.trim()) || r2.test(this.trim());
}

/* *************************************************************************** */

String.prototype.isDate=function()
// ���������, �������� �� ������
// ����� � ������� YYYY-MM-DD
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
// ���������, �������� �� ������
// ����� � ������� DD.MM.YYYY
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
// ������������ ������ � ����� �����
// � ������ ������ ���������� false
{
  if (this.isIntStr())
    return (this.trimAll())*1;
  else
    return false;
}

/* *************************************************************************** */

String.prototype.toFloat=function()
// ������������ ������ � ������� �����
// � ������ ������ ���������� false
{
  if (this.isFloatStr())
    return (this.trimAll().replace(',','.'))*1;
  else
    return false;
}

/* *************************************************************************** */

String.prototype.toDateStr=function()
// ������������ ���� �� ������� YYYY-MM-DD
// � ������ DD.MM.YYYY
// � ������ ������ ���������� false
{
  if (this.isDate())
    return this.substr(8,2)+'.'+
    this.substr(5,2)+'.'+this.substr(0,4);
  else
    return false;
}

/* *************************************************************************** */

String.prototype.toDate=function()
// ������������ ���� �� ������� DD.MM.YYYY
// � ������ YYYY-MM-DD
// � ������ ������ ���������� false
{
  if (this.isDateStr())
    return this.substr(6,4)+'-'+
    this.substr(3,2)+'-'+this.substr(0,2);
  else
    return false;
}

/* *************************************************************************** */

String.prototype.toDateObject=function()
// ������������ ���� �� ������� YYYY-MM-DD
// � ������ Date
// � ������ ������ ���������� false
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
