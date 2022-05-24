// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:anchor_vendor/screen/create%20new%20trip/Model/SavedProductInfo.dart';
import 'package:anchor_vendor/screen/create%20new%20trip/controller/ports_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

//**
//**method about suggestion get keyboard */
// */

List<String> suggestion(String pattern) => place.where((element) {
      return (element.contains(pattern.toLowerCase()));
    }).toList();
//**
//*varable
// */
List<String> place = ['a', 'aa', 'ab', 'cc', 'dd', 'ee', 'n'];
// This will be displayed below the autocomplete field
String? _selectedAnimal;

// This list holds all the suggestions
final List<String> _suggestions = [
  'Alligator',
  'Buffalo',
  'Chicken',
  'Dog',
  'Eagle',
  'Frog'
];
TextEditingController L_port = TextEditingController();

//**
//**dialoge */
//
// */

//controller
PortsController portsController = PortsController();

LoadingPort(BuildContext context, String type) {
  //this type => loading/unloading
  //get data
  portsController.fetchProductData();
  BuildContext dialogContext;
  showDialog(
      context: context,
      builder: (BuildContext context) {
        dialogContext = context;
        return Dialog(
              child: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                elevation: 1,
                automaticallyImplyLeading: false,
                backgroundColor: Appcolor.lightBlue,
                title: TabBar(
                  tabs: const [
                    Tab(
                      text: "Port",
                    ),
                    Tab(
                      text: "Draft",
                    ),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  port(dialogContext, type),
                  Center(child: Text('Drafts')),
                ],
              ),
            ),
          ));
      });
}

Padding port(BuildContext context, String type) {
  return Padding(
    padding: EdgeInsets.symmetric(
        horizontal: MediaQuerypage.safeBlockHorizontal!,
        vertical: MediaQuerypage.safeBlockVertical!),
    child: Column(
      children: [
        Obx(() => portsController.isUpdated.value
            ? Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: portsController.allPorts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      onTap: () {
                        if(type == "loading"){
                          SavedProductInfo.loadingPortId = portsController.allPorts[index].id;
                          SavedProductInfo.loadingPortName = portsController.allPorts[index].name;
                          Fluttertoast.showToast(
                              msg: "Loading port: ${portsController.allPorts[index].name} saved.",
                              textColor: Colors.black,
                              backgroundColor: Colors.green,
                              gravity: ToastGravity.BOTTOM,
                              toastLength: Toast.LENGTH_SHORT,
                              fontSize: 16.0);
                          Navigator.pop(context);
                        }else{
                          SavedProductInfo.unloadingPortId = portsController.allPorts[index].id;
                          SavedProductInfo.unloadingPortName = portsController.allPorts[index].name;
                          Fluttertoast.showToast(
                              msg: "Unloading port: ${portsController.allPorts[index].name} saved.",
                              textColor: Colors.black,
                              backgroundColor: Colors.green,
                              gravity: ToastGravity.BOTTOM,
                              toastLength: Toast.LENGTH_SHORT,
                              fontSize: 16.0);
                          Navigator.pop(context);
                        }
                      },
                      leading: Text((index + 1).toString()),
                      title: Text(portsController.allPorts[index].name),
                    );
                  },
                ),
              )
            : Expanded(child: Center(child: Text('No Ports')))),
        /*TypeAheadField(
            textFieldConfiguration: TextFieldConfiguration(
                controller: L_port,
                autofocus: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    border: OutlineInputBorder())),
            suggestionsCallback: (pattern) {
              return suggestion(pattern);
            },
            itemBuilder: (context, suggestion) {
              return ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text(suggestion.toString()),
              );
            },
            onSuggestionSelected: (suggestion) {
              L_port.text = suggestion.toString();
            })*/
      ],
    ),
  );
}
