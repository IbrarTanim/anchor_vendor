// ignore_for_file: override_on_non_overriding_member

import 'package:anchor_vendor/screen/new%20Home/body.dart';
import 'package:flutter/material.dart';

class NewHome extends StatelessWidget {
  const NewHome({Key? key}) : super(key: key);
  static const name='newhome';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: HomeView(context)),
    );
  }
}
