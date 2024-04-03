import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:preferences_app/multi_role_base_app/admin.dart';
import 'package:preferences_app/multi_role_base_app/student.dart';
import 'package:preferences_app/multi_role_base_app/teacher.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LMSLoginView extends StatefulWidget {
  const LMSLoginView({super.key});

  @override
  State<LMSLoginView> createState() => _LMSLoginViewState();
}

class _LMSLoginViewState extends State<LMSLoginView> {

  final List<String> items = ['Admin', 'Student', 'Teacher'];
  String selectedOption = 'Admin';

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController userTypeController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F9FA),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                margin: const EdgeInsets.only(top: 150),
                height: 550,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    const Image(
                      image: AssetImage("assets/images/lms.png"),
                      width: 150,
                    ),

                    // const SizedBox(height: 120,),

                    Text("Sign In",
                      style: GoogleFonts.montserrat(
                        textStyle : const TextStyle(
                          fontSize: 26,
                        ),
                      ),
                    ),

                    // Email
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      child: TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: GoogleFonts.montserrat(),
                          prefixIcon: const Icon(Icons.email_outlined),
                          prefixIconConstraints: const BoxConstraints(
                              minWidth: 60.0
                          ),
                          fillColor: const Color(0xffF5F9FA),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),

                    // Password
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 30),
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: GoogleFonts.montserrat(),
                          prefixIcon: const Icon(Icons.lock_outline),
                          prefixIconConstraints: const BoxConstraints(
                              minWidth: 60.0
                          ),
                          suffixIcon: const Icon(Icons.visibility_off, color: Colors.black45,),
                          fillColor: const Color(0xffF5F9FA),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: DropdownButtonFormField<String>(
                        value: selectedOption,
                        items: items.map((String item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Text(item,
                              style: GoogleFonts.montserrat(),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          // Handle dropdown value change
                          if (value != null) {
                            setState(() {
                              selectedOption = value;
                            });
                            
                          }
                        },
                        decoration: const InputDecoration(
                          labelText: 'Select an option',
                          labelStyle: TextStyle(color: Color(0xff231C1F)),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff231C1F),
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff231C1F),
                            )
                          ),
                          fillColor: Color(0xffF5F9FA),
                          filled: true,

                        ),
                      ),
                    ),

                    const SizedBox(height: 30,),

                    // Login Button
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: InkWell(
                        onTap: ()async{
                          SharedPreferences sp = await SharedPreferences.getInstance();
                          sp.setString("email", emailController.text.toString());
                          sp.setString("userType", selectedOption);
                          sp.setBool("isLogin", true);


                          var user_type = sp.getString("userType");

                          if(user_type == "Admin"){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const AdminView()));
                          }else if(user_type == "Teacher"){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const TeacherView()));
                          }else{
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const StudentView()));
                          }

                        },
                        child: Container(
                          height: 45,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xff1CB78D),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text("Sign up",
                              style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                                color: Colors.white,
                                letterSpacing: 1,
                              ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),

            const SizedBox(height: 20,),

            // Do not have an account?
            RichText(
              text: TextSpan(
                  children: <TextSpan> [
                    TextSpan(
                      text: "Already have an account? ",
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          color: Colors.black87.withOpacity(0.7),
                        ),
                      ),
                    ),

                    TextSpan(
                      text: "Log in",
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          color: Colors.black87.withOpacity(0.9),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ]
              ),
            ),

          ],
        ),
      ),
    );
  }
}
