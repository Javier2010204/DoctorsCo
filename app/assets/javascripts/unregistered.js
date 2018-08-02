;(function(){
    let sticky = false;
    $("#sticky-navigation").removeClass("hidden")
    $("#sticky-navigation").slideUp(0)

    $(window).scroll(() => {
        const inBottom = isInBottom()

        if(inBottom && !sticky){
            //Mostrar Sticky Navigation
            sticky = true
            stickyNavigation()
        }
        if(!inBottom && sticky){
            //Ocultar Sticky Navigation
            sticky = false
            unStickyNavigation()
        }
    })

    function isInBottom(){
        const $description = $("#description")
        const descriptionHeight = $description.height()

        return $(window).scrollTop() > $(window).height() - (descriptionHeight * 3.5)
    }

    function stickyNavigation(){
        $('#description').addClass('fixed').removeClass('absolute')    
        $('#navigation').slideUp("slow")
        $("#sticky-navigation").removeClass("hidden")
        $('#sticky-navigation').slideDown("slow")
    }

    function unStickyNavigation(){
        $('#description').removeClass('fixed').addClass('absolute')
        $('#navigation').slideDown("slow")
        $('#sticky-navigation').slideUp("slow")
    }

})()