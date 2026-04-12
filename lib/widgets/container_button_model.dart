import 'package:flutter/material.dart';

class ContainerButtonModel extends StatelessWidget {

  final Color? bgColor;
  final String? itext;
  final double? containerWidth;

  const ContainerButtonModel({super.key,this.containerWidth, this.bgColor, this.itext});

  @override
  Widget build(BuildContext context) {
     return Container(
      height: 60,
        width: containerWidth,
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

