import 'dart:ui';
import 'package:shop_coffee/constants.dart';
import 'package:shop_coffee/screens/login/login_screen.dart';
import 'package:shop_coffee/widget/rounded_button.dart';
import 'package:shop_coffee/widget/widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Scaffold(
          appBar: buildAppBar(context),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.width * 0.1,
                ),
                UserStyle(size: size),
                SizedBox(
                  height: size.width * 0.1,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 30,
                  ),
                  child: Column(
                    children: [
                      InputTextField(
                        label: 'Name',
                        onChange: (value) {},
                      ),
                      InputTextField(
                        label: 'Email',
                        onChange: (value) {},
                      ),
                      InputTextField(
                        label: 'Mật Khẩu',
                        password: true,
                        onChange: (value) {},
                      ),
                      InputTextField(
                        label: 'Nhập lại mật khẩu',
                        password: true,
                        onChange: (value) {},
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      RoundedButton(
                        buttonName: 'Đăng ký tài khoản',
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Bạn sẳn sàng để đăng nhập? ',
                            style: TextStyle(color: Colors.grey),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return LoginScreen();
                                  },
                                ),
                              );
                            },
                            child: Text(
                              'Đăng Nhập',
                              style: kBodyText.copyWith(
                                  color: mPrimaryTextColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: mBackgroundColor,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Đăng Ký',
        style: TextStyle(
          color: mPrimaryTextColor,
        ),
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: mPrimaryTextColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
