import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import './items.dart';
import './itemControl.dart';

class ItemManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ItemManagerState();
  }
}

class ItemManagerState extends State<ItemManager> {
  List _list = List();
  static var isLoading = false;

  _fetchData() async {
    setState(() {
      isLoading = true;
    });
    final response = await http.get("http://jewelpack.tk/api/products");
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      // print("Result");
      // print(data["product"]);

      _list = data["product"] as List;
      //print(data[1]);
      setState(() {
        isLoading = false;
      });
    } else {
      throw Exception('Failed to load photos');
    }
  }

  @override
  void initState() {
    _fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10),
          child: ItemControl(_fetchData),
        ),
        isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Items(_list)
      ],
    );
  }
}
