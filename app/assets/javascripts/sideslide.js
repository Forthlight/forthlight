$( document ).ready(function(){
    $(".stopscroll").click(function(){
      validate(this); 
    });

    function validate(that) {
        if ($(that).is(':checked')){
            $('html, body').css({
                'overflow': 'hidden',
                'height': '100%'
            })
        }
        else{
            $('html, body').css({
                'overflow': 'auto',
                'height': 'auto'
            })
        }
    } 
});

