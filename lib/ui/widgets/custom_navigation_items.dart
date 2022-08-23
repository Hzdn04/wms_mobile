import 'package:flutter/material.dart';
import 'package:wms_mobile/shared/theme.dart';

class CustomNavigation extends StatelessWidget {
  final String imgUrl;
  final bool isSelected;

  const CustomNavigation({
    super.key,
    required this.imgUrl,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imgUrl),
            ),
          ),
        ),
        Container(
          height: 5,
          width: 28,
          decoration: BoxDecoration(
              color: isSelected ? kPrimaryColor : kTransparanColor,
              borderRadius: BorderRadius.circular(20)),
        )
      ],
    );
  }
}
