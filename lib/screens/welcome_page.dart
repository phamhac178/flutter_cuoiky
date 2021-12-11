import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

import 'home/home_screen.dart';

class WelcomePage extends StatefulWidget {
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 10), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                Image(
                  image: AssetImage('assets/images/page.png'),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Một ly cà phê ngon là phải vừa ngọt vừa đắng.\nMột tình yêu lý tưởng là một tình yêu vừa ngọt ngào,\nvừa đắng cay!',
                  textAlign: TextAlign.center,
                  style:
                      GoogleFonts.oswald(fontSize: 20, color: Colors.black87),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Chào mừng bạn đến với Coffee Shop!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.oswald(
                    fontStyle: FontStyle.italic,
                    fontSize: 28,
                    color: Colors.brown,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
