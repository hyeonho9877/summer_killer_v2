function addToCart(id, authenticated) {
    console.log(id, authenticated)
    let qnt = document.getElementById("qnt");
    let language = document.getElementById("language-select");

    console.log("addCart.jsp?language="+language.value+"&pid=" + id + "&qnt=" + qnt.value);
    if (authenticated != null) {
        if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
            location.href = "addCart.jsp?language="+language.value+"&pid=" + id + "&qnt=" + qnt.value;
        }
    } else {
        if (confirm("로그인이 필요한 서비스입니다. 로그인 하시겠습니까?")) {
            location.href = "signin.jsp"
        }
    }
}