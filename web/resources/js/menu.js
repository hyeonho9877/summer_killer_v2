$(document).ready(function () {
    $(".menu-icon").click(function () {
        var submenu = $(".hide");
        if (submenu.is(":visible")) {
            submenu.slideUp();
        } else {
            submenu.slideDown();
        }
    });
});