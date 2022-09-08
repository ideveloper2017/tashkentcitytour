/*
================================================================================
* ���������� ���������� ������������ JavaScript                                *
*                                                                              *
* ��������:	Js_Veremax                                                     *
* ������:	Date                                                           *
* ������: 	1.1                                                            *
* ����:		http://garazh.biz                                              *
*                                                                              *
* �����: 	�������� ������ ���������� (Veremax)                           *
* ��������:	��� "��������", http://genpolis.ru                             *
================================================================================
*/


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
