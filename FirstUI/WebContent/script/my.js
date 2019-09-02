/**
 * 
 */
$(function () {

    $("#name_error").hide();
    $("#email_error").hide();
    $("#mno_error").hide();
    $("#password_error").hide();
    $("#cpassword_error").hide();


    $("#form_name").focusout(function () {
        check_name();
    });


    $("#form_email").focusout(function () {
        check_email();
    });

    $("#form_mno").focusout(function () {
        check_mno();
    });
    $("#form_password").focusout(function () {
        check_password();
    });
    $("#form_cpassword").focusout(function () {
        check_cpassword();
    });

    function check_name() {
        var length = $("#form_name").val().length;
        if (length < 5 || length > 20) {
            $("#name_error").html("should be between 5-20 Chars  ");
            $("#name_error").show();
        }

    }
    function check_email() {
        var length = $("#form_email").val().length;
        if (length < 5 || length > 20) {
            $("#email_error").html("should be Correct Format  ");
            $("#email_error").show();
        }

    }
    function check_mno() {
        var length = $("#form_mno").val().length;
        if (length < 5 || length > 20) {
            $("#mno_error").html("should be 10 digit :");
            $("#mno_error").show();
        }

    }
    function check_password() {
        var length = $("#form_password").val().length;
        if (length < 5 || length > 20) {
            $("#password_error").html("should be between 5-20 Chars  ");
            $("#password_error").show();
        }

    }
    function check_cpassword() {
        var length = $("#form_cpassword").val().length;
        if (length < 5 || length > 20) {
            $("#cpassword_error").html("should be between 5-20 Chars  ");
            $("#cpassword_error").show();
        }

    }




});



$(document).ready(function () {
    $('input[type="submit"]').click(function () {
        $(this).css('background-color', 'red');
    }
    );
});

