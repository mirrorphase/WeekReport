jQuery ->
  $("a[rel~=popover], .has-popover").popover()
  $("a[rel~=tooltip], .has-tooltip").tooltip()

   # enable chosen js
  $('.chosen-select').chosen
    allow_single_deselect: true
    no_results_text: '查询结果为空'
    width: '200px'
