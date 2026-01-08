import 'package:flutter/material.dart';

class ContainerButtonModel extends StatelessWidget {

  final Color? bgColor;
  final double? containerWidth;
  final String? itext;

  const ContainerButtonModel({super.key, this.bgColor, this.containerWidth, this.itext});

  @override
  Widget build(BuildContext context) {
     return
    Container(
      height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(12),
        ),
      child: Center(
        child: Text( itext!,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 19,
          color: Colors.white,
        ),),
      ),
    );
  }
}
