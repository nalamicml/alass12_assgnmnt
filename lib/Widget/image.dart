import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageWidget extends StatelessWidget {
  final String imagePath;
  final double? width;
  final double? height;

  const ImageWidget({
    Key? key,
    required this.imagePath,
    required this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      imagePath,
      fit: BoxFit.cover,
      width: width,
      height: height,
    );
  }
}
