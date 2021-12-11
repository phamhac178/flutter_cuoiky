import 'package:shop_coffee/constants.dart';
import 'package:shop_coffee/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.asset('assets/images/coffee_time1.jpg'),
          SliderDot(),
          SizedBox(
            height: 20,
          ),
          Text(
            'Best coffee in town!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: mPrimaryTextColor,
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 60,
          ),
          LoginAndRegister(),
          LoginWithFacebook(),
        ],
      ),
    );
  }
}
