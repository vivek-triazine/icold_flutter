import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:icold/app/routes/app_pages.dart';

import '../../../constant/app_Images.dart';
import '../../../constant/app_colors.dart';
import '../../../widgets/custom_pink_button.dart';
import '../../../widgets/custom_pink_outline_button.dart';
import '../../../widgets/custom_text_fields.dart';
import '../../../widgets/gap.dart';
import '../../../widgets/label.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 27, vertical: 22),
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
                                        style:
                                            Get.textTheme.headline4!.copyWith(
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
                              'Login',
                              style: Get.textTheme.headline2!.copyWith(
                                fontWeight: FontWeight.w500,
                                color: AppColors.appTextColor,
                              ),
                            )
                          ],
                        ),
                        const VerticalGap(
                          gap: 20,
                        ),
                        const Label(label: 'User ID'),
                        UniversalTextField(
                            controller: controller.userIdTextEditingController,
                            keyboardType: TextInputType.text,
                            hintText: 'Enter email address',
                            validatorErrorText: '',
                            validationMessageOnBlankText: ''),
                        const Label(label: 'Password'),
                        PasswordTextField(
                          isObSecure: true,
                          denySpaces: true,
                          controller: controller.passwordTextEditingController,
                        ),
                        const VerticalGap(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Forget Password?',
                              style: Get.textTheme.headline4!.copyWith(
                                color: AppColors.appPinkColor,
                              ),
                            )
                          ],
                        ),
                        const VerticalGap(
                          gap: 20,
                        ),
                        SizedBox(
                          width: Get.width,
                          child: CustomPinkButton(onTab: () {}, text: 'Login'),
                        )
                      ],
                    ),
                  ),
                  const VerticalGap(
                    gap: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Don\'t have an account?',
                      style: Get.textTheme.headline6!.copyWith(
                          color: AppColors.appTextColor,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  const VerticalGap(
                    gap: 25,
                  ),
                  SizedBox(
                      width: Get.width * .7,
                      child: CustomOutlineButton(
                          onTab: () {
                            Get.toNamed(Routes.REGISTER);
                          },
                          text: 'Register Now')),
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
      ),
    );
  }
}
