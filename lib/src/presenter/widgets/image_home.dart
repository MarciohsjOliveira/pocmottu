import 'package:flutter/material.dart';

class ImageHomeWidget extends StatelessWidget {
  const ImageHomeWidget({
    required this.name,
    required this.width,
    required this.height,
    Key? key,
  }) : super(key: key);
  final String name;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      name,
      width: width,
      height: height,
      scale: 1,
    );
  }
}
