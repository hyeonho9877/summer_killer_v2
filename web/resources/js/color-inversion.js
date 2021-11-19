let changed = 0;

function spin() {
    var angle = 0;
    var cnt = 0;
    if(changed==0) {
        changed = 1;
        var spinner = setInterval(function () {
            angle += 3;
            cnt++;
            $("#image").rotate(angle);
            if (cnt == 200) {
                clearInterval(spinner);
                $("#image").rotate(0);
                $('body').css('background', 'sienna');
                $('span').css('color', 'white');
                $('footer').css('background', 'white');
                $('footer').css('color', 'sienna');
                $('.menu-icon').attr('src', 'resources/css/menu-icon-inversion.png');
                $('.hide>li:not(:last-child)').css('border-bottom', '1px solid white');
                $('.navigator').css('background-color','white');
                $('.navigator span').css('color','sienna');
                $('.navigator li:not(:last-child)').css('border-right','4px solid sienna')
                $('.language-selector label').css('color','sienna');

            }
        }, 20);
    }
}