/**
 * Created by Администратор on 22.07.2016.
 */
$(document).ready(function(){

    $('.popup-auth .close_window, .overlay').click(function (){
        $('.popup-auth, .overlay').css({'opacity': 0, 'visibility': 'hidden'});
        $('input[id="login-button"]').css({'display':'none'});
        $('.submit-status').css({'display':'none'});
    });
    $('a.open_window').click(function (e){
        $('.popup-auth, .overlay').css({'opacity': 1, 'visibility': 'visible'});
        $('input[id="login-button"]').css({'display':'block'});
        e.preventDefault();
    });

    $('div.open_window').click(function (e){
        $('.popup-auth, .overlay').css({'opacity': 1, 'visibility': 'visible'});
        $('input[id="login-button"]').css({'display':'block'});
        e.preventDefault();
    });


    var flag=true;
    $('#show-pass').click(function(){
        if(flag){
            $('#show-pass').attr("src","images/hide.png");
            flag=false;
            $('#pass').attr("type","text");
        }else{
            $('#show-pass').attr("src","images/view.png");
            flag=true;
            $('#pass').attr("type","password");
        }
    });

    $('input').focus(function(){
        $('.submit-status').slideUp(500);
    });

    $('#login-form').submit(function (e) {
        e.preventDefault();

        data={
            user : $('input[name=user-name]').val(),
            pass : $('input[type=password]').val()
        };
        var form=this;
        $.ajax({
            url: "check_user.php",
            method: "POST",
            async:false,
            data: data,
            contentType: "application/json",
            success: function (response) {
                if (response == "") {
                    form.submit();
                }else{
                    $('.submit-status').slideDown(500);
                }
            }

        });


    });







});