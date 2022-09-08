/*
================================================================================
* Библиотека расширения стандартного JavaScript                                *
*                                                                              *
* Название:	Js_Veremax                                                     *
* Модуль:	Date                                                           *
* Версия: 	1.1                                                            *
* Сайт:		http://garazh.biz                                              *
*                                                                              *
* Автор: 	Верещако Максим Валерьевич (Veremax)                           *
* Компания:	ООО "ГенПолис", http://genpolis.ru                             *
================================================================================
*/


Date.prototype.add=function(n,t)
// прибавляет к дате n дней, месяцев или лет

// t может быть равно 'd','day','days' для дней;
//   'm','month','months' для месяцев;
//   'y','year','years' для лет

// t еще может быть равно 'm-1d','month-1day','months-1day'
//   - прибавить n месяцев и отнять один день

// t еще может быть равно 'y-1d','year-1day','years-1day'
//   - прибавить n лет и отнять один день

// если t не указано или имеет иное значение, используется 'd'

// при ошибке возвращает false
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
