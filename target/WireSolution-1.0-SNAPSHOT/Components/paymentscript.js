const paymentStart=()=>{
    console.log("payment start");
    let amount = $("#pay_amount").val();
    console.log(amount);
    
    if(amount=="" || amount==null){
        alert("Please filed amount");
        return ;
    }
    
    $.ajax({
        url:"/WireSolution/PaymentGateway",
        data:JSON.stringify({
            amount:amount
        }),
        contenttype:'application/json',
        type:'POST',
        dataType:'json',
        success:function(response){
            console.log(response)
        },
        error:function(error){
            console.log(error)
            alert("something went wrong!")
        },
    })
    
};