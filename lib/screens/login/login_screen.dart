import 'package:shop_coffee/constants.dart';
import 'package:shop_coffee/screens/login/register_screen.dart';
import 'package:shop_coffee/widget/widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: buildAppBar(context),
          body: Column(
            children: <Widget>[
              Flexible(
                child: Center(
                  child: Text(
                    'Welcome back!',
                    style: TextStyle(
                      color: mPrimaryTextColor,
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InputTextField(
                      label: 'Email',
                      onChange: (value) {},
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    InputTextField(
                      label: 'Mật Khẩu',
                      password: true,
                      onChange: (value) {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, "Quên mật khẩu"),
                      child: Text(
                        'Quên mật khẩu',
                        style:
                            TextStyle(color: mPrimaryTextColor, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              LoginButton(
                buttonName: 'Đăng Nhập',
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Nếu bạn chưa có tài khoản? ',
                    style: TextStyle(color: Colors.grey),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'Đăng ký');
                    },
                    child: Text(
                      'Đăng ký',
                      style: kBodyText.copyWith(
                          color: mPrimaryTextColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 71,
              ),
            ],
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
        'Đăng Nhập',
        style: TextStyle(
          color: mPrimaryTextColor,
        ),
      ),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back_ios_new,
          color: mPrimaryTextColor,
        ),
      ),
    );
  }
}
