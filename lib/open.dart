import 'package:flutter/material.dart';
import 'package:food_app/start.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/route_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('images/restaurant .png'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                'Enjoy the best restuarants or get what you need from nearby stores delivered',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF313642),
                ),
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.circle,
                color: Color(0xFFFE724C),
                size: 16,
              ),
              Icon(
                Icons.circle,
                color: Color.fromARGB(255, 190, 190, 190),
                size: 16,
              ),
              Icon(
                Icons.circle,
                color: Color.fromARGB(255, 190, 190, 190),
                size: 16,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xFFFE724C)),
                      minimumSize:
                          MaterialStatePropertyAll(Size(double.infinity, 50)),
                      padding: MaterialStatePropertyAll(EdgeInsets.all(5)),
                      textStyle:
                          MaterialStatePropertyAll(TextStyle(fontSize: 25))),
                  onPressed: () {
                   Get.to(()=>const startapp());
                    
                  },
                  child: const Text('Get Started')),
            ),
          ),
        ],
      ),
    );
  }
}
