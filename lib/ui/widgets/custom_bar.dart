import 'package:flutter/material.dart';
import 'package:wms_mobile/shared/theme.dart';

class BarCustom extends StatelessWidget {

  final String title;
  final int taskLength;

  const BarCustom({super.key, required this.title, this.taskLength = 0});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style:
                  blackTextStyle.copyWith(fontSize: 13, fontWeight: semiBold),
            ),
            Row(
              children: [
                Text(
                  taskLength.toString(),
                  style:
                      redTextStyle.copyWith(fontSize: 13, fontWeight: semiBold),
                ),
                Text(
                  'Task left',
                  style: greyTextStyle.copyWith(
                      fontSize: 13, fontWeight: semiBold),
                ),
              ],
            ),
          ],
        ),
        Container(
          width: double.infinity,
          height: 8,
          margin: EdgeInsets.only(top: 10, bottom: 15),
          decoration: BoxDecoration(
            color: kGreyColor,
          ),
          child: Container(),
        )
      ],
    );
  }
}
