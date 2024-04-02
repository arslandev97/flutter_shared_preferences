

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:preferences_app/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var userEmail;
  var userName;

  @override
  void initState() {
    super.initState();
    getUserData(); 
  }

  void getUserData()async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    setState(() {
      userEmail = sp.getString("email");
      userName = sp.getString("name");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text("Home Screen", style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Text("user email : $userEmail", style: GoogleFonts.aBeeZee(
            textStyle: const TextStyle(
              fontSize: 22,
              color: Colors.black45,
            ),
          ),),
           Text("user name : $userName", style: GoogleFonts.aBeeZee(
            textStyle: const TextStyle(
              fontSize: 22,
              color: Colors.black45,
            ),
          ),),



          InkWell(
            onTap: ()async{
              SharedPreferences sp = await SharedPreferences.getInstance();
              sp.clear();    
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context)=> const LoginScreen(),
                ),
              );

            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 30.0),
              height: 40,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                child: Text("Logout", style: GoogleFonts.aBeeZee(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                ),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
