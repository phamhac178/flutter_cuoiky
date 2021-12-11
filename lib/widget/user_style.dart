import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop_coffee/constants.dart';

class UserStyle extends StatelessWidget {
  const UserStyle({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: ClipOval(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: CircleAvatar(
                radius: size.width * 0.14,
                backgroundColor: mPrimaryColor,
                child: Icon(
                  FontAwesomeIcons.user,
                  color: Colors.white,
                  size: size.width * 0.1,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: size.height * 0.08,
          left: size.width * 0.56,
          child: Container(
            height: size.width * 0.1,
            width: size.width * 0.1,
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
            child: Icon(
              FontAwesomeIcons.arrowUp,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
