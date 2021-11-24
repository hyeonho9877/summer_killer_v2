function redirectToProduct(id){
    let language = document.getElementById('language-select').value;
    console.log(language);
    location.href = "productDetail.jsp?language="+language+"&pid="+id
}