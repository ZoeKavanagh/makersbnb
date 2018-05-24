$(document).ready(function() {
  var dateFormatter = function (date, settings) {
    if (!date) return '';
    var day = (date.getDate() < 10 ? '0' : '') + date.getDate();
    var month = (date.getMonth() < 10 ? '0' : '') + (date.getMonth() + 1);
    var year = date.getFullYear();
    return year + '-' + month + '-' + day;
  };

  $('#rangestart').calendar({
    type: 'date',
    endCalendar: $('#rangeend'),
    formatter: { date: dateFormatter }
  });

  $('#rangeend').calendar({
    type: 'date',
    startCalendar: $('#rangestart'),
    formatter: { date: dateFormatter }
  });

  $('#singlecalendar').calendar({
    type: 'date',
    formatter: { date: dateFormatter }
  })
});
