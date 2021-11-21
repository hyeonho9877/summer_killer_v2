$(document).ready(function () {
    $(".button-my-page").click(function () {
        var myPage = $(".sub_menu");
        if (myPage.is(":visible")) {
            myPage.slideUp();
        } else {
            myPage.slideDown();
        }
    });

    $(".button-introduction").click(function () {
        let intro = $(".sub_menu-intro");
        if (intro.is(":visible")) {
            intro.slideUp();
        } else {
            intro.slideDown();
        }
    });
});