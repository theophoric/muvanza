jQuery ->
  $('.datepicker').datepicker
    startDate: new Date
    format: "yyyy-mm-dd"
    
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()