import 'package:ecom/screens/shippingaddress.dart';
import 'package:ecom/widgets/container_button_model.dart';
import 'package:flutter/material.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  int _type = 1;

  void _handdleRadio(Object? e) =>
      setState(() {
        _type = e as int;
      });

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment Method"),
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 40),
                Container(
                  height: 55,
                  width: size.width,
                  decoration: BoxDecoration(
                    border: _type == 1
                        ? Border.all(width: 1, color: Colors.red)
                        : Border.all(width: 0.3, color: Colors.black),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Radio(
                                value: 1,
                                groupValue: _type,
                                onChanged: _handdleRadio,
                                activeColor: Colors.red,
                              ),
                              Text(
                                "Paypal",
                                style: _type == 1
                                    ? TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black)
                                    : TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                          Image(
                            image: AssetImage('assets/paypal.png'),
                            height: 40,
                            width: 40,
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 55,
                  width: size.width,
                  decoration: BoxDecoration(
                    border: _type == 2
                        ? Border.all(width: 1, color: Colors.red)
                        : Border.all(width: 0.3, color: Colors.black),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Radio(
                                value: 2,
                                groupValue: _type,
                                onChanged: _handdleRadio,
                                activeColor: Colors.red,
                              ),
                              Text(
                                "Credit Card",
                                style: _type == 2
                                    ? TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black)
                                    : TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                          Spacer(),
                          Image.asset(
                            'assets/visa.png',
                            width: 40,
                          ),
                          SizedBox(width: 8),
                          Image.asset(
                            'assets/mastercard.png',
                            width: 40,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 55,
                  width: size.width,
                  decoration: BoxDecoration(
                    border: _type == 3
                        ? Border.all(width: 1, color: Colors.red)
                        : Border.all(width: 0.3, color: Colors.black),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Radio(
                                value: 3,
                                groupValue: _type,
                                onChanged: _handdleRadio,
                                activeColor: Colors.red,
                              ),
                              Text(
                                "Google Pay",
                                style: _type == 3
                                    ? TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black)
                                    : TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                          Image(
                            image: AssetImage('assets/gpay.png'),
                            height: 60,
                            width: 60,
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 55,
                  width: size.width,
                  decoration: BoxDecoration(
                    border: _type == 4
                        ? Border.all(width: 1, color: Colors.red)
                        : Border.all(width: 0.3, color: Colors.black),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Radio(
                                value: 4,
                                groupValue: _type,
                                onChanged: _handdleRadio,
                                activeColor: Colors.red,
                              ),
                              Text(
                                "Amazon Pay",
                                style: _type == 4
                                    ? TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black)
                                    : TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                          Image(
                            image: AssetImage('assets/amazonpay.png'),
                            height: 90,
                            width: 90,
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sub-Total',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                    Text(
                      '\$400.00',
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shippping Fee',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                    Text(
                      '\$15.00',
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Divider(
                  height: 30,
                  color: Colors.black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Payment',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '\$415.00',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 100),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => ShippingAddress(),

                    ));
                  },
                  child: ContainerButtonModel(
                    itext: "Confirm Payment",
                    containerWidth: size.width,
                    bgColor: Color(0xFF2292c1),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
