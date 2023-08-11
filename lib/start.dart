import 'package:flutter/material.dart';
import 'package:food_app/util/text.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class startapp extends StatefulWidget {
  const startapp({super.key});

  @override
  State<startapp> createState() => _startappState();
}

class _startappState extends State<startapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back_ios_new),
                onPressed: () {
                  Navigator.of(context)
                      .pop(); // This pops the current route off the navigation stack
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  tWelcomeTitle,
                  style: GoogleFonts.montserrat(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      color: const Color(0xFF8B9099),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Signup Now",
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Email or Phone Number"),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Password"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forget Password?",
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Color(0xFFFE724C),
                        ),
                        minimumSize: MaterialStatePropertyAll(
                            Size(double.infinity, 50))),
                    child: const Text("Log in"),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Or Continue"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Color(0xFF1877F2),
                        ),
                        minimumSize: MaterialStatePropertyAll(
                            Size(double.infinity, 50))),
                    child: const Text("Continue With Facebook"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Colors.white
                        ),
                        minimumSize: MaterialStatePropertyAll(
                            Size(double.infinity, 50))),
                    child: const Text("Continue With google",
                    style: TextStyle(color: Colors.black),),
                  ),
                ),
                Container(
                  width: 358,
                  height: 55,
                  decoration: BoxDecoration(
                    color: const Color(0xFF313642),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Continue With Apple",
                      style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.white
                  ),),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
