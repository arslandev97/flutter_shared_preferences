
import 'package:flutter/material.dart';
import 'package:preferences_app/multi_role_base_app/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StudentView extends StatefulWidget {
  const StudentView({super.key});

  @override
  State<StudentView> createState() => _StudentViewState();
}

class _StudentViewState extends State<StudentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFCFCFC),
      appBar: AppBar(
        // leading: Icon(Icons.more),
      ),
      drawer: Drawer(
        backgroundColor: const  Color(0xff1CB78D),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 30),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/arslan.jpg"),
                        radius: 30,
                      ),

                      SizedBox(width: 20,),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Muhammad Arslan",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Rubik Regular",
                              fontSize: 18,
                            ),
                          ),
                          Text("arslandev97@gmail.com",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Rubik Regular",
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const Text("Home",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Rubik Medium",
                    fontSize: 18,
                  ),
                ),

                const SizedBox(height: 10,),

                const Row(
                  children: [
                    Icon(Icons.home_outlined, color: Colors.white,),
                    SizedBox(width: 20,),
                    Text("Home",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Rubik Regular",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15,),

                const Row(
                  children: [
                    Icon(Icons.event_note_outlined, color: Colors.white,),
                    SizedBox(width: 20,),
                    Text("Schedule",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Rubik Regular",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15,),

                const Row(
                  children: [
                    Icon(Icons.note_outlined, color: Colors.white,),
                    SizedBox(width: 20,),
                    Text("Post Grade",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Rubik Regular",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),

                const Divider(),

                const SizedBox(height: 20,),

                const Text("Personal",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Rubik Medium",
                    fontSize: 18,
                  ),
                ),

                const SizedBox(height: 10,),

                const Row(
                  children: [
                    Icon(Icons.chat_bubble_outline, color: Colors.white,),
                    SizedBox(width: 20,),
                    Text("Chat",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Rubik Regular",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15,),

                const Row(
                  children: [
                    Icon(Icons.person, color: Colors.white,),
                    SizedBox(width: 20,),
                    Text("Profile",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Rubik Regular",
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10,),

                const Divider(),

                const SizedBox(height: 20,),

                const Text("Setting",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Rubik Medium",
                    fontSize: 18,
                  ),
                ),

                const SizedBox(height: 10,),

                const Row(
                  children: [
                    Icon(Icons.notifications_outlined, color: Colors.white,),
                    SizedBox(width: 20,),
                    Text("Notifications",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Rubik Regular",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15,),

                const Row(
                  children: [
                    Icon(Icons.support_agent_outlined, color: Colors.white,),
                    SizedBox(width: 20,),
                    Text("Support",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Rubik Regular",
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 15,),

                InkWell(
                  onTap: ()async{
                    SharedPreferences sp = await SharedPreferences.getInstance();
                    sp.clear();
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const LMSLoginView()));
                  },
                  child: const Row(
                    children: [
                      Icon(Icons.login_outlined, color: Colors.white,),
                      SizedBox(width: 20,),
                      Text("Logout",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Rubik Regular",
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text("Keep Track Your \nActivities ",
              style: TextStyle(
                fontSize: 24,
                fontFamily: "Montserrat Semi Bold",
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 40),
            child: Text("Recommended Courses For You",
              style: TextStyle(
                fontFamily: "Rubik Regular",
                color: Colors.black87.withOpacity(0.7),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Container(
                  height: 155,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 10.0,
                        spreadRadius: 2,
                      ),
                    ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text("Schedule",
                          style: TextStyle(
                            fontFamily: "Rubik Regular",
                            fontSize: 18,
                            color: Colors.black87.withOpacity(0.6),
                          ),
                        ),
                      ),

                      const Padding(
                        padding: EdgeInsets.only(top: 20, left: 60),
                        child:  Icon(
                          Icons.event_note_outlined,
                          size: 95,
                          color: Color(0xff1CB78D),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 30,),

                Container(
                  height: 155,
                  width: 170,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 10.0,
                          spreadRadius: 2,
                        ),
                      ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text("Progress",
                          style: TextStyle(
                            fontFamily: "Rubik Regular",
                            fontSize: 18,
                            color: Colors.black87.withOpacity(0.6),
                          ),
                        ),
                      ),

                      const Padding(
                        padding: EdgeInsets.only(top: 20, left: 60),
                        child:  Icon(
                          Icons.donut_small_outlined,
                          size: 95,
                          color: Color(0xff1CB78D),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 50),
            child: Row(
              children: [
                Container(
                  height: 155,
                  width: 170,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 10.0,
                          spreadRadius: 2,
                        ),
                      ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text("Notification",
                          style: TextStyle(
                            fontFamily: "Rubik Regular",
                            fontSize: 18,
                            color: Colors.black87.withOpacity(0.6),
                          ),
                        ),
                      ),

                      const Padding(
                        padding: EdgeInsets.only(top: 20, left: 60),
                        child:  Icon(
                          Icons.campaign_outlined,
                          size: 95,
                          color: Color(0xff1CB78D),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 30,),

                Container(
                  height: 155,
                  width: 170,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 10.0,
                          spreadRadius: 2,
                        ),
                      ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text("Chat",
                          style: TextStyle(
                            fontFamily: "Rubik Regular",
                            fontSize: 18,
                            color: Colors.black87.withOpacity(0.6),
                          ),
                        ),
                      ),

                      const Padding(
                        padding: EdgeInsets.only(top: 20, left: 60),
                        child:  Icon(
                          Icons.chat_outlined,
                          size: 95,
                          color: Color(0xff1CB78D),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 50),
            child: Row(
              children: [
                Container(
                  height: 155,
                  width: 170,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 10.0,
                          spreadRadius: 2,
                        ),
                      ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text("Support",
                          style: TextStyle(
                            fontFamily: "Rubik Regular",
                            fontSize: 18,
                            color: Colors.black87.withOpacity(0.6),
                          ),
                        ),
                      ),

                      const Padding(
                        padding: EdgeInsets.only(top: 20, left: 60),
                        child:  Icon(
                          Icons.support_agent,
                          size: 95,
                          color: Color(0xff1CB78D),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 30,),

                Container(
                  height: 155,
                  width: 170,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 10.0,
                          spreadRadius: 2,
                        ),
                      ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text("Profile",
                          style: TextStyle(
                            fontFamily: "Rubik Regular",
                            fontSize: 18,
                            color: Colors.black87.withOpacity(0.6),
                          ),
                        ),
                      ),

                      const Padding(
                        padding: EdgeInsets.only(top: 20, left: 60),
                        child:  Icon(
                          Icons.badge_outlined,
                          size: 95,
                          color: Color(0xff1CB78D),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}