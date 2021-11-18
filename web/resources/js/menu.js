$(document).ready(function () {
    $(".menu-icon").click(function () {
        console.log("dkdadfadsf")
        var submenu = $(".hide");
        if (submenu.is(":visible")) {
            submenu.slideUp();
        } else {
            submenu.slideDown();
        }
    });
});