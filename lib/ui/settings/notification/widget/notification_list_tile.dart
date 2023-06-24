import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_project/utils/app_colors.dart';


class UniversalListTile extends StatefulWidget {
  const UniversalListTile({Key? key, required this.text, required this.stitle}) : super(key: key);


  final String text;
  final String stitle;

  @override
  State<UniversalListTile> createState() => _UniversalListTileState();
}

bool check = false;

class _UniversalListTileState extends State<UniversalListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.text),
      subtitle: Text(widget.stitle),
      trailing: CupertinoSwitch(
        onChanged: (v){
          setState(() {
            check = v;
          });
        },
        activeColor: AppColors.C_2563EB , value: check,
      ),
    );
  }
}
