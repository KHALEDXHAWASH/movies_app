import 'package:flutter/material.dart';
import 'package:movies_app/core/colors_manager.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isEgyptSelected = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colorsmanager.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:
        IconButton(icon: Icon(Icons.arrow_back,color: Colorsmanager.yellow,),
          padding: EdgeInsets.only(top: 26),
          onPressed: () => Navigator.pop(context),),
        title: Padding(
          padding: EdgeInsets.only(top: 23),
          child: Text('Register',style:TextStyle(color: Colorsmanager.yellow)),
        ),
          centerTitle: true,
      ),

    );

  }

}
