import 'package:ecom/screens/recoveryScreen.dart';
import 'package:flutter/material.dart';

import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

class OTPVerifyScreen extends StatefulWidget {
  const OTPVerifyScreen({super.key});

  @override
  State<OTPVerifyScreen> createState() => _OTPVerifyScreenState();
}

class _OTPVerifyScreenState extends State<OTPVerifyScreen> {

  TextEditingController textEditingController = new TextEditingController(text: "");

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Theme.of(context).primaryColor),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  _getSignatureCode() async {
    String? signature = await SmsVerification.getAppSignature();
    print("signature $signature");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        // backgroundColor: Color(0xFF2292c1),
        leading: Icon(Icons.backspace, color: Colors.black,),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Enter OTP",
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Please enter the OTP code that we have sent you to your number",
              style: TextStyle(
                fontSize: 17,
              ),
            ),

            SizedBox(
              height: 50,
            ),

            TextFieldPin(
                textController: textEditingController,
                autoFocus: false,
                codeLength: 4,
                alignment: MainAxisAlignment.center,
                defaultBoxSize: 55.0,
                margin: 10,
                selectedBoxSize: 46.0,
                textStyle: TextStyle(fontSize: 16),
                defaultDecoration: _pinPutDecoration.copyWith(
                    border: Border.all(
                        color: Theme.of(context)
                            .primaryColor
                            .withOpacity(0.6))),
                selectedDecoration: _pinPutDecoration,
                onChange: (code) {
                  setState(() {

                  });
                  // _onOtpCallBack(code,false);
                }),
            SizedBox(
              height: 30.0,
            ),

            ElevatedButton(
              onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RecoveryScreen()));
            },
              child: Text('Verify',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                ),
              ),
              style:ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF779650),
                  minimumSize: Size.fromHeight(55),
                  elevation: 4,
                  shadowColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
            ),
          ],
        ),
      ),

    );
  }
}

