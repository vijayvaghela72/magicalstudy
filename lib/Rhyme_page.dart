import 'package:flutter/material.dart';
import 'English_rhyme.dart';
import 'Gujarati_rhyme.dart';
import 'Hindi_rhyme.dart';

class RhymePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("Rhyme"), backgroundColor: Colors.redAccent[700]),
      body: Center(
        child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/rhyme_page.jpg'),
                    fit: BoxFit.fill)),
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
                            MaterialPageRoute(
                                builder: (context) => EnglishRhyme()),
                          );
                        },
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40.0),
                            child: Image.asset('images/english1.jpg',
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
                            MaterialPageRoute(
                                builder: (context) => GujaratiRhyme()),
                          );
                        },
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40.0),
                            child: Image.asset('images/gujarati.jpg',
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
                            MaterialPageRoute(
                                builder: (context) => HindiRhyme()),
                          );
                        },
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40.0),
                            child: Image.asset('images/hindi.jpg',
                                fit: BoxFit.fill),
                          ),
                        ),
                      ))
                ])),
      ),
    );
  }
}
