// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
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
LoadingPort(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) => Dialog(
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
                  port(),
                  Center(child: Text('darft')),
                ],
              ),
            ),
          )));
}

Padding port() {
  return Padding(
    padding: EdgeInsets.symmetric(
        horizontal: MediaQuerypage.safeBlockHorizontal!,
        vertical: MediaQuerypage.safeBlockVertical!),
    child: Column(
      children: [
        TypeAheadField(
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
            })
      ],
    ),
  );
}
