/*
================================================================================
* ���������� ���������� ������������ JavaScript                                *
*                                                                              *
* ��������:	Js_Veremax                                                     *
* ������:	Math                                                           *
* ������: 	1.1                                                            *
* ����:		http://garazh.biz                                              *
*                                                                              *
* �����: 	�������� ������ ���������� (Veremax)                           *
* ��������:	��� "��������", http://genpolis.ru                             *
================================================================================
*/


Math.roundTo=function(i,n)
// ��������� ����� i �� ��������� ���������� n
// ������ ����� (��� �����) �������
{
  if (typeof(i)=='number')
    return i.roundTo(n);
  else
    return false;
}