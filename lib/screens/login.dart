

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:preferences_app/screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var emailController = TextEditingController();
  var nameController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text("Login Screen", style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                hintText: "Email",
              ),
            ),
          ),

          const SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: "Name",
              ),
            ),
          ),

          const SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "Password",
              ),
            ),
          ),


          const SizedBox(height: 40,),

          InkWell(
            onTap: ()async{
              SharedPreferences sp = await SharedPreferences.getInstance();
              
              sp.setString("email", emailController.text.toString());
              sp.setString("name", nameController.text.toString());
              sp.setBool("isLogin", true);

              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context)=> const HomeScreen(),
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
                child: Text("Login", style: GoogleFonts.aBeeZee(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                ),),
              ),
            ),
          ),

        ],
      ),
    );
  }
}