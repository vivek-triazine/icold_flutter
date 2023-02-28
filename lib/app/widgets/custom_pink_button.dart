import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/app_colors.dart';

class CustomPinkButton extends StatelessWidget {
  const CustomPinkButton({
    required this.onTab,
    required this.text,
    this.textStyle,
    super.key,
  });

  final void Function() onTab;
  final String text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      autofocus: true,
      onPressed: onTab,
      style: ElevatedButton.styleFrom(backgroundColor: AppColors.appPinkColor
          // const Color(0x00ff0000)

          ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(
          text,
          style: textStyle ??
              Get.textTheme.headline4!.copyWith(
                color: AppColors.appWhiteColor,
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
    );
  }
}
