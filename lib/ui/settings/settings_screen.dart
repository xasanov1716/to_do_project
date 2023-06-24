import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_project/ui/settings/notification/notification_screen.dart';
import 'package:to_do_project/ui/settings/security/security_screen.dart';
import 'package:to_do_project/ui/settings/widget/settings_list_tile.dart';
import 'package:to_do_project/utils/app_colors.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
                  onPressed: () {},
                ),
                SizedBox(width: 10.w,),
                Text(
                  'Settings',
                  style: TextStyle(
                      fontFamily: 'GalanoGrotesque-Medium',
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                      color: AppColors.C_202D41.withOpacity(0.9)),
                ),
                
              ],
            ),
            SizedBox(height: 40.h,),
            MenuListTile(text: 'Profile',onTap: (){

            },),
            MenuListTile(text: 'Notification',onTap: (){   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  NotificationScreen()));},),
            MenuListTile(text: 'Security',onTap: (){ Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SecurityScreen()));},),
          ],
        ),
      ),
    );
  }
}
//
