import 'package:ecom/screens/order_confirm_screen.dart';
import 'package:ecom/widgets/container_button_model.dart';
import 'package:flutter/material.dart';

class ShippingAddress extends StatelessWidget {
  const ShippingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      appBar: AppBar(
        title: Text("Shipping Address"),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Full Name
            _inputField("Full Name"),

            // Phone
            _inputField("Phone Number", keyboard: TextInputType.phone),

            // Address
            _inputField("Street Address"),

            // City & State
            Row(
              children: [
                Expanded(child: _inputField("City")),
                SizedBox(width: 12),
                Expanded(child: _inputField("State")),
              ],
            ),

            // Zip & Country
            Row(
              children: [
                Expanded(child: _inputField("Zip Code")),
                const SizedBox(width: 12),
                Expanded(child: _inputField("Country")),
              ],
            ),

            const Spacer(),

            // Save Button
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => OrderConfirmationScreen(),
                    ));
              },
              child: ContainerButtonModel(
                itext: 'Save Address',
                bgColor: Color(0xFF779650),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _inputField(String hint,
      {TextInputType keyboard = TextInputType.text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: TextField(
        keyboardType: keyboard,
        decoration: InputDecoration(
          hintText: hint,
          filled: true,
          fillColor: Colors.white,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

