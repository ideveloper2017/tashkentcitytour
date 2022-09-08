/*
================================================================================
* ���������� ���������� ������������ JavaScript                                *
*                                                                              *
* ��������:	Js_Veremax                                                     *
* ������:	���                                                            *
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
/* *************************************************************************** */
/* *************************************************************************** */

Number.prototype.isInt=function()
// ���������� True, ���� ����� �������� �����
{
  return (Math.round(this)==this);
}

/* *************************************************************************** */

Number.prototype.roundTo=function(n)
// ��������� ����� �� ��������� ���������� n
// ������ ����� (��� �����) �������
{
  var x=0;
  if (typeof(n)=='number')
    if (n.isInt())
      if (n>=-6 && n<=6) x=n;
  x=Math.pow(10,x);
  return Math.round(this*x)/x;
}

/* *************************************************************************** */

Number.prototype.toFloatStr=function(n,triads)
// ������������ ������� ����� � ��������������� ������
// � ����������� ������ ����� ������� n � � �����������
// ����� ���� ��������� (��� triads!=0)
// � ������ ������ ���������� false
{
  var s,d=0,k,m;

  if (typeof(n)=='number')
    if (n.isInt())
      if (n>=-6 && n<=6) d=n;

  s=this.roundTo(d).toString().replace('.',',');

  if (d>0)
  {
    k=s.indexOf(',');
    if (k==-1)
      s+=','+'0'.repeat(d);
    else
      s+='0'.repeat(d-(s.length-k-1));
  }

  k=s.indexOf(',');
  if (k==-1) k=s.length;
  m=s.indexOf('-');
  if (m==-1)
    m=0;
  else
    m=1;

  if (triads)
    for (d=k-3;d>m;d=d-3)
    {
      s=s.substr(0,d)+' '+s.substr(d,s.length-d+1);
    }
    
  return s;
}

/* *************************************************************************** */

Number.prototype.toPhrase=function(c)
// ����� �������� ��� ����� �� 0 �� 999 ����������
// ����� �������� �������� "������": RUB,USD,EUR (�� ��������� RUB)
{
  var x=this.roundTo(2);
  if (x<0 || x>999999999999999.99) return false;

  var currency='RUB';
  if (typeof(c)=='string')
    currency=c.trimAll().toUpperCase();

  if (currency=='RUR') currency='RUB';
  if (currency!='RUB' && currency!='USD' && currency!='EUR') return false;

  var groups=new Array();

  groups[0]=new Array();
  groups[1]=new Array();
  groups[2]=new Array();
  groups[3]=new Array();
  groups[4]=new Array();

  groups[9]=new Array();

// �����
// �� ���������
  groups[0][-1]={'RUB': '������', 'USD': '�������� ���', 'EUR': '����'};
//����������
  groups[0][1]={'RUB': '�����', 'USD': '������ ���', 'EUR': '����'};
  groups[0][2]={'RUB': '�����', 'USD': '������� ���', 'EUR': '����'};
  groups[0][3]={'RUB': '�����', 'USD': '������� ���', 'EUR': '����'};
  groups[0][4]={'RUB': '�����', 'USD': '������� ���', 'EUR': '����'};

// ������
// �� ���������
  groups[1][-1]='�����';
//����������
  groups[1][1]='������';
  groups[1][2]='������';
  groups[1][3]='������';
  groups[1][4]='������';

// ��������
// �� ���������
  groups[2][-1]='���������';
//����������
  groups[2][1]='�������';
  groups[2][2]='��������';
  groups[2][3]='��������';
  groups[2][4]='��������';

// ���������
// �� ���������
  groups[3][-1]='����������';
//����������
  groups[3][1]='��������';
  groups[3][2]='���������';
  groups[3][3]='���������';
  groups[3][4]='���������';

// ���������
// �� ���������
  groups[4][-1]='����������';
//����������
  groups[4][1]='��������';
  groups[4][2]='���������';
  groups[4][3]='���������';
  groups[4][4]='���������';

// �������
// �� ���������
  groups[9][-1]={'RUB': '������', 'USD': '������', 'EUR': '������'};
//����������
  groups[9][1]={'RUB': '�������', 'USD': '����', 'EUR': '����'};
  groups[9][2]={'RUB': '�������', 'USD': '�����', 'EUR': '�����'};
  groups[9][3]={'RUB': '�������', 'USD': '�����', 'EUR': '�����'};
  groups[9][4]={'RUB': '�������', 'USD': '�����', 'EUR': '�����'};


// ����� � �����
// ���� ������ ������, ���� 4 ������ � ����
  var names=new Array();
  names[1]={0: '����', 1: '����', 2: '����', 3: '����', 4: '����'};
  names[2]={0: '���', 1: '���', 2: '���', 3: '���', 4: '���'};
  names[3]='���';
  names[4]='������';
  names[5]='����';
  names[6]='�����';
  names[7]='����';
  names[8]='������';
  names[9]='������';
  names[10]='������';
  names[11]='�����������';
  names[12]='����������';
  names[13]='����������';
  names[14]='������������';
  names[15]='����������';
  names[16]='�����������';
  names[17]='����������';
  names[18]='������������';
  names[19]='������������';
  names[20]='��������';
  names[30]='��������';
  names[40]='�����';
  names[50]='���������';
  names[60]='����������';
  names[70]='���������';
  names[80]='�����������';
  names[90]='���������';
  names[100]='���';
  names[200]='������';
  names[300]='������';
  names[400]='���������';
  names[500]='�������';
  names[600]='��������';
  names[700]='�������';
  names[800]='���������';
  names[900]='���������';


  var r='';
  var i,j;

  var y=Math.floor(x);

// ���� �� ���� ������
  if (y>0)
  {
  // ������� ������ � �������, ��������, ����������, ����������� � �����������
    var t=new Array();

    for (i=0;i<=4;i++)
    {
      t[i]=y%1000;
      y=Math.floor(y/1000);  
    }

    var d=new Array();

  // ������� � ������ ������ �����, ������� � �������
    for (i=0;i<=4;i++)
    {
      d[i]=new Array();
      d[i][0]=t[i]%10; // �������
      d[i][10]=t[i]%100-d[i][0]; // �������
      d[i][100]=t[i]-d[i][10]-d[i][0]; // �����
      d[i][11]=t[i]%100; // ��� ������ ����� � ���� �����
    }

    for (i=4; i>=0; i--)
    {
      if (t[i]>0)
      {
        if (names[d[i][100]])
          r+=' '+ ((typeof(names[d[i][100]])=='object')?(names[d[i][100]][i]):(names[d[i][100]]));

        if (names[d[i][11]])
          r+=' '+ ((typeof(names[d[i][11]])=='object')?(names[d[i][11]][i]):(names[d[i][11]]));
        else
        {
          if (names[d[i][10]]) r+=' '+ ((typeof(names[d[i][10]])=='object')?(names[d[i][10]][i]):(names[d[i][10]]));
          if (names[d[i][0]]) r+=' '+ ((typeof(names[d[i][0]])=='object')?(names[d[i][0]][i]):(names[d[i][0]]));
        }
         
        if (names[d[i][11]])  // ���� ���������� ������������
          j=d[i][11];
        else
          j=d[i][0];

        if (groups[i][j])
        {
          if (i==0)
            r+=' '+groups[i][j][currency];
          else
            r+=' '+groups[i][j];
        }
        else
        {
          if (i==0)
            r+=' '+groups[i][-1][currency];
          else
            r+=' '+groups[i][-1];
        }
      }
    }

    if (t[0]==0)
      r+=' '+groups[0][-1][currency];
  }
  else
    r='���� '+groups[0][-1][currency];



  y=((x-Math.floor(x))*100).roundTo();
  if (y<10) y='0'+y;

  r=r.trimMiddle();
  r=r.substr(0,1).toUpperCase()+r.substr(1);
  r+=' '+y;

  y=y*1;

  if (names[y])  // ���� ���������� ������������
    j=y;
  else
    j=y%10;

  if (groups[9][j])
    r+=' '+groups[9][j][currency];
  else
    r+=' '+groups[9][-1][currency];

  return r;
}

