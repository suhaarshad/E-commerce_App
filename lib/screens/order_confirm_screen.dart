import 'package:flutter/material.dart';

import '../widgets/container_button_model.dart';
import 'order_success_screen.dart';

class OrderConfirmationScreen extends StatelessWidget {
  const OrderConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Confirm Order"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// DELIVERY ADDRESS
            Text(
              "Delivery Address",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "123 Street Name,\nKarachi, Pakistan\n+92 300 1234567",
                      style: TextStyle(fontSize: 15),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Change",
                            style: TextStyle(color: Colors.red, fontSize: 18),
                          )),
                    )
                  ]),
            ),

            SizedBox(height: 20),

            /// PAYMENT METHOD
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Payment Method",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {},
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "Change",
                        style: TextStyle(color: Colors.red, fontSize: 18),
                      ),
                    )),
              ],
            ),

            SizedBox(height: 8),

            Row(
              children: [
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/mastercard.png')),
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  "**** **** **** 3948",style: TextStyle(fontSize: 15),
                ),
              ],
            ),

            SizedBox(height: 20),

            /// ORDER ITEMS
            Text(
              "Order Items",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            _orderItem("Product 1", "2 x \$ 30.00"),
            _orderItem("Product 2", "1 x \$ 45"),

            const SizedBox(height: 20),

            /// PRICE DETAILS
            const Text("Price Details",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            _priceRow("Sub-Total", "\$ 300.00"),
            _priceRow("Shipping Fee", "\$ 10.00"),
            const Divider(),
            _priceRow("Total Payment", "\$ 400.00", isBold: true),

            const Spacer(),

            /// CONFIRM BUTTON
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderSuccessScreen(),
                    ));
              },
              child: ContainerButtonModel(
                itext: 'Confirm Order',
                bgColor: Color(0xFF779650),

              ),
            )
          ],
        ),
      ),
    );
  }

  static Widget _orderItem(String name, String price) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name, style:  TextStyle(fontSize: 18)),
          Text(price, style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }

  static Widget _priceRow(String title, String value, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(
              fontSize: 18,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 18,
              color: Colors.red,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
