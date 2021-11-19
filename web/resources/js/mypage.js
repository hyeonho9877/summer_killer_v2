$(document).ready(function () {
    $(".button-my-page").click(function () {
        console.log("mypage clicked")
        var myPage = $(".sub_menu");
        if (myPage.is(":visible")) {
            myPage.slideUp();
        } else {
            myPage.slideDown();
        }
    });
});