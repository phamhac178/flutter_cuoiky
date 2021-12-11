import 'package:shop_coffee/constants.dart';
import 'package:shop_coffee/widget/widget.dart';
import 'package:flutter/material.dart';

class EndScreen extends StatelessWidget {
  const EndScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Thanh Toán Thành Công',
          style: TextStyle(
            color: mPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: mPrimaryColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: <Widget>[
          Image.asset('assets/images/coffee_time.png'),
          SizedBox(
            height: 20,
          ),
          Text(
            'Hân Hạnh\nPhục Vụ Quý Khách!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: mPrimaryTextColor,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Sẽ mất ít phút để đơn hàng được giao thành công!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: mTitleTextColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          LoginButton(
            buttonName: 'Mua Thêm',
          )
        ],
      ),
    );
  }
}
