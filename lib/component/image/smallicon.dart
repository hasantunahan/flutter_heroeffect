import 'package:flutter/material.dart';
import 'package:hero_effect/constant/image.dart';

class SmallIcon extends StatelessWidget {
  final String? image;
  final int? type;
  const SmallIcon({Key? key, this.image, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return type == 0
        ? Image.asset(
            ImageConstant.instance.toPNG(image),
            width: 25,
            height: 25,
          )
        : Image.network(
            ImageConstant.instance.toPNG(image),
            width: 25,
            height: 25,
          );
  }
}
