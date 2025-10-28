import 'package:ecom/widgets/container_button_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  List imageList = [
    'assets/img_1.jpg',
    'assets/img_2.jpg',
    'assets/img_3.jpg',
    'assets/img_4.jpg',
    'assets/img_5.jpg',
  ];

  List productTiles = [
    'Gown',
    'T-Shirt',
    'Warm Coat',
    'Girls Wear',
    'Shoes',
  ];

  List prices = [
    "\$300",
    "\$40",
    "\$350",
    "\$50",
    "\$100",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        leading: BackButton(),
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 550,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: imageList.length,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Checkbox(
                              value: true,
                              onChanged: (val) {},
                              splashRadius: 20,
                              activeColor: Colors.red,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                imageList[index],
                                height: 80,
                                width: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  productTiles[index],
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black87),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  prices[index],
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.minus,
                                  color: Colors.green,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '1',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  CupertinoIcons.plus,
                                  color: Colors.red,
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Select All',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Checkbox(
                    value: false,
                    splashRadius: 20,
                    onChanged: (value) {},
                    activeColor: Colors.red,
                  )
                ],
              ),
              Divider(
                height: 20,
                thickness: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Payment',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  Text(
                    '\$400.0',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.red),
                  )
                ],
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {},
                child: ContainerButtonModel(
                  bgColor: Color(0xFF2292c1),
                  containerWidth: MediaQuery.of(context).size.width,
                  itext: "Checkout",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
