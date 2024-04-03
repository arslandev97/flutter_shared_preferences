

import 'package:flutter/material.dart';
import 'package:preferences_app/multi_role_base_app/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AdminView extends StatefulWidget {
  const AdminView({super.key});

  @override
  State<AdminView> createState() => _AdminViewState();
}

class _AdminViewState extends State<AdminView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          backgroundColor:  const Color(0xff1CB78D),
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
                            Text("admin@gmail.com",
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
                      Icon(Icons.reduce_capacity_outlined, color: Colors.white,),
                      SizedBox(width: 20,),
                      Text("Students",
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
                      Icon(Icons.menu_book, color: Colors.white,),
                      SizedBox(width: 20,),
                      Text("Courses",
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
        body: SafeArea(
          child: Column(
            children: [
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/arslan.jpg"),
                  radius: 50,
                ),
              ),

              const SizedBox(height: 5,),

              const Text("Muhammad Arslan",
                style: TextStyle(
                  fontFamily: "Rubik Medium",
                  fontSize: 17,
                ),
              ),
              const Text("Admin",
                style: TextStyle(
                  fontFamily: "Montserrat Regular",
                  color: Color(0xff1CB78D),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 5,),
              const Text("Bachelor of Computer Science From \nVirtual University of Pakistan",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Montserrat Regular",
                  fontSize: 12,
                ),
              ),

              const SizedBox(height: 10,),

              const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook_outlined, color: Color(0xff1CB78D),),
                    SizedBox(width: 15,),

                    Icon(Icons.notifications_outlined, color: Color(0xff1CB78D),),
                    SizedBox(width: 15,),

                    Icon(Icons.public, color: Color(0xff1CB78D),),
                    SizedBox(width: 15,),

                    Icon(Icons.support_agent_outlined, color: Color(0xff1CB78D),),
                  ],
                ),
              ),

              const SizedBox(height: 15,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 140,
                    decoration: BoxDecoration(
                      color: const Color(0xff1CB78D),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 30, right: 30, top: 9),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.add, color: Colors.white,),
                          SizedBox(width: 5,),
                          Text("Follow",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Rubik Regular",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 20,),

                  Container(
                    height: 40,
                    width: 140,
                    decoration: BoxDecoration(
                      // color: const Color(0xff1CB78D),
                      border: Border.all(
                        color: const Color(0xff1CB78D),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 25, right: 20,),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.message, color: Color(0xff1CB78D), size: 22,),
                            SizedBox(width: 5,),
                            Text("Message",
                              style: TextStyle(
                                color: Color(0xff1CB78D),
                                fontFamily: "Rubik Regular",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      color: const Color(0xffF2FAF6),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text("12",
                          style: TextStyle(
                            fontFamily: "Rubik Medium",
                            color: Color(0xff1CB78D),
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Text("Courses",
                          style: TextStyle(
                            fontFamily: "Montserrat Medium",
                            color: Colors.black87.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      color: const Color(0xffF2FAF6),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text("916",
                          style: TextStyle(
                            fontFamily: "Rubik Medium",
                            color: Color(0xff1CB78D),
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Text("Students",
                          style: TextStyle(
                            fontFamily: "Montserrat Medium",
                            color: Colors.black87.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      color: const Color(0xffF2FAF6),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text("32105",
                          style: TextStyle(
                            fontFamily: "Rubik Medium",
                            color: Color(0xff1CB78D),
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Text("Followers",
                          style: TextStyle(
                            fontFamily: "Montserrat Medium",
                            color: Colors.black87.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      color: const Color(0xffF2FAF6),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text("500+",
                          style: TextStyle(
                            fontFamily: "Rubik Medium",
                            color: Color(0xff1CB78D),
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Text("Feedback",
                          style: TextStyle(
                            fontFamily: "Montserrat Medium",
                            color: Colors.black87.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30,),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TabBar(
                    tabs: [
                      Tab(
                          child: Text("Course"),
                      ),
                      Tab(
                          child: Text("Student"),
                      ),
                    ],
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: Color(0xff1CB78D),
                  labelColor: Color(0xff1CB78D),
                  labelStyle: TextStyle(
                    fontFamily: "Montserrat Semi Bold",
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),

              Expanded(
                child: TabBarView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 200,
                                    width: 180,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.shade300,
                                          blurRadius: 1.0,
                                        )
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Expanded(child: Container(
                                          width: double.infinity,
                                          decoration: const  BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10),
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage("https://cdn.eduadvisor.my/posts/2022/02/cg-mathematics-feature.png"),
                                              fit: BoxFit.cover,
                                            ),
                                            ),
                                          ),
                                        ),

                                        const SizedBox(height: 10,),

                                        Expanded(child: Column(
                                          children: [
                                            const Text("Mathematics With Animated \nLesson with notes",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: "Rubik Regular",
                                                fontSize: 12,
                                              ),
                                            ),

                                            const SizedBox(height: 10,),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                              child: Row(
                                                children: [
                                                  Icon(Icons.play_circle_outline, size: 15, color: Colors.black87.withOpacity(0.7),),
                                                  const SizedBox(width: 5,),

                                                  Text("45 Lessons", style: TextStyle(
                                                    fontFamily: "Rubik Regular",
                                                    fontSize: 12,
                                                    color: Colors.black87.withOpacity(0.7),
                                                  ),),
                                                  const SizedBox(width: 18,),

                                                  Icon(Icons.person_outline, size: 16, color: Colors.black87.withOpacity(0.7),),
                                                  const SizedBox(width: 5,),
                                                  Text("918",
                                                    style: TextStyle(
                                                      fontFamily: "Rubik Regular",
                                                      fontSize: 12,
                                                      color: Colors.black87.withOpacity(0.7),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(height: 10,),

                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 15),
                                              child: Row(
                                                children: [
                                                  const Text("\$180.00", style: TextStyle(
                                                    fontFamily: "Rubik Regular",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xff1CB78D),
                                                  ),),

                                                  const SizedBox(width: 10,),

                                                  Text("\$390.00", style: TextStyle(
                                                    fontFamily: "Rubik Regular",
                                                    fontSize: 12,
                                                    decoration: TextDecoration.lineThrough,
                                                    color: Colors.black87.withOpacity(0.6),
                                                  ),),

                                                  const SizedBox(width: 3,),

                                                  const Icon(Icons.star, size: 17, color: Colors.orangeAccent,),
                                                  const SizedBox(width: 5,),
                                                  Text("4.5", style: TextStyle(
                                                    fontFamily: "Rubik Regular",
                                                    fontSize: 12,
                                                    color: Colors.black87.withOpacity(0.7),
                                                  ),),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 200,
                                    width: 180,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.shade300,
                                          blurRadius: 1.0,
                                        )
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Expanded(child: Container(
                                          width: double.infinity,
                                          decoration: const  BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10),
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage("https://cdn.eduadvisor.my/posts/2022/02/cg-mathematics-feature.png"),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        ),

                                        const SizedBox(height: 10,),

                                        Expanded(child: Column(
                                          children: [
                                            const Text("Mathematics With Animated \nLesson with notes",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: "Rubik Regular",
                                                fontSize: 12,
                                              ),
                                            ),

                                            const SizedBox(height: 10,),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                              child: Row(
                                                children: [
                                                  Icon(Icons.play_circle_outline, size: 15, color: Colors.black87.withOpacity(0.7),),
                                                  const SizedBox(width: 5,),

                                                  Text("45 Lessons", style: TextStyle(
                                                    fontFamily: "Rubik Regular",
                                                    fontSize: 12,
                                                    color: Colors.black87.withOpacity(0.7),
                                                  ),),
                                                  const SizedBox(width: 18,),

                                                  Icon(Icons.person_outline, size: 16, color: Colors.black87.withOpacity(0.7),),
                                                  const SizedBox(width: 5,),
                                                  Text("918",
                                                    style: TextStyle(
                                                      fontFamily: "Rubik Regular",
                                                      fontSize: 12,
                                                      color: Colors.black87.withOpacity(0.7),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(height: 10,),

                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 15),
                                              child: Row(
                                                children: [
                                                  const Text("\$180.00", style: TextStyle(
                                                    fontFamily: "Rubik Regular",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xff1CB78D),
                                                  ),),

                                                  const SizedBox(width: 10,),

                                                  Text("\$390.00", style: TextStyle(
                                                    fontFamily: "Rubik Regular",
                                                    fontSize: 12,
                                                    decoration: TextDecoration.lineThrough,
                                                    color: Colors.black87.withOpacity(0.6),
                                                  ),),

                                                  const SizedBox(width: 3,),

                                                  const Icon(Icons.star, size: 17, color: Colors.orangeAccent,),
                                                  const SizedBox(width: 5,),
                                                  Text("4.5", style: TextStyle(
                                                    fontFamily: "Rubik Regular",
                                                    fontSize: 12,
                                                    color: Colors.black87.withOpacity(0.7),
                                                  ),),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 200,
                                    width: 180,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.shade300,
                                          blurRadius: 1.0,
                                        )
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Expanded(child: Container(
                                          width: double.infinity,
                                          decoration: const  BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10),
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage("https://cdn.eduadvisor.my/posts/2022/02/cg-mathematics-feature.png"),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        ),

                                        const SizedBox(height: 10,),

                                        Expanded(child: Column(
                                          children: [
                                            const Text("Mathematics With Animated \nLesson with notes",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: "Rubik Regular",
                                                fontSize: 12,
                                              ),
                                            ),

                                            const SizedBox(height: 10,),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                              child: Row(
                                                children: [
                                                  Icon(Icons.play_circle_outline, size: 15, color: Colors.black87.withOpacity(0.7),),
                                                  const SizedBox(width: 5,),

                                                  Text("45 Lessons", style: TextStyle(
                                                    fontFamily: "Rubik Regular",
                                                    fontSize: 12,
                                                    color: Colors.black87.withOpacity(0.7),
                                                  ),),
                                                  const SizedBox(width: 18,),

                                                  Icon(Icons.person_outline, size: 16, color: Colors.black87.withOpacity(0.7),),
                                                  const SizedBox(width: 5,),
                                                  Text("918",
                                                    style: TextStyle(
                                                      fontFamily: "Rubik Regular",
                                                      fontSize: 12,
                                                      color: Colors.black87.withOpacity(0.7),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(height: 10,),

                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 15),
                                              child: Row(
                                                children: [
                                                  const Text("\$180.00", style: TextStyle(
                                                    fontFamily: "Rubik Regular",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xff1CB78D),
                                                  ),),

                                                  const SizedBox(width: 10,),

                                                  Text("\$390.00", style: TextStyle(
                                                    fontFamily: "Rubik Regular",
                                                    fontSize: 12,
                                                    decoration: TextDecoration.lineThrough,
                                                    color: Colors.black87.withOpacity(0.6),
                                                  ),),

                                                  const SizedBox(width: 3,),

                                                  const Icon(Icons.star, size: 17, color: Colors.orangeAccent,),
                                                  const SizedBox(width: 5,),
                                                  Text("4.5", style: TextStyle(
                                                    fontFamily: "Rubik Regular",
                                                    fontSize: 12,
                                                    color: Colors.black87.withOpacity(0.7),
                                                  ),),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 200,
                                    width: 180,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.shade300,
                                          blurRadius: 1.0,
                                        )
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Expanded(child: Container(
                                          width: double.infinity,
                                          decoration: const  BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10),
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage("https://cdn.eduadvisor.my/posts/2022/02/cg-mathematics-feature.png"),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        ),

                                        const SizedBox(height: 10,),

                                        Expanded(child: Column(
                                          children: [
                                            const Text("Mathematics With Animated \nLesson with notes",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: "Rubik Regular",
                                                fontSize: 12,
                                              ),
                                            ),

                                            const SizedBox(height: 10,),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                              child: Row(
                                                children: [
                                                  Icon(Icons.play_circle_outline, size: 15, color: Colors.black87.withOpacity(0.7),),
                                                  const SizedBox(width: 5,),

                                                  Text("45 Lessons", style: TextStyle(
                                                    fontFamily: "Rubik Regular",
                                                    fontSize: 12,
                                                    color: Colors.black87.withOpacity(0.7),
                                                  ),),
                                                  const SizedBox(width: 18,),

                                                  Icon(Icons.person_outline, size: 16, color: Colors.black87.withOpacity(0.7),),
                                                  const SizedBox(width: 5,),
                                                  Text("918",
                                                    style: TextStyle(
                                                      fontFamily: "Rubik Regular",
                                                      fontSize: 12,
                                                      color: Colors.black87.withOpacity(0.7),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(height: 10,),

                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 15),
                                              child: Row(
                                                children: [
                                                  const Text("\$180.00", style: TextStyle(
                                                    fontFamily: "Rubik Regular",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xff1CB78D),
                                                  ),),

                                                  const SizedBox(width: 10,),

                                                  Text("\$390.00", style: TextStyle(
                                                    fontFamily: "Rubik Regular",
                                                    fontSize: 12,
                                                    decoration: TextDecoration.lineThrough,
                                                    color: Colors.black87.withOpacity(0.6),
                                                  ),),

                                                  const SizedBox(width: 3,),

                                                  const Icon(Icons.star, size: 17, color: Colors.orangeAccent,),
                                                  const SizedBox(width: 5,),
                                                  Text("4.5", style: TextStyle(
                                                    fontFamily: "Rubik Regular",
                                                    fontSize: 12,
                                                    color: Colors.black87.withOpacity(0.7),
                                                  ),),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      const Column(
                        children: [
                          Text("Student"),
                        ],
                      ),
                    ]
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}