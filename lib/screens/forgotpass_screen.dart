import 'package:ecom/screens/otp_screen.dart';
import 'package:ecom/screens/recoveryScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPassScreen extends StatefulWidget {
  const ForgotPassScreen({super.key});

  @override
  State<ForgotPassScreen> createState() => _ForgotPassScreenState();
}

class _ForgotPassScreenState extends State<ForgotPassScreen> {
  bool clrButton = false;
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            foregroundColor: Colors.black,
            // backgroundColor: Color(0xFF2292c1),
            leading: Icon(Icons.backspace, color: Colors.black,),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    "Forgot Password",
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Text(
                    "Please enter your email address. You will receive a link to create or set a new password via email.",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),

                  TextFormField(
                    controller: emailController,
                    onChanged: (val) {
                      if (val != "") {
                        setState(() {
                          clrButton = true;
                        });
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'Enter Email',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                      suffix: InkWell(
                        onTap: (){
                          setState(() {
                            emailController.clear();
                          });
                        },
                        child: Icon(
                          CupertinoIcons.multiply,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RecoveryScreen()));
                    },
                    child: Text(
                      "Send Code",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF779650),
                        minimumSize: Size.fromHeight(55),
                        elevation: 4,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  Center(
                    child: Text('OR',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,

                    ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 20,
                  // ),

                  Center(
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OTPScreen()));
                        },
                        child: Text(
                          'Verify using Phone Number',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF779650),
                          ),
                        )),
                  ),



                ],
              ),
            ),
          ),
        ));
  }
}
