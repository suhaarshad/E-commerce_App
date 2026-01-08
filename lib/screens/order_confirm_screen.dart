import 'package:flutter/material.dart';

import '../widgets/container_button_model.dart';

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
            const Text(
              "Delivery Address",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text(
                    "123 Street Name,\nKarachi, Pakistan\n+92 300 1234567",
                    style: TextStyle(fontSize: 15),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(onPressed: (){}, child: Text("Change",style: TextStyle(
                      color: Colors.red,
                      fontSize: 18
                    ),)),
                  )

                ]
              ),

            ),

            const SizedBox(height: 20),

            /// ORDER ITEMS
            const Text(
              "Order Items",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            _orderItem("Product 1", "2 x \$ 30.00"),
            _orderItem("Product 2", "1 x \$ 45"),

            const SizedBox(height: 20),

            /// PRICE DETAILS
            const Text(
              "Price Details",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            _priceRow("Items Total", "\$ 300.00"),
            _priceRow("Delivery Fee", "\$ 10.00"),
            const Divider(),
            _priceRow("Total Payable", "\$ 400.00", isBold: true),

            const Spacer(),

            /// CONFIRM BUTTON
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => OrderConfirmationScreen(),
                    ));
              },
              child: ContainerButtonModel(
                itext: 'Confirm Order',
                containerWidth: MediaQuery.of(context).size.width,
                bgColor: Color(0xFF2292c1),
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
          Text(name, style: const TextStyle(fontSize: 15)),
          Text(price, style: const TextStyle(fontSize: 15)),
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
          Text(
            title,
            style: TextStyle(
              fontSize: 15,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 15,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
