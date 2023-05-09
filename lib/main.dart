import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterinterview1/widget/icons.dart';
import 'package:flutterinterview1/widget/list.dart';
import 'package:flutterinterview1/widget/profile.dart';
import 'Custom/Appbar.dart';
import 'Custom/banner.dart';
import 'naivgator/naivgation.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.amberAccent),
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

var selected = 0;
final pageController = PageController();

class _MyAppState extends State<MyApp> {
  bool _isBannerVisible = true;

  void _hideBanner() {
    setState(() {
      _isBannerVisible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              const CustomAppbar(
                  leftIcon: Icons.abc_outlined, rightIcon: Icons.person),
              const SizedBox(
                height: 22,
              ),
              if (_isBannerVisible) BannerWidget(onHide: _hideBanner),
              const SizedBox(
                height: 12,
              ),
              SizedBox(height: 150, child: MyListView()),
              SizedBox(
                child: ProfileSection(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Edit Profile'),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(16),
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 150, child: iconshor()),
              Expanded(
                child: Container(
                  child: MyHomePage(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
