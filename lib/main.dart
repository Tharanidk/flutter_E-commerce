import './image_carousel.dart';
import 'package:fetch_data/item_manager.dart';
import 'package:flutter/material.dart';

import './horizontal_list.dart';

void main() => runApp(MainFetchData());

class MainFetchData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red,
              title: Text("E-Commerce App"),
            ),
            body: ListView(
              children: <Widget>[
                ImageCarousel(),
                Padding(padding: EdgeInsets.all(8.0),),
                HorizontalList(),
                ItemManager(),
              ],
            )));
  }
}
