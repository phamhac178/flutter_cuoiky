import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_coffee/screens/welcome_page.dart';
import 'constants.dart';
import 'screens/login/forgot_password.dart';
import 'screens/login/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter CoffeeShop',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        scaffoldBackgroundColor: mBackgroundColor,
        splashColor: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        'Quên mật khẩu': (context) => ForgotPassword(),
        'Đăng ký': (context) => RegisterScreen(),
      },
    );
  }
}
