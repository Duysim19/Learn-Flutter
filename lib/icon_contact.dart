import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconsContact extends StatelessWidget {
  final IconData strIcon;
  final Color strColor;
  final Color colorbtn;
  final double opacity;
  IconsContact({
    this.strIcon,
    this.strColor,
    this.colorbtn,
    this.opacity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: colorbtn.withOpacity(opacity),
      ),
      child: IconButton(
        icon: Icon(
          strIcon,
          color: strColor,
        ),
        onPressed: () {},
      ),
    );
  }
}
