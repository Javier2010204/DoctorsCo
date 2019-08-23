$(document).on "ajax:beforeSend", "#emails-form", () ->
    $("#email-info").html "Estamos procesando tu peticion ..."
$(document).on "ajax:success", "#emails-form", (e, data, estado, xhr) ->
    $("#email-info").removeClass("special-red")
    $("#email-info").addClass("special-green")
    $("#email-info").slideDown("normal")
    $("#email-info").removeClass("hidden")
    $("#email").val("")
    $("#name").val("")
    $("#body_").val("")
    $("#phone").val("")
    $("#address").val("")
    $("#email-info").html "Gracias por ayudarnos a revolucionar las consultas médicas"
$(document).on "ajax:error", "#emails-form", (e, data, estado, xhr) ->
    $("#email-info").addClass("special-green")
    $("#email-info").addClass("special-red")
    $("#email-info").slideDown("normal")
    $("#email-info").removeClass("hidden")
    $("#email-info").html "no pudimos enviar tu correo, intentalo de nuevo"
