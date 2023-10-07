import 'package:flutter/material.dart';
import 'package:food_app/util/component.dart';
import 'package:google_fonts/google_fonts.dart';

class StartApp extends StatefulWidget {
  const StartApp({super.key});

  @override
  State<StartApp> createState() => _StartAppState();
}

class _StartAppState extends State<StartApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
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
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Get Started with FoodX",
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
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Email or Phone Number"),
                ),
              ),
              const SizedBox(
                height: 15,
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
                    TextButtonWithFunction(
                      text: "Log In",
                      height: 55,
                      width: 358,
                      color: const Color(0xFFFE724C),
                      buttonFunction: () {},
                      textcolor: Colors.white,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Or Continue"),
                    ),
                    TextButtonWithFunction(
                      text: "Continue With Facebook",
                      height: 55,
                      width: 358,
                      color: const Color(0xFF1877F2),
                      buttonFunction: () {},
                      textcolor: Colors.white,
                    ),
                    TextButtonWithFunction(
                      text: "Continue With Google",
                      height: 55,
                      width: 358,
                      color: Colors.white,
                      buttonFunction: () {},
                      textcolor: Colors.black,
                    ),
                    TextButtonWithFunction(
                      text: "Continue With Apple",
                      height: 55,
                      width: 358,
                      color: const Color(0xFF313642),
                      buttonFunction: () {},
                      textcolor: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
