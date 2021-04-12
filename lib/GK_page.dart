import 'package:flutter/material.dart';
import 'Bodyparts.dart';
import 'Colors.dart';
import 'Shapes.dart';

class GKPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GK"), backgroundColor: Colors.redAccent[700]),
      body: Center(
        child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/gk_page.jpg'), fit: BoxFit.fill)),
            child: GridView.count(
                crossAxisCount: 1,
                padding: EdgeInsets.only(top: 190.0),
                children: <Widget>[
                  Card(
                      margin: EdgeInsets.all(35.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                          side: BorderSide(width: 1, color: Colors.black)),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => BodyPart()),
                          );
                        },
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40.0),
                            child: Image.asset('images/bodypart.jpg',
                                fit: BoxFit.fill),
                          ),
                        ),
                      )),
                  Card(
                      margin: EdgeInsets.all(35.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                          side: BorderSide(width: 1, color: Colors.black)),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Color()),
                          );
                        },
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40.0),
                            child: Image.asset('images/colors.jpg',
                                fit: BoxFit.fill),
                          ),
                        ),
                      )),
                  Card(
                      margin: EdgeInsets.all(35.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                          side: BorderSide(width: 1, color: Colors.black)),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Shapes()),
                          );
                        },
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40.0),
                            child: Image.asset('images/shap.jpg',
                                fit: BoxFit.fill),
                          ),
                        ),
                      )),
                ])),
      ),
    );
  }
}

class NationalSymbols extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("National Symbols"),
          backgroundColor: Colors.redAccent[700]),
    );
  }
}
