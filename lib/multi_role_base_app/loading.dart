

import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:preferences_app/multi_role_base_app/admin.dart';
import 'package:preferences_app/multi_role_base_app/login.dart';
import 'package:preferences_app/multi_role_base_app/student.dart';
import 'package:preferences_app/multi_role_base_app/teacher.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LmsLoadingScreen extends StatefulWidget {
  const LmsLoadingScreen({super.key});

  @override
  State<LmsLoadingScreen> createState() => LmsLoadingScreenState();
}

class LmsLoadingScreenState extends State<LmsLoadingScreen> {

  void getData()async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    
    bool isLogin = sp.getBool("isLogin") ?? false;

    if(isLogin){
      String? user_type = sp.getString("userType");

      if(user_type == "Admin"){
        Timer(const Duration(seconds: 5), (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const AdminView()));
        });
      }else if(user_type == "Teacher"){
        Timer(const Duration(seconds: 5), (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const TeacherView()));
        });
      }else{
        Timer(const Duration(seconds: 5), (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const StudentView()));
        });
      }

    }else{
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const LMSLoginView()));
    }
  }

  @override
  void initState(){
    super.initState();
    getData();
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/spbg.jpeg"),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage("assets/images/lms.png"),
                ),

                SpinKitWave(
                  itemBuilder: (BuildContext context, int index) {
                    return DecoratedBox(
                      decoration: BoxDecoration(
                        color: index.isEven ? const Color(0xff1CB78D) : Colors.white,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
