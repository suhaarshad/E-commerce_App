import 'package:ecom/screens/otp_verify_screen.dart';
import 'package:ecom/screens/recoveryScreen.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
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
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Forgot Password',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Please enter your phone Number. You will receive a OTP to create or set a new password via number.",
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter Number',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            ElevatedButton(onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => OTPVerifyScreen()));
            },
                child: Text('Send Code',
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
      )),
    );
  }
}
