import 'package:flutter/material.dart';
import 'package:movies_app/core/assets_manager.dart';
import 'package:movies_app/presentation/login_page.dart';
import 'package:movies_app/presentation/onbording2.dart';

import '../core/colors_manager.dart';

class Onbording extends StatefulWidget {
  const Onbording({super.key});



  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorsmanager.black,
      body:Stack(
        fit: StackFit.expand,
        children: [
      Image.asset( AssetsManager.posters,fit: BoxFit.cover,),
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,

            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colorsmanager.black
                ]

              )
            ),
          )
            , Align(
    alignment: Alignment.bottomCenter,
    child: Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
    Text(
    "Find Your Next\nFavorite Movie Here",
    textAlign: TextAlign.center,
    style: TextStyle(
    color: Colorsmanager.white,
    fontSize: 36,
    fontWeight: FontWeight.bold,
    height: 1.3,
    ),
    ),
      const SizedBox(height: 12),
      Text(
        "Get access to a huge library of movies\nto suit all tastes. You will surely like it.",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colorsmanager.white,
          fontSize: 18,

        ),
      ),
    const SizedBox(height: 24),
    SizedBox(
    width:MediaQuery.sizeOf(context).width,
    height: 48,
    child: ElevatedButton(
    onPressed: () {
       Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Onbording2()));
    },
    style: ElevatedButton.styleFrom(
    backgroundColor: Colorsmanager.yellow,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
    ),
    ),
    child: Text(
    "Explore Now",
    style: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 16,
    )
    )
    )
    )],

      )

    )
          )
        ]

      )
    );
  }
}
