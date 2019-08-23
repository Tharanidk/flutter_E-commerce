import 'package:flutter/material.dart';

class Items extends StatefulWidget {
  

  List list = List();

  Items(this.list);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ItemState();
  }
}

class _ItemState extends State<Items>{

   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 300.0,
      child: GridView.builder(
          itemCount: widget.list.length,
          gridDelegate:
              new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return Single_prod(
              size: widget.list[index]['Size'],
              image: widget.list[index]['Image'],
              colour: widget.list[index]['Colour'],
              price: widget.list[index]['Price'],
            );
          }),
    );
  }
  }


 


class Single_prod extends StatelessWidget {
  final size;
  final colour;
  final image;
  final price;

  Single_prod({
    this.size,
    this.colour,
    this.image,
    this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: size,
          child: Material(
            child: InkWell(
              onTap: () {},
              child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      size,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Text(
                      "\$$price",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(
                      colour,
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w800,
                          ),
                    ),
                  ),
                ),
                child: new Image.network(
                              image,
                              fit: BoxFit.cover,
                              height: 40.0,
                              width: 40.0,
                            ),
              ),
            ),
          )),
    );
  }
}
