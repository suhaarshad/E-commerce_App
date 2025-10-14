import 'package:ecom/screens/cart_screen.dart';
import 'package:flutter/material.dart';

import 'container_button_model.dart';

class ProductDetailPopUp extends StatelessWidget {
  final iStyle = TextStyle(
    color: Colors.black87,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  List<Color> clrs = [
    Colors.red.shade800,
    Colors.blue.shade800,
    Colors.green.shade800,
    Colors.brown
  ];

  // const ProductDetailPopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) => Container(
            height: MediaQuery.of(context).size.height / 2.5,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Size:', style: iStyle),
                          SizedBox(height: 20),
                          Text('Color:', style: iStyle),
                          SizedBox(height: 20),
                          Text('Total:', style: iStyle),
                          SizedBox(height: 20),
                        ],
                      ),
                      SizedBox(width: 30),
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 10),
                              Text('S', style: iStyle),
                              SizedBox(width: 30),
                              Text('M', style: iStyle),
                              SizedBox(width: 30),
                              Text('L', style: iStyle),
                              SizedBox(width: 30),
                              Text('XL', style: iStyle),
                              SizedBox(width: 30),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              for (var i = 0; i < 4; i++)
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 6),
                                  height: 28,
                                  width: 28,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: clrs[i],
                                  ),
                                )
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              SizedBox(width: 10),
                              Text('-', style: iStyle),
                              SizedBox(width: 30),
                              Text('1', style: iStyle),
                              SizedBox(width: 30),
                              Text('+', style: iStyle),
                              SizedBox(width: 30),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Payment", style: iStyle),
                      Text("\$40.00",
                          style: TextStyle(
                              color: Color(0xFFDB3022),
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                    ],
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));
                    },
                    child: ContainerButtonModel(
                      bgColor: Color(0xFF2292c1),
                      containerWidth: MediaQuery.of(context).size.width,
                      itext: "Checkout",
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
      child: ContainerButtonModel(
        bgColor: Color(0xFF2292c1),
        containerWidth: MediaQuery.of(context).size.width / 1.5,
        itext: "Buy Now",
      ),
    );
  }
}
