import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Shapes extends StatelessWidget {
  String imagePath;
  createListItem(String imagePath) => Card(
      margin: EdgeInsets.fromLTRB(50.0, 50.0, 50.0, 40.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: InkWell(
        onTap: () {},
        child: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(imagePath, fit: BoxFit.fill),
          ),
        ),
      ));

  @override
  Widget build(BuildContext context) {
    final title = 'Shapes';

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        title: title,
        home: Scaffold(
          appBar: AppBar(
              title: Text(title),
              backgroundColor: Colors.redAccent[700],
              automaticallyImplyLeading: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop(context);
                },
              )),
          body: Center(
            child: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/shapes.jpeg'),
                      fit: BoxFit.fill)),
              child: GridView.count(
                padding: EdgeInsets.only(top: 150.0),
                crossAxisCount: 1,
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  createListItem("images/rectangle.jpg"),
                  createListItem("images/heart.jpg"),
                  createListItem("images/oval.jpg"),
                  createListItem("images/cross.jpg"),
                  createListItem("images/diamond.jpg"),
                  createListItem("images/pentagon.jpg"),
                  createListItem("images/hexagon.jpg"),
                  createListItem("images/octagon.jpg"),
                ],
              ),
            ),
          ),
        ));
  }
}
