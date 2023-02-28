import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:icold/app/routes/app_pages.dart';
import 'package:icold/app/widgets/custom_registration_tile.dart';

import '../../../constant/app_Images.dart';
import '../../../constant/app_colors.dart';
import '../../../widgets/custom_pink_button.dart';
import '../../../widgets/custom_pink_outline_button.dart';
import '../../../widgets/gap.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            image: AssetImage(
              AppImages.appPurpleBacKground,
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 100, 24, 50),
            child: Column(
              children: [
                Container(
                  height: Get.height * .62,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 27, vertical: 22),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    // boxShadow: [
                    //   BoxShadow(
                    //     blurRadius: 10,
                    //     spreadRadius: 5,
                    //     color: Colors.black,
                    //     offset: Offset(3, 5),
                    //   ),
                    // ],
                    border: Border.all(
                        //color: const Color.fromRGBO(0, 0, 0, 0.25),
                        color: const Color.fromARGB(255, 219, 218, 218)),
                    color: AppColors.appWhiteColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            AppImages.applogo,
                            width: 77,
                            height: 88,
                          ),
                          SizedBox(
                            width: Get.width * .5,
                            child: Column(
                              children: [
                                Text(
                                  'Welcome to',
                                  style: Get.textTheme.headline2!.copyWith(
                                    color: AppColors.appTextColor,
                                  ),
                                ),
                                Text(
                                  'ICOLD 2024',
                                  style: Get.textTheme.headline1!.copyWith(
                                    color: AppColors.appPinkColor,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Expanded(
                                      child: Divider(
                                        thickness: 1.5,
                                        indent: 15,
                                        endIndent: 2,
                                        color: AppColors.appThemePurpleColor,
                                      ),
                                    ),
                                    Text(
                                      'Symposium',
                                      style: Get.textTheme.headline4!.copyWith(
                                        color: AppColors.appThemePurpleColor,
                                      ),
                                    ),
                                    const Expanded(
                                      child: Divider(
                                        indent: 2,
                                        endIndent: 15,
                                        color: AppColors.appThemePurpleColor,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const VerticalGap(
                        gap: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Registration',
                            style: Get.textTheme.headline2!.copyWith(
                              fontWeight: FontWeight.w500,
                              color: AppColors.appTextColor,
                            ),
                          )
                        ],
                      ),
                      const VerticalGap(
                        gap: 30,
                      ),
                      CustomRegistrationTile(
                        imageURL: AppImages.authorIconImage,
                        text: 'Author',
                        onTab: () {},
                        iconColor: AppColors.appGreenColor,
                        bgColor: AppColors.appLightGreenColor,
                      ),
                      VerticalGap(
                        gap: 20,
                      ),
                      CustomRegistrationTile(
                        imageURL: AppImages.delegateIconImage,
                        text: 'Delegate',
                        onTab: () {},
                        iconColor: AppColors.appPinkColor,
                        bgColor: AppColors.appLightPinkColor,
                      ),
                      VerticalGap(
                        gap: 20,
                      ),
                      CustomRegistrationTile(
                        imageURL: AppImages.exhibitorIconImage,
                        text: 'Exhibitor',
                        onTab: () {},
                        iconColor: AppColors.appLightBlueColor,
                        bgColor: AppColors.appSkyBlueColor,
                      ),
                      const VerticalGap(
                        gap: 35,
                      ),
                    ],
                  ),
                ),
                const VerticalGap(
                  gap: 20,
                ),
                Text(
                  'Already have an account?',
                  style: Get.textTheme.headline6!.copyWith(
                      color: AppColors.appTextColor,
                      fontWeight: FontWeight.w400),
                ),
                const VerticalGap(
                  gap: 20,
                ),
                SizedBox(
                  width: Get.width * .7,
                  child: CustomPinkButton(
                    onTab: () {
                      Get.toNamed(Routes.LOGIN);
                    },
                    text: 'Login',
                  ),
                ),
                const VerticalGap(
                  gap: 60,
                ),
                Text(
                  'Product Design & Developed by ',
                  style: Get.textTheme.headline6!.copyWith(
                    color: AppColors.appThemePurpleColor,
                  ),
                ),
                Text(
                  'Triazine Software Pvt. Ltd.',
                  style: Get.textTheme.headline6!.copyWith(
                    color: AppColors.appPinkColor,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
