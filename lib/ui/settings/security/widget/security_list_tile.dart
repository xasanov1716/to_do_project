import 'package:flutter/material.dart';
import 'package:to_do_project/utils/app_colors.dart';

class MenuListTile extends StatelessWidget {
  const MenuListTile({Key? key, required this.text, required this.onTap}) : super(key: key);

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      onTap: onTap,
      title: Text(text,style: TextStyle(fontSize: 16,color: AppColors.C_202D41.withOpacity(0.5)),),
      trailing: Icon(Icons.keyboard_arrow_right_outlined),
    );
  }
}
