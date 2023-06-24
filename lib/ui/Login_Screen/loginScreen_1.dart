import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:to_do_project/ui/Login_Screen/wigets/Butom.dart';
import 'package:to_do_project/ui/Login_Screen/wigets/signAp1.dart';
import 'package:to_do_project/ui/Login_Screen/wigets/signApp.dart';
import 'package:to_do_project/ui/Login_Screen/wigets/tetxtfiled.dart';
import 'package:to_do_project/ui/Login_Screen/wigets/textfieled1.dart';
import 'package:to_do_project/ui/Login_Screen/wigets/todologo.dart';
import 'package:to_do_project/utils/app_colors.dart';
import 'package:to_do_project/utils/app_images.dart';

import '../tap_bax.dart';

class LoginScreen_1 extends StatefulWidget {
  const LoginScreen_1({Key? key}) : super(key: key);

  @override
  State<LoginScreen_1> createState() => _LoginScreen_1State();
}

class _LoginScreen_1State extends State<LoginScreen_1> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Container(
        padding: EdgeInsets.only(
            left: width * (20 / 375), right: width * (20 / 375)),
        child: Column(
          children: [
            SizedBox(
              height: 124.h,
            ),
            SvgPicture.asset(
              AppImages.galichka,
              height: 50.h,
              width: 107.w,
            ),
            SizedBox(
              height: 40.h,
            ),
            Email(text: 'Email Address', width: 335.w),
            SizedBox(
              height: 20.h,
            ),
            GlobalTextFieled(text: 'Pasword', width: width * (335 / 375).w),
            SizedBox(
              height: 40.h,
            ),
            Onpressed(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return TapBax();
                }));
              },
              text: 'Log In',
            ),
            SizedBox(
              height: 34.1.h,
            ),
            SignUp(onTap: () {},),
          ],
        ),
      ),
    );
  }
}
