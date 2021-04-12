import 'package:flutter/material.dart';

class Animals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(body: Gallery()));
  }
}

class Gallery extends StatefulWidget {
  GalleryItems createState() => GalleryItems();
}

class GalleryItems extends State<Gallery> {
  String imagePath;

  createGridItem(String imagePath) => Card(
      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide(width: 2, color: Colors.black)),
      child: InkWell(
        onTap: () {},
        child: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(imagePath,
                height: 150, width: 150, fit: BoxFit.fill),
          ),
        ),
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Animals'),
            backgroundColor: Colors.redAccent[700],
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
                  image: AssetImage('images/animalss.jpeg'), fit: BoxFit.fill)),
          child: GridView.count(
            crossAxisCount: 2,
            padding: EdgeInsets.only(top: 180.0),
            children: <Widget>[
              createGridItem("images/cat.jpg"),
              createGridItem("images/dog.jpg"),
              createGridItem("images/cow.jpg"),
              createGridItem("images/pig.jpg"),
              createGridItem("images/giraf.jpg"),
              createGridItem("images/camel.jpg"),
              createGridItem("images/elephant.jpg"),
              createGridItem("images/donkey.jpg"),
            ],
          ),
        )));
  }
}
