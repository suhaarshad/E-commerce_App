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

            /// Order ID
            // Container(
            //   padding: const EdgeInsets.all(12),
            //   decoration: BoxDecoration(
            //     color: Colors.grey.shade100,
            //     borderRadius: BorderRadius.circular(10),
            //   ),
            //   child: const Text(
            //     "Order ID: #ORD123456",
            //     style: TextStyle(
            //       fontSize: 16,
            //       fontWeight: FontWeight.w600,
            //     ),
            //   ),
            // ),

            // const SizedBox(height: 25),

            // /// Delivery Address
            // Align(
            //   alignment: Alignment.centerLeft,
            //   child: const Text(
            //     "Delivery Address",
            //     style: TextStyle(
            //       fontSize: 18,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),

            // const SizedBox(height: 8),
            //
            // Container(
            //   width: double.infinity,
            //   padding: const EdgeInsets.all(12),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(10),
            //     border: Border.all(color: Colors.grey.shade300),
            //   ),
            //   child: const Text(
            //     "123 Street Name,\nCity, Country",
            //     style: TextStyle(fontSize: 15),
            //   ),
            // ),

            // const SizedBox(height: 25),
            //
            // /// Order Summary
            // Align(
            //   alignment: Alignment.centerLeft,
            //   child: const Text(
            //     "Order Summary",
            //     style: TextStyle(
            //       fontSize: 18,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            //
            // const SizedBox(height: 10),

            // _summaryRow("Items Total", "Rs. 2,500"),
            // _summaryRow("Delivery Fee", "Rs. 150"),
            // const Divider(),
            // _summaryRow("Total", "Rs. 2,650", isBold: true),
            //
            // const Spacer(),
            //
            // /// Continue Button
            // SizedBox(
            //   width: double.infinity,
            //   height: 50,
            //   child: ElevatedButton(
            //     onPressed: () {
            //       Navigator.popUntil(context, (route) => route.isFirst);
            //     },
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: Colors.green,
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(12),
            //       ),
            //     ),
            //     child: const Text(
            //       "Continue Shopping",
            //       style: TextStyle(fontSize: 16, color: Colors.white),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

//   static Widget _summaryRow(String title, String value, {bool isBold = false}) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 6),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             title,
//             style: TextStyle(
//               fontSize: 15,
//               fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
//             ),
//           ),
//           Text(
//             value,
//             style: TextStyle(
//               fontSize: 15,
//               fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
//             ),
//           ),
//         ],
//       ),
//     );
 //  }
 }
