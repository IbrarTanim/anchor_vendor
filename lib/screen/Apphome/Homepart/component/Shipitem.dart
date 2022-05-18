// ignore_for_file: empty_statements, non_constant_identifier_names, prefer_const_constructors, file_names

import 'package:flutter/material.dart';

Shipitem(BuildContext context) {
  return ListView.builder(
      itemCount: 8,
      itemBuilder: (context, index) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: ListTile(
              leading: Image(image: AssetImage('assets/ship.png'),),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text('Small Feeder'),
                      Text('Feni to Dhaka'),
                    ],
                  ),
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text('500S'),
                      Text('@2000 Ton'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
