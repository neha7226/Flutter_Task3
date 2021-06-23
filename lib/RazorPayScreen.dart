import 'package:flutter/material.dart';
import 'package:flutter_minor_project/HomeScreen.dart';
//import 'package:flutter/services.dart';
import 'package:flutter_minor_project/global.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import 'package:fluttertoast/fluttertoast.dart';

class Rozor extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Rozor> {
  //static const platform = const MethodChannel("razorpay_flutter");

  Razorpay _razorpay;
  bool suc = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.cyan.shade200,
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Click on Pay to proceed further!",
                style: TextStyle(
                    backgroundColor: Colors.white,
                    color: Colors.cyan.shade200,
                    fontSize: 20,
                    fontStyle: FontStyle.italic),
              ),
              RaisedButton(
                  onPressed: () {
                    openCheckout();
                  },
                  color: Colors.blue,
                  child: Text('Pay')),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Text(
                  "Return to home page",
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.white),
              ),
              Text(
                suc ? "Payment Done!" : "",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    backgroundColor: Colors.green),
              )
            ],
          )),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  void openCheckout() async {
    var options = {
      'key': 'rzp_test_LozC9MG35ExD63',
      'amount': 2000,
      'name': '$userName',
      'description': 'Fine T-Shirt',
      'prefill': {'contact': '9808765436', 'email': 'test@razorpay.com'},
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint('Error: e');
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    Fluttertoast.showToast(
        msg: "SUCCESS: " + response.paymentId, toastLength: Toast.LENGTH_SHORT);
    setState(() {
      suc = true;
    });
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    Fluttertoast.showToast(
        msg: "ERROR: " + response.code.toString() + " - " + response.message,
        toastLength: Toast.LENGTH_SHORT);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    Fluttertoast.showToast(
        msg: "EXTERNAL_WALLET: " + response.walletName,
        toastLength: Toast.LENGTH_SHORT);
  }
}
