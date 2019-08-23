import 'package:flutter/material.dart';

class ItemControl extends StatelessWidget {
  final Function fetchData;

  ItemControl(this.fetchData);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: new Text("Reload"),
      onPressed: () => fetchData(),
    );
  }
}
