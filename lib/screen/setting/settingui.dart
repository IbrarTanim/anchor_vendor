// ignore_for_file: override_on_non_overriding_member, prefer_const_constructors

import 'package:anchor_vendor/screen/paymant%20method/Paymant_method.dart';
import 'package:flutter/material.dart';

class SettingUi extends StatelessWidget {
  SettingUi({Key? key}) : super(key: key);
  static const name = 'Setting';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          // ignore: prefer_const_literals_to_create_immutables
          Row(children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/userimage.png'),
              ),
            ),
            Expanded(
              child: ListTile(
                title: Text('Rifat Hassan'),
                subtitle: Text('0172652362'),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            )
          ]),
          Divider(),
          ListTile(
            title: Text('Address Book', style: TextStyle(color: Colors.grey)),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          Divider(
            thickness: 2,
          ),
          ListTile(
            title: Text('Promo Code', style: TextStyle(color: Colors.black)),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          Divider(
            thickness: 2,
          ),
          ListTile(
            title: Text('Manager Drive', style: TextStyle(color: Colors.black)),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          Divider(
            thickness: 2,
          ),
          ListTile(
            title: Text('Helpline', style: TextStyle(color: Colors.black)),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          Divider(
            thickness: 2,
          ),
          ListTile(
            title: Text('FAQ', style: TextStyle(color: Colors.black)),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          Divider(
            thickness: 2,
          ),
          // Spacer(),
          Divider(
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                    flex: 4,
                    child: Text('Language',
                        style: TextStyle(fontSize: 16, color: Colors.black))),
                Expanded(
                  flex: 1,
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'English',
                        style: TextStyle(color: Colors.blue),
                      ),
                      Icon(Icons.arrow_forward_ios_outlined),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 2,
          ),
          ListTile(
            title: Text('Manager Drive', style: TextStyle(color: Colors.black)),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          Divider(
            thickness: 2,
          ),
          ListTile(
            title: Text('Terams & Coonditioin',
                style: TextStyle(color: Colors.black)),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          Divider(
            thickness: 2,
          ),
          ListTile(
            title:
                Text('Privacy Policy', style: TextStyle(color: Colors.black)),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          Divider(
            thickness: 2,
          ),
          ListTile(
            title: Text('Rate this app', style: TextStyle(color: Colors.grey)),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          Divider(
            thickness: 2,
          ),
          SizedBox(height: 7),
          Divider(
            thickness: 2,
          ),
          ListTile(
            title: Text('Logout', style: TextStyle(color: Colors.black)),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          Divider(
            thickness: 2,
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        // isExtended: true,
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.pushNamed(context, Paymant_method.name);
        },
      ),
    ));
  }
}
