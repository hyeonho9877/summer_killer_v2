$(document).ready(function () {
    $(".menu-icon").click(function () {
        let submenu = $(".hide");
        if (submenu.is(":visible")) {
            submenu.slideUp();
        } else {
            submenu.slideDown();
        }
    });
});