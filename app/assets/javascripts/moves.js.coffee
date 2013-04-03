jQuery ->
  $('.accept_bid').click (e)=>
    $('.accept_bid').addClass('disabled')
    $(e.target).addClass('btn-primary')
    $(e.target).text("Bid Accepted")


