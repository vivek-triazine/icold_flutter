import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icold/app/widgets/gap.dart';

import '../constant/app_colors.dart';

class CustomRegistrationTile extends StatelessWidget {
  const CustomRegistrationTile({
    super.key,
    required this.imageURL,
    required this.text,
    required this.onTab,
    required this.iconColor,
    required this.bgColor,
  });
  final String imageURL;
  final String text;
  final void Function() onTab;
  final Color iconColor;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.appBorderColor,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
                radius: 28,
                // backgroundImage: ,
                backgroundColor: bgColor,
                child: Image.asset(
                  imageURL,
                  height: 40,
                  width: 35,
                )),
            Text(
              text,
              style: Get.textTheme.headline3!.copyWith(
                color: AppColors.appTextColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            HorizontalGap(
              gap: 50,
            ),
            Icon(
              Icons.arrow_circle_right_outlined,
              color: iconColor,
              size: 26,
            )
          ],
        ),
      ),
    );
  }
}
