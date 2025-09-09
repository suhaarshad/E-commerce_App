import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  // const ProductScreen({super.key});

  List<String> imageList = [
    'assets/img_1.jpg',
    'assets/img_2.jpg',
    'assets/img_3.jpg',
    'assets/img_4.jpg',
    'assets/img_5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  SizedBox(
                      height: 450,
                      width: MediaQuery.of(context).size.width,
                      child: FanCarouselImageSlider.sliderType1(
                        imagesLink: imageList,
                        sliderHeight: 400,
                        isAssets: true,
                        autoPlay: false,
                        showIndicator: true,
                      )),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          SizedBox(height: 30,),
                          Text('Warm Zipper',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text('Hooded Jacket',
                            style: TextStyle(
                              fontSize: 18,
                            ),),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.amber, size: 25,),
                              Text('(54)',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),),
                              SizedBox(width: 10,),
                              Text('\$300',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),),
                            ],
                          )

                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),

    );
  }
}
