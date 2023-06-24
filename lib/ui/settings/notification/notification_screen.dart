import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_project/ui/settings/notification/widget/notification_list_tile.dart';
import 'package:to_do_project/ui/settings/settings_screen.dart';
import 'package:to_do_project/utils/app_colors.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {

  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 21,right: 20),
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
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SettingsScreen()));
                        },
                      ),
                      SizedBox(width: 10.w,),
                      Text(
                        'Notification',
                        style: TextStyle(
                            fontFamily: 'GalanoGrotesque-Medium',
                            fontSize: 20,
                            fontWeight: FontWeight.w100,
                            color: AppColors.C_202D41.withOpacity(0.9)),
                      ),
                    ],
                  ),
                  SizedBox(height: 32.h,),
                  UniversalListTile(text: 'Hide Notification content\n', stitle: '''Notification content won’t be shown while your\nphone is blocked'''),
                  SizedBox(height: 20.h,),
                  UniversalListTile(text: 'Hide Notification content\n', stitle: '''Notification content won’t be shown while your\nphone is blocked'''),
                  SizedBox(height: 20.h,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 21),
                    child: Row(
                      children: [
                        Text('Default reminder time'),
                        Spacer(),
                        Text('10 minutes before'),
                        SizedBox(width: 1.w,),
                        IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_right_sharp,color: AppColors.C_292D32,))
                      ],
                    ),
                  ),
                ],
        ),
      ),
    );
  }
}
