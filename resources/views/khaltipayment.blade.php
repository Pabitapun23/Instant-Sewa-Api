<html>
<head>
    <style type="text/css">
<style>
.container { 
  height: 200px;
  position: relative;
  border: 3px solid green; 
}

.center {
  margin: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);

}
#payment-button{
    background-color: #6f42c1; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
    width: 501px;
    height: 100px;}
    </style>
    <script src="https://khalti.s3.ap-south-1.amazonaws.com/KPG/dist/2020.12.17.0.0.0/khalti-checkout.iffe.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
</head>
<body>

    <!-- Place this where you need payment button -->
<div class="container">
  <div class="center">
    <button id="payment-button">Pay with Khalti</button>
</div>
</div>
    <!-- Place this where you need payment button -->
    <!-- Paste this code anywhere in you body tag -->
    <script>

        var config = {
            // replace the publicKey with yours
            "publicKey": "test_public_key_988c03b3f9ab46618a1eb1d2b6ff83da",
            "productIdentity":Math.floor(Math.random() * 10000), //Product ID
            "productName": '{{$cartName}}', //Product Name
            "productUrl": "http://test.dev", //Product URL
            "paymentPreference": [
                "KHALTI",
                "EBANKING",
                "MOBILE_BANKING",
                "CONNECT_IPS",
                "SCT",
                ],
            "eventHandler": {
                onSuccess (payload) {
                    // hit merchant api for initiating verfication
                    console.log(payload.status);
                    if(payload.status==200) {
                        $.ajaxSetup({
                            headers: {
                                'X-CSRF-Token': '{{csrf_token()}}'
                            }
                        });
                        $.ajax({
                            url: "{{ route('verification') }}", //Your backend route url, replace this with the route you'll be creating later
                            data: payload,
                            method: 'POST',
                            success: function(data) {
                                console.log('Payment is succcessfull');
                                console.log(data);
                            },
                            error: function(err) {
                                console.log(err.response);
                            },
                        });                        
                    }
                },
                onError (error) {
                    console.log(error);
                },
                onClose () {
                    console.log('widget is closing');
                }
            }
        };

        var checkout = new KhaltiCheckout(config);
        var btn = document.getElementById("payment-button");
        btn.onclick = function () {
            // minimum transaction amount must be 10, i.e 1000 in paisa.
            checkout.show({amount: {{$payment*100}} });
        }
    </script>
    <!-- Paste this code anywhere in you body tag -->
</body>
</html>