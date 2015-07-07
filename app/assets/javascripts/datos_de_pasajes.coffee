# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

//= require select2

jQuery ->
  $('select').select2()

  $("#btnServicio").click ->
    dataSet = $("#parada_origen, #parada_destino, [id^='date']").serialize()
    $.ajax
      type: "POST",
      url:"../servicios_with_paradas_and_date",
      data: dataSet,
      success: (data)->
        $('#servicios').html(data)
        $('#asientos').html("")
        $("[type='radio']").click ->
          $("#servicio").val($(this).attr('id'))
          $.ajax
            type: "POST",
            url:"../servicio_asientos_disponibles",
            data: 
              id: $(this).attr('id'),
            success: (data)->
              $('#asientos').html(data)

  $("#btnReservarPasaje").click ->
    $("form").submit()

