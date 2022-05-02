import 'package:flow/utils/colors.dart';
import 'package:flow/utils/dimensions.dart';
import 'package:flow/widgets/big_text.dart';
import 'package:flow/widgets/icon_and_text_widget.dart';
import 'package:flow/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, size: Dimensions.font30,),
        SizedBox(height: Dimensions.height10),
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) { return
                Icon(
                  Icons.star,
                  color: AppColors.mainColor,
                  size: 15,
                );
              }),
            ),
            SizedBox(width: Dimensions.width05),
            SmallText(text: "4.5"),
            SizedBox(width: Dimensions.width15),
            SmallText(text: "1287"),
            SizedBox(width: Dimensions.width05),
            SmallText(text: "Comments")
          ],
        ),
        SizedBox(height: Dimensions.height20),
        // time and distance
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconAndTextWidget(
                icon: Icons.circle_sharp,
                text: "Normal",
                iconColor: AppColors.iconColor1),
            IconAndTextWidget(
                icon: Icons.location_on,
                text: "2.3km",
                iconColor: AppColors.mainColor),
            IconAndTextWidget(
                icon: Icons.access_time_rounded,
                text: "40 hour",
                iconColor: AppColors.iconColor2),
          ],
        ),
      ],
    );
  }
}
