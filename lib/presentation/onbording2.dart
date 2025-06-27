import 'package:flutter/material.dart';
import 'package:movies_app/core/assets_manager.dart';
import 'package:movies_app/presentation/login_page.dart';

import '../core/colors_manager.dart';

List<String> imagesPath=[AssetsManager.discover,AssetsManager.explore,AssetsManager.create,AssetsManager.review,AssetsManager.start];
List <String> titles=["Discover Movies","Explore All Genres","Create Watchlists","Rate, Review, and Learn","Start Watching Now"];
List<String>contents=["Explore a vast collection of movies in all \n qualities and genres. Find your next\n favorite film with ease.",
  "Discover movies from every genre, in all\n available qualities. Find something new\n and exciting to watch every day.",
  "Save movies to your watchlist to keep\n track of what you want to watch next.\n Enjoy films in various qualities and\n genres.",
  "Share your thoughts on the movies\n you've watched. Dive deep into film details and\n help others discover great\n movies with your reviews.",
  ""];
int counter=0;
class Onbording2 extends StatefulWidget {
  const Onbording2({super.key});

  @override
  State<Onbording2> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colorsmanager.black,
        body:Stack(
            fit: StackFit.expand,
            children: [
              Image.asset( imagesPath[counter],fit: BoxFit.cover,),
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
                  child: BottomSheet(

                    backgroundColor: Colorsmanager.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(40),
                      ),
                    ),
                     onClosing: () {  },
                    builder: (BuildContext context) { return Padding(
                      padding: const EdgeInsets.all(24.0),
                    child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                    Text(
                    titles[counter],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    color: Colorsmanager.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                    contents[counter],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    color: Colorsmanager.white,
                    fontSize: 14,
                      fontWeight: FontWeight.w400,

                    ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                    width:MediaQuery.sizeOf(context).width,
                    height: 55,
                    child: ElevatedButton(
                    onPressed: () {
                      if(counter<imagesPath.length-1)
                        {
                          setState(() {
                            counter++;

                          });
                        }
                      else if(counter==imagesPath.length-1)
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                        }

                    },
                    style: ElevatedButton.styleFrom(
                    backgroundColor: Colorsmanager.yellow,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    ),
                    ),
                    child:counter<imagesPath.length-1? Text(
                    "Next",
                    style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    )
                    ):
                    Text(
                        "Finish",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        )


                    )
                    )

                    ),
                   SizedBox(height: 16,),
                   counter>0?   SizedBox(
                          width:MediaQuery.sizeOf(context).width,
                          height: 55,
                          child: ElevatedButton(
                              onPressed: () {
                                if(counter>0)
                                {
                                  setState(() {
                                    counter--;

                                  });
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                shape: RoundedRectangleBorder(

                                  borderRadius: BorderRadius.circular(12),
                                  side: BorderSide(color: Colorsmanager.yellow),
                                ),
                              ),


                              child: Text(
                                  "Back",
                                  style: TextStyle(
                                    color: Colors.yellow,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  )
                              )
                          )
                      ):SizedBox()


                    ],

                    ));
                  },
                  )
              )
            ]

        )
    );
  }
}