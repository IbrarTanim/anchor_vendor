// ignore_for_file: prefer_const_constructors, equal_keys_in_map

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/Services/floor_services/floor_database.dart';
import 'package:anchor_vendor/screen/Apphome/dashboad.dart';
import 'package:anchor_vendor/screen/Condition/condition.dart';
import 'package:anchor_vendor/screen/EnterShipquentity/EnterShipyourQuentity.dart';
import 'package:anchor_vendor/screen/Good/Goods.dart';
import 'package:anchor_vendor/screen/Inbox/Messageingui.dart';
import 'package:anchor_vendor/screen/NewDashboard/NewDashBoard.dart';
import 'package:anchor_vendor/screen/NidCard/NidCard.dart';
import 'package:anchor_vendor/screen/Otp/Otpui.dart';
import 'package:anchor_vendor/screen/Running%20trip/runningTrip.dart';
import 'package:anchor_vendor/screen/ShipInfo/ShipInfromation.dart';
import 'package:anchor_vendor/screen/Trip%20History/triphistory.dart';
import 'package:anchor_vendor/screen/accept%20and%20bid/acceptbid.dart';
import 'package:anchor_vendor/screen/cheakbook/Cheakbook.dart';
import 'package:anchor_vendor/screen/congratution/Congratuation.dart';
import 'package:anchor_vendor/screen/create%20new%20trip/createnewtrip.dart';
import 'package:anchor_vendor/screen/home/home.dart';
import 'package:anchor_vendor/screen/license/License.dart';
import 'package:anchor_vendor/screen/login/login.dart';
import 'package:anchor_vendor/screen/new%20Home/NewHome.dart';
import 'package:anchor_vendor/screen/notification/notification.dart';
import 'package:anchor_vendor/screen/paymant%20method/Paymant_method.dart';
import 'package:anchor_vendor/screen/payment%20status/paymentstatus.dart';
import 'package:anchor_vendor/screen/setting/settingui.dart';
import 'package:anchor_vendor/screen/shipquentity/shipquentity.dart';
import 'package:anchor_vendor/screen/tracking/Tracking.dart';
import 'package:anchor_vendor/screen/tracking/view.dart';
import 'package:anchor_vendor/screen/trackingvoyage/Tracking_voyage.dart';
import 'package:anchor_vendor/screen/trip/trip.dart';
import 'package:anchor_vendor/screen/updateProfile/update_profile_ui.dart';
import 'package:anchor_vendor/screen/userInfromation/UserInformation.dart';
import 'package:anchor_vendor/screen/voyage/Voyage.dart';
import 'package:anchor_vendor/screen/voyage/voyage_specification.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screen/Inbox/inbox.dart';
import 'screen/building succesfull/buildingsuccesful.dart';
import 'screen/registation/registation.dart';
import 'package:floor/floor.dart';
import 'package:anchor_vendor/Services/floor_services/floor_database.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.black, // navigation bar color
      statusBarColor: Appcolor.lightBlue,
      statusBarIconBrightness: Brightness.dark // status bar color
  ));
  final database = await $FloorMyFloorDatabase
      .databaseBuilder('flutter_database.db')
      .build();

  runApp(MyApp(database: database));
}
/*void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.black, // navigation bar color
      statusBarColor: Appcolor.lightBlue,
      statusBarIconBrightness: Brightness.dark // status bar color
      ));
  runApp(const MyApp());
}*/

class MyApp extends StatelessWidget {
  //const MyApp({Key? key, this.database}) : super(key: key);
  MyFloorDatabase database;

  MyApp({required this.database});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Locale('en', 'US'),
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      //home: UserInformation(),
      routes: {
        Login.name: (context) => Login(),
        Ragistation.name: (context) => Ragistation(),
        NidCard.name: (context) => NidCard(),
        License.name: (context) => License(),
        CheakBook.name: (context) => CheakBook(),
        Shipquentiy.name: (context) => Shipquentiy(),
        Congratutation.name: (context) => Congratutation(),
        Otpui.name: (context) => Otpui(),
        YourShipquentity.name: (context) => YourShipquentity(),
        Dashboard.name: (context) => Dashboard(),
        Acceptbid.name: (context) => Acceptbid(),
        Condition.name: (context) => Condition(),
        BuildinSuccesfull.name: (context) => BuildinSuccesfull(),
        Voyage.name: (context) => Voyage(),
        ShipInfo.name: (context) => ShipInfo(),
        Messageingui.name: (context) => Messageingui(),
        SettingUi.name: (context) => SettingUi(),
        Paymant_method.name: (context) => Paymant_method(),
        Tracking_voyage.name: (context) => Tracking_voyage(),
        NewDashboard.name: (context) => NewDashboard(),
        Trip.name: (context) => Trip(),
        Goods.name: (context) => Goods(),
        CreateNewTrip.name: (context) => CreateNewTrip(database: database,),
        NewHome.name: (conetex) => NewHome(),
        Tracking.name: (context) => Tracking(),
        UserInformation.name: (context) => UserInformation(),
        Inbox.name: (context) => Inbox(),
        NotificationUI.name: (context) => NotificationUI(),
        View.name: (context) => View(),
        RunningTrip.name: (context) => RunningTrip(),
        PaymentStatus.name: (context) => PaymentStatus(),
        TripHistoy.name: (context) => TripHistoy(),
        ShipInfomation.name: (context) => ShipInfomation(),
        UpdateProfile.name: (context) => UpdateProfile()
      },
    );
  }
}
