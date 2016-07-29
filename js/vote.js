/**
 * Created by Администратор on 27.07.2016.
 */




$(document).ready(function(){
    $(".par-button").click(function(event){
            event.preventDefault();
            $(".insert-here").fadeOut(500);
            $(".preloader").show();
            data={
                vote:$( this ).text(),
                name:$( this ).attr('id'),
                voter: getCookie('user')
            };
            $.ajax({
                url: "submit_vote.php",
                method: "POST",
                async:false,
                data: data,
                success: function (response) {
                    if (response == "") {
                        alert("ERROR");
                    }else{
                        setTimeout(function () {
                            $(".insert-here").load("generate_top.php", function() {
                            });
                            $(".preloader").hide();
                            $(".insert-here").fadeIn(500);
                        }, 1500);

                    }
                }

            });
    });


    $(".prof-button").click(function(event){
        event.preventDefault();
        $(".partic-item").hide();
        $(".preloader").show();
        if( $(this).text()=="+") {
            var pButton = $( this );
            var mButton = $( this ).siblings(".prof-button");
        }else{
            var mButton = $( this );
            var pButton = $( this ).siblings(".prof-button");
        }
        data={
            vote:$( this ).text(),
            name:$( this ).attr('id'),
            voter: getCookie('user')
        };
        $.ajax({
            url: "submit_vote.php",
            method: "POST",
            async:false,
            data: data,
            success: function (response) {
                if (response == "") {
                    alert("ERROR");
                }else{
                    response=JSON.parse(response);
                    $(".rate-area").text(response['rate']);
                    if(response['vote']==1){
                        pButton.addClass("blocked");
                        mButton.removeClass("blocked");
                    }else{
                        pButton.removeClass("blocked");
                        mButton.addClass("blocked");
                    }
                    setTimeout(function () {
                        $(".preloader").hide();
                        $(".partic-item").show();
                    }, 1500);

                }
            }

        });
    });



    });




function getCookie(name) {
    var matches = document.cookie.match(new RegExp(
        "(?:^|; )" + name.replace(/([\.$?*|{}\(\)\[\]\\\/\+^])/g, '\\$1') + "=([^;]*)"
    ));
    return matches ? decodeURIComponent(matches[1]) : undefined;
}