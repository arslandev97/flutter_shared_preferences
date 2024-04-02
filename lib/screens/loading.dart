import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:preferences_app/screens/home.dart';
import 'package:preferences_app/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';



class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData()async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    bool isLogin = sp.getBool("isLogin") ?? false;

    if(isLogin){
      Timer(const Duration(seconds: 5), () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));
      });
    }else{
      Timer(const Duration(seconds: 5), () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/loading.jpg"),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 10.0,
                sigmaY: 10.0,
              ),
              child: Container(
                color: Colors.black.withOpacity(0.5),
              ),
            ),

            GradientText(
                'Shared \nPreferences',
                textAlign: TextAlign.center,
                style: GoogleFonts.yellowtail(
                  textStyle: const TextStyle(
                    fontSize: 60.0,
                    height: 1.0,
                  ),
                ),
                colors: const [
                    Colors.blue,
                    Colors.red,
                    Colors.teal,
                ],
            ),

            const SizedBox(height: 40,),

            SpinKitFadingFour(
              size: 150.0,
              shape: BoxShape.circle,
              itemBuilder: (BuildContext context, int index) {
                return DecoratedBox(
                  decoration: BoxDecoration(
                    color: index.isEven ? Colors.blue : Colors.red,
                  ),
                );
              },
            )


          ],
        ),
      ),
    );
  }
}

