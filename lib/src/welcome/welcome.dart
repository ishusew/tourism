import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../log/Log.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  void _onButtonTap() {
    // Perform the desired action when the button is tapped
    Navigator.of(context).pushReplacement(
        CupertinoPageRoute(builder: (ctx)=> const LogScreen()));

    print('Button tapped!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            width: MediaQuery.of(context).size.width * 1.7,
            bottom: 200,
            left: 100,
            child: Image.asset('assets/Backgrounds/Spline.png'),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 10),
            ),
          ),
          RiveAnimation.asset('assets/RiveAssets/shapes.riv'),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaY: 30, sigmaX: 30),
              child: SizedBox(),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Expanded(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    SizedBox(
                      width: 300,
                      child: Column(
                        children: [
                          const Text(
                            "Discover Sri Lanka!",
                            style: TextStyle(
                              fontSize: 50,
                              fontFamily: "Poppins",
                              height: 1.2,
                            ),
                          ),
                          SizedBox(height: 15,),
                          const Text(
                              "Discover Sri Lanka like never before with our intuitive tourism app.  Unleash the beauty of Sri Lanka and create unforgettable memories with our user-friendly mobile app.",
                            style: TextStyle(
                              fontSize: 16,

                            ),),
                          const SizedBox(
                            height: 200,
                          ),
                          GestureDetector(
                            onTap: _onButtonTap,
                            child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
                              ),
                              child: const Text(
                                'Get Started',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: FractionalTranslation(
                              translation: Offset(0.0, 1.0),
                              child: TextButton(
                                onPressed: () {
                                  print("pressed choose language");
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.transparent, // Set the background color to transparent
                                ),
                                child: Text(
                                  'Choose Language',
                                  style: TextStyle(
                                    color: Colors.black, // Set the text color to black
                                  ),
                                ),
                              ),
                            ),
                          )



                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
