import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/app_colors.dart';

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton(
      {super.key, required this.onTab, this.padding, required this.text});
  final void Function() onTab;
  final EdgeInsets? padding;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        padding: padding ?? const EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.appPinkColor),
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Text(
          text,
          style: Get.textTheme.headline4!.copyWith(
            color: AppColors.appPinkColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
