$(document).ready(function () {
    $(".button-my-page").click(function () {
        var myPage = $(".sub_menu");
        if (myPage.is(":visible")) {
            myPage.slideUp();
        } else {
            myPage.slideDown();
        }
    });
});