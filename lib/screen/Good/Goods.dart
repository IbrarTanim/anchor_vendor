// ignore_for_file: override_on_non_overriding_member, prefer_const_constructors

import 'package:anchor_vendor/Appcolor.dart';
import 'package:flutter/material.dart';

class Goods extends StatelessWidget {
  const Goods({Key? key}) : super(key: key);
  static const name='goods';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text('Goods'),
          backgroundColor: Appcolor.lightBlue,
          actions: [],
        ),
        body: Column(
          children: const [
            Image(image: AssetImage('assets/uncoons.png'),),
            Center(child: Text('Under Process')),
          ],
        ),
      ),
    );
  }
}
