import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category('images/cats/gem.png', 'Gem Box'),
          Category('images/cats/jewel.png', 'Jewel Box'),
          Category('images/cats/gem.png', 'Gem Box'),
          Category('images/cats/jewel.png', 'Jewel Box'),
          Category('images/cats/gem.png', 'Gem Box'),
          Category('images/cats/jewel.png', 'Jewel Box'),
          Category('images/cats/gem.png', 'Gem Box'),
          Category('images/cats/jewel.png', 'Jewel Box'),
          

          
          ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category(this.image_location, this.image_caption);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
          onTap: () {},
          child: Container(
            width: 100.0,
            child: ListTile(
              title: Image.asset(
                image_location,
                width: 80.0,
                height: 60.0,
                color: Colors.red[800],
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(image_caption),
              ),
            ),
          )),
    );
  }
}
