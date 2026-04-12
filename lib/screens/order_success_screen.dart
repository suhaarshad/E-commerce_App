import 'package:ecom/screens/home_screen.dart';
import 'package:ecom/widgets/container_button_model.dart';
import 'package:flutter/material.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Order Confirmed"),
        centerTitle: true,
        backgroundColor: Color(0xFF779650),
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left:20.0, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),

            /// Success Icon
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.green.shade100,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 80,
              ),
            ),

            SizedBox(height: 20),

            Text(
              "Thank You!",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 8),

            Text(
              "Your order has been placed successfully",
              // textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 20),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()),);
              },
              child: ContainerButtonModel(
                itext: "Continue Shopping",
                bgColor: Color(0xFF779650),
              ),
            )


          ],
        ),
      ),
    );
  }

 }
