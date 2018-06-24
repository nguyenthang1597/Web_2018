$(document).ready(function() {
    $('a.login-window').click(function() {
        //lấy giá trị thuộc tính href - chính là phần tử "#login-box"
        var loginBox = $(this).attr('href');
        var winH=$(window).height();
        var winW=$(window).width();
        var popMargTop = (winH-$(loginBox).height()) / 2; 
    var popMargLeft = (winW-$(loginBox).width())/2+120; 
    
    $(loginBox).css({ 
        'margin-top' : -popMargTop,
        'margin-left' : -popMargLeft
    });
        //cho hiện hộp đăng nhập trong 300ms
        $(loginBox).fadeIn(300);
 
        // thêm phần tử id="over" vào sau body
        $('body').append('<div id="over">');
        $('#over').fadeIn(300);
 
        return false;
 });
 
 // khi click đóng hộp thoại
 $(document).on('click', "a.close, #over", function() {
       $('#over, .login').fadeOut(300 , function() {
           $('#over').remove();
       });
      return false;
 });
});