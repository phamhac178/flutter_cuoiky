import 'package:shop_coffee/constants.dart';
import 'package:shop_coffee/screens/preferences/preferences_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return PreferencesScreen(index);
        }));
      },
      child: Container(
        padding: const EdgeInsets.all(30),
        child: Row(
          children: [
            Container(
              width: 55,
              height: 55,
              child: SvgPicture.asset('assets/icons/${coffeeNames[index]}.svg'),
            ),
            SizedBox(
              width: 30,
            ),
            Expanded(
              child: Text(
                coffeeNames[index],
                style: TextStyle(
                  color: mTitleTextColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Icon(
              Icons.keyboard_arrow_right,
              color: mPrimaryColor,
            )
          ],
        ),
      ),
    );
  }
}
