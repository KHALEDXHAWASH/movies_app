import 'dart:ui_web';

import 'package:flutter/material.dart';
import 'package:movies_app/core/assets_manager.dart';
import 'package:movies_app/core/colors_manager.dart';
import 'package:movies_app/presentation/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isEgyptSelcted =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorsmanager.black,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 60),
              Image(image: AssetImage(AssetsManager.splash), width: 240,),
              SizedBox(height: 40),
              Center(
                child: Column(children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(
                      color: Colorsmanager.white,
                      fontSize: 16,
                    ),
                    filled: true,
                    fillColor: Colorsmanager.grey,
                    prefixIcon: Icon(
                      Icons.email_sharp,
                      color: Colorsmanager.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  style: TextStyle(color: Colorsmanager.white),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(
                      color: Colorsmanager.white,
                      fontSize: 16,
                    ),
                    filled: true,
                    fillColor: Colorsmanager.grey,
                    prefixIcon: Icon(Icons.lock, color: Colorsmanager.white),
                    suffixIcon: Icon(
                      Icons.visibility_off,
                      color: Colorsmanager.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  style: TextStyle(color: Colorsmanager.white),
                ),
                SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      "Forget Password ?",
                      style: TextStyle(color: Colorsmanager.yellow),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    backgroundColor: Colorsmanager.yellow,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colorsmanager.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't Have Account ?",style: TextStyle(color: Colorsmanager.white,fontWeight: FontWeight.w900,fontSize: 14),),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RegisterPage()));
                    },
                    child: Text(" Create One",style: TextStyle(
                      color: Colorsmanager.yellow,fontWeight: FontWeight.w900,fontSize: 14),),
                  )
                  ]
                )
                ],
                ),
              ), SizedBox(height: 36.6,),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colorsmanager.yellow,
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "OR",
                      style: TextStyle(fontSize: 16, color: Colorsmanager.yellow),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colorsmanager.yellow,
                      thickness: 1,
                    ),
                  ),
                ]

              ),
              SizedBox(height: 28),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: Colorsmanager.yellow,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.g_mobiledata,color: Colorsmanager.grey,size: 40,),
                    SizedBox(width: 4,),
                    Text('Login With Google',style: TextStyle(color: Colorsmanager.grey,fontWeight: FontWeight.bold,fontSize: 16),)

                  ],
                )

              ),
                 SizedBox(height: 24,),
              InkWell(
                onTap: (){
                  setState(() {
                    isEgyptSelcted=!isEgyptSelcted;
                  });
                },
                child:Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colorsmanager.black,
                    border: Border.all(
                      color: Colorsmanager.yellow,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(30),
                     
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration:!isEgyptSelcted? BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.yellow, width:5),
                          ): BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.yellow, width:0),
                  ),

                          child: _buildFlag(
                            assetpath:'assets/images/am.png',
                                isActive:!isEgyptSelcted,
                          ),
                        ),
                      ),
                      SizedBox(width: 4,),
                      GestureDetector(
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration:!isEgyptSelcted? BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.yellow, width:0),
                          ): BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.yellow, width:5),
                          ),
                          child: _buildFlag(
                            assetpath:'assets/images/EG.png',
                            isActive:isEgyptSelcted,
                          ),
                        ),
                      ),

                    ],
                  ),
                ) ,
              )

            ]
          )
        )
      )
    );



  }
  Widget _buildFlag({required String assetpath,required bool isActive}){
    return AnimatedOpacity(
      opacity: 1.0,
      duration: Duration(milliseconds: 200),
      child: CircleAvatar(

        backgroundImage: AssetImage(assetpath),
        radius: 16,
      ),
    );
  }
}
