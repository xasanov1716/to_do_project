import 'package:flutter/material.dart';
import 'package:to_do_project/ui/settings/security/security_screen.dart';


class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Password'),
        leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SecurityScreen()));},),
      ),
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}
