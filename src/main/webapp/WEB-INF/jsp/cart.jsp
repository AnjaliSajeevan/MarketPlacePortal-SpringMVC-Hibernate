<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>


        <style>


.payment-info {
    background: black;
    padding: 10px;
    border-radius: 6px;
    color: #fff;
    font-weight: bold
}

.product-details {
    padding: 10px
}

body {
    background: #eee
}

.cart {
    background: #fff
}

.p-about {
    font-size: 12px
}

.table-shadow {
    -webkit-box-shadow: 5px 5px 15px -2px rgba(0, 0, 0, 0.42);
    box-shadow: 5px 5px 15px -2px rgba(0, 0, 0, 0.42)
}

.type {
    font-weight: 400;
    font-size: 10px
}

label.radio {
    cursor: pointer
}

label.radio input {
    position: absolute;
    top: 0;
    left: 0;
    visibility: hidden;
    pointer-events: none
}

label.radio span {
    padding: 1px 12px;
    border: 2px solid #ada9a9;
    display: inline-block;
    color: #8f37aa;
    border-radius: 3px;
    text-transform: uppercase;
    font-size: 11px;
    font-weight: 300
}

label.radio input:checked+span {
    border-color: #fff;
    background-color: black;
    color: #fff
}

.credit-inputs {
    background: rgb(102, 102, 102);
    color: #fff !important;
    border-color: rgb(102, 102, 102)
}

.credit-inputs::placeholder {
    color: #fff;
    font-size: 13px
}

.credit-card-label {
    font-size: 9px;
    font-weight: 300
}

.form-control.credit-inputs:focus {
    background: rgb(102, 102, 102);
    border: rgb(102, 102, 102)
}

.line {
    border-bottom: 1px solid rgb(102, 102, 102)
}

.information span {
    font-size: 12px;
    font-weight: 500
}

.information {
    margin-bottom: 5px
}

.items {
    -webkit-box-shadow: 5px 5px 4px -1px rgba(0, 0, 0, 0.25);
    box-shadow: 5px 5px 4px -1px rgba(0, 0, 0, 0.08)
}

.spec {
    font-size: 11px
}
        </style>
    </head>
    <body>
        <div class="container mt-5 p-3 rounded cart">
    <div class="row no-gutters">
        <div class="col-md-8">
            <div class="product-details mr-2">
                <div class="d-flex flex-row align-items-center"><h4><b><span class="ml-2">SHOPPING CART</span></b></h4></div>
                <hr>
                
                 
                <div class="d-flex justify-content-between"><span></span>
                    <div class="d-flex flex-row align-items-center"><span class="text-black-50">You have ${requestScope.size} items in your cart</span>
                        <div class="price ml-2"><span class="mr-1"></span><i class="fa fa-angle-down"></i></div>
                    </div>
                </div>
                
                                      
                <c:forEach items="${requestScope.items}" var="items">
                <div class="d-flex justify-content-between align-items-center mt-3 p-2 items rounded">
                    <div class="d-flex flex-row"><img class="rounded" src="${images}/${items.product.imageURL}" width="40">
                        <div class="ml-2"><span class="font-weight-bold d-block">${items.product.name}</span><span class="spec">${items.product.description}</span></div>
                    </div>
                    <div class="d-flex flex-row align-items-center"><span class="d-block">${items.product.price}</span><span class="d-block ml-5">${items.quantity}</span><span class="d-block ml-5 font-weight-bold">$${items.totalPrice}</span><i class="fa fa-trash-o ml-3 text-black-50"></i></div>
                </div>
               
               
                 </c:forEach>
               
            </div>
        </div>
        <div class="col-md-4">
            <div class="payment-info">
                <div class="d-flex justify-content-between align-items-center"><span>Card details</span></div><span class="type d-block mt-3 mb-1">Card type</span><label class="radio"> <input type="radio" name="card" value="payment" checked> <span><img width="30" src="https://img.icons8.com/color/48/000000/mastercard.png" /></span> </label>
                <label class="radio"> <input type="radio" name="card" value="payment"> <span><img width="30" src="https://img.icons8.com/officel/48/000000/visa.png" /></span> </label>
                <label class="radio"> <input type="radio" name="card" value="payment"> <span><img width="30" src="https://img.icons8.com/ultraviolet/48/000000/amex.png" /></span> </label>
                <label class="radio"> <input type="radio" name="card" value="payment"> <span><img width="30" src="https://img.icons8.com/officel/48/000000/paypal.png" /></span> </label>
                <div><label class="credit-card-label">Name on card</label><input type="text" class="form-control credit-inputs" placeholder="Name"></div>
                <div><label class="credit-card-label">Card number</label><input type="text" class="form-control credit-inputs" placeholder="0000 0000 0000 0000"></div>
                <div class="row">
                    <div class="col-md-6"><label class="credit-card-label">Date</label><input type="text" class="form-control credit-inputs" placeholder="12/24"></div>
                    <div class="col-md-6"><label class="credit-card-label">CVV</label><input type="text" class="form-control credit-inputs" placeholder="342"></div>
                </div>
                <hr class="line">
                <div class="d-flex justify-content-between information"><span>Subtotal</span><span>${requestScope.total}</span></div>
                <div class="d-flex justify-content-between information"><span>Shipping (Free Shipping on all orders)</span><span>0.00</span></div>
                <div class="d-flex justify-content-between information"><span>Total(Incl. taxes)</span><span>${requestScope.total}</span></div><button class="btn btn-secondary btn-block d-flex justify-content-between mt-3" onclick=" relocate_home()" type="button"><span></span><span>Checkout<i class="fa fa-long-arrow-right ml-1"></i></span></button>
            </div>
        </div>
    </div>
</div>

<script>
function relocate_home()
{
     location.href = "${contextPath}/Customer/orderPlaced";
} 
</script>	

				
		
    </body>
</html>