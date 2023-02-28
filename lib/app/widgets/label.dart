import 'package:get/get.dart';

import 'package:flutter/cupertino.dart';

import '../constant/app_colors.dart';

class Label extends StatelessWidget {
  const Label({required this.label, super.key});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Text(
        label,
        style: Get.textTheme.headline4!.copyWith(
          color: AppColors.appTextColor,
        ),
      ),
    );
  }
}
