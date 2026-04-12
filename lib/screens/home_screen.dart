import 'package:ecom/screens/product_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({super.key});

  List<String> tabs = ['All', 'Category', 'Top', 'Recommended'];

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

  List reviews = [
    "54",
    "225",
    "100",
    "754",
    "560",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xFF779650),
                          ),
                          label: Text('Find your product'),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 6,
                      decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.notifications,
                          color: Color(0xFF779650),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    itemCount: tabs.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return FittedBox(
                        child: Container(
                          height: 40,
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.only(left: 15, right: 15),
                          decoration: BoxDecoration(
                            color: Colors.black12.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              tabs[index],
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                Container(
                  // color: Colors.red,
                  height: 180,
                  child: ListView.builder(
                      itemCount: imageList.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 320,
                          margin: EdgeInsets.only(right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                // height: 180,
                                // width: 180,
                                child: Stack(children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen()));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        imageList[index],
                                        height: 180,
                                        width: 180,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    right: 10,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      productTiles[index],
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      width: 120,
                                      child: Text(
                                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                                        'Lorem Ipsum has been the industry\'s standard dummy text',
                                        maxLines: 5,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 22,
                                          color: Colors.amber,
                                        ),
                                        Text(
                                          "(" + reviews[index] + ")",
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          prices[index],
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red,
                                            // color: Color(0xFF2292c1),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Newest Products",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                SizedBox(height: 30),
                GridView.builder(
                    itemCount: productTiles.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.65,
                      // crossAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(8),
                        // height: 250,
                        width: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 200,
                              child: Stack(children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen()));
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      imageList[index],
                                      width: 200,
                                      height: 200,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 10,
                                  right: 10,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              productTiles[index],
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 22,
                                  color: Colors.amber,
                                ),
                                Text(
                                  "(" + reviews[index] + ")",
                                ),
                                SizedBox(width: 10),
                                Text(
                                  prices[index],
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
