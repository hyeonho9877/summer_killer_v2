function changePrice(pid, unitPrice){
    console.log(pid)
    console.log(unitPrice)
    let qnt = document.getElementById('qnt-'+pid);
    let price = document.getElementById('item-'+pid);
    price.innerText = qnt.value * unitPrice;

    calTotal();
}

function confirmDeleteCart(){
    event.preventDefault()
    if(confirm("장바구니를 비우시겠습니까?")){
        location.href="clearCart.jsp"
    }
}

function confirmDeleteItem(pid){
    event.preventDefault()
    if(confirm("물건을 장바구니에서 제거하시겠습니까?")){
        location.href= "removeItem.jsp?pid="+pid
    }
}

function confirmOrder(){
    event.preventDefault()
    if(confirm("위 내용대로 주문하시겠습니까?")){
        location.href= "processOrder.jsp";
    }
}

function calTotal(){
    let total = 0;
    let ptable = document.getElementById('product-table');
    let ptable_children = ptable.children;

    for (let i = 1; i < ptable_children.length-1; i++) {
        let item = ptable_children[i].children[3].innerHTML;
        total += parseInt(item);
    }

    let totalPrice = document.getElementById('total-price');
    totalPrice.innerText = total;
}