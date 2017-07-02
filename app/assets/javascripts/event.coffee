$(document).on 'turbolinks:load', ->
  $('.project_start_date').datepicker
    dateFormat: 'yy-mm-dd'

   $('.week_date').datepicker
      showWeek: true,
      firstDay: 1,
       dateFormat: 'yy-mm-dd'


    