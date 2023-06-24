import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_project/ui/settings/notification/notification_screen.dart';
import 'package:to_do_project/ui/settings/security/change_password.dart';
import 'package:to_do_project/ui/settings/settings_screen.dart';
import 'package:to_do_project/ui/settings/widget/settings_list_tile.dart';
import 'package:to_do_project/utils/app_colors.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({Key? key}) : super(key: key);

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 21, right: 20),
        child: Column(
          children: [
            SizedBox(
              height: 40.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 4.w,
                ),
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: AppColors.black,
                    size: 24,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SettingsScreen()));
                  },
                ),
                SizedBox(width: 10.w,),
                Text(
                  'Security',
                  style: TextStyle(
                      fontFamily: 'GalanoGrotesque-Medium',
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                      color: AppColors.C_202D41.withOpacity(0.9)),
                ),
                
              ],
            ),
            SizedBox(height: 40.h,),
            MenuListTile(text: 'Change Password',onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ChangePasswordScreen()));},),
            SizedBox(height: 20.h,),
            ListTile(
              title: Text("Two Step Verification",style: TextStyle(fontSize: 16,color: AppColors.C_202D41.withOpacity(0.5))),
              trailing: Text('Enabled',style: TextStyle(fontFamily: 'GalanoGrotesque-Medium',fontSize: 14.sp,color: AppColors.C_202D41.withOpacity(0.5)),),
              onTap: (){},
            )
          ],
        ),
      ),
    );
  }
}
//