/* *************************************************************************** */
/* *************************************************************************** */
/* *************************************************************************** */

Math.roundTo=function(i,n)
// ��������� ����� i �� ��������� ���������� n
// ������ ����� (��� �����) �������
{
  if (typeof(i)=='number')
    return i.roundTo(n);
  else
    return false;
}

/* *************************************************************************** */
/* *************************************************************************** */
/* *************************************************************************** */

Date.prototype.add=function(n,t)
// ���������� � ���� n ����, ������� ��� ���

// t ����� ���� ����� 'd','day','days' ��� ����;
//   'm','month','months' ��� �������;
//   'y','year','years' ��� ���

// t ��� ����� ���� ����� 'm-1d','month-1day','months-1day'
//   - ��������� n ������� � ������ ���� ����

// t ��� ����� ���� ����� 'y-1d','year-1day','years-1day'
//   - ��������� n ��� � ������ ���� ����

// ���� t �� ������� ��� ����� ���� ��������, ������������ 'd'

// ��� ������ ���������� false
{
  var r=new Date(this);
  var q='';

  if (typeof(n)=='number')
    if (n.isInt())
    {
      if (typeof(t)=='string') q=t.toUpperCase();

      switch(q)
      {
        case 'M':
        case 'MONTH':
        case 'MONTHS':
          r.setMonth(r.getMonth()+n);
          break;

        case 'M-1D':
        case 'MONTH-1DAY':
        case 'MONTHS-1DAY':
          r.setMonth(r.getMonth()+n);
          if (n>=0)
            r.setDate(r.getDate()-1);
          else
            r.setDate(r.getDate()+1);
          break;

        case 'Y':
        case 'YEAR':
        case 'YEARS':
          r.setFullYear(r.getFullYear()+n);
          break;

        case 'Y-1D':
        case 'YEAR-1DAY':
        case 'YEARS-1DAY':
          r.setFullYear(r.getFullYear()+n);
          if (n>=0)
            r.setDate(r.getDate()-1);
          else
            r.setDate(r.getDate()+1);
          break;

        default:
          r.setDate(r.getDate()+n);
      }
      return r;
    }
  return false;
}

/* *************************************************************************** */
