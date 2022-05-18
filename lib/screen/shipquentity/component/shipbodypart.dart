// ignore_for_file: prefer_const_constructors

import 'package:anchor_vendor/screen/shipquentity/controller/shipquentitycontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// for state managment
ShipController shipController = Get.find<ShipController>();
Expanded shipInfoitems() {
  return Expanded(
    child: Obx(
      () => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
                child: Text(
              'What kind of ships do you have?\n \t       How many are they?',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 20),
            child: Text(
              'Ensure your client a better service',
              style: TextStyle(color: Color(0xFFB1B1B1)),
            ),
          ),
          //
          // ****** ship information part
          //
          Divider(),
          // ignore: prefer_const_literals_to_create_immutables
          // ******   Small Feeder-1000 Ton
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            // one
            children: [
              Expanded(
                  child: Text('Small Feeder-1000 Ton',
                      style: TextStyle(fontSize: 16))),
              InkWell(
                onTap: () {
                  //change ship info
                  shipController.shiponechange('-');
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage('assets/iconsub.png'),
                  ),
                ),
              ),
              Text(
                shipController.shipone.value.toString(),
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () {
                  shipController.shiponechange('+');
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage('assets/iconplus.png'),
                  ),
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            // ***********  ship info two
            children: [
              Expanded(
                  child:
                      Text('Feeder-2000 Ton', style: TextStyle(fontSize: 16))),
              InkWell(
                onTap: () {
                  //
                  shipController.shiptwochange('-');
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage('assets/iconsub.png'),
                  ),
                ),
              ),
              Text(
                shipController.shiptwo.value.toString(),
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () {
                  //
                  shipController.shiptwochange('+');
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage('assets/iconplus.png'),
                  ),
                ),
              ),
            ],
          ),
          //*****
          // */
          /*three ship information
                  
                  */
          Divider(),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            // three
            children: [
              Expanded(
                  child: Text('Feeder Max-3000 Ton',
                      style: TextStyle(fontSize: 16))),
              InkWell(
                onTap: () {
                  //

                  shipController.shipthreechange('-');
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage('assets/iconsub.png'),
                  ),
                ),
              ),
              Text(
                shipController.shipthree.value.toString(),
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () {
                  //
                  shipController.shipthreechange('+');
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage('assets/iconplus.png'),
                  ),
                ),
              ),
            ],
          ),
          /**
                   * ship information four
                   */
          Divider(),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            // four
            children: [
              Expanded(
                  child:
                      Text('Panamax-4000 Ton', style: TextStyle(fontSize: 16))),
              InkWell(
                onTap: () {
                  //
                  shipController.shipfourchange('-');
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage('assets/iconsub.png'),
                  ),
                ),
              ),
              Text(
                shipController.shipfour.value.toString(),
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () {
                  //
                  shipController.shipfourchange('+');
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage('assets/iconplus.png'),
                  ),
                ),
              ),
            ],
          ),
          /**
           * ship infromation five
           */
          Divider(),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            //  five
            children: [
              Expanded(
                  child: Text('Post-Panamax- 5000 Ton',
                      style: TextStyle(fontSize: 16))),
              InkWell(
                onTap: () {
                  //
                  shipController.shipfivechange('-');
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage('assets/iconsub.png'),
                  ),
                ),
              ),
              Text(
                shipController.shipfive.value.toString(),
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () {
                  //
                  shipController.shipfivechange('+');
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage('assets/iconplus.png'),
                  ),
                ),
              ),
            ],
          ),
          Divider(),
        ],
      ),
    ),
  );
}
