import 'package:flutter/material.dart';
import 'Alphabets.dart';
import 'Fruits.dart';
import 'Vegetables.dart';
import 'Animals.dart';

class EnglishPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("English"), backgroundColor: Colors.redAccent[700]),
      body: Center(
        child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/eng_page.jpg'),
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
                                builder: (context) => Alphabets()),
                          );
                        },
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40.0),
                            child: Image.asset('images/abcd.png',
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
                            MaterialPageRoute(builder: (context) => Fruits()),
                          );
                        },
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40.0),
                            child: Image.asset('images/fruits.jpg',
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
                                builder: (context) => Vegetables()),
                          );
                        },
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40.0),
                            child: Image.asset('images/vegetables.jpg',
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
                            MaterialPageRoute(builder: (context) => Animals()),
                          );
                        },
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40.0),
                            child: Image.asset('images/animals.jpg',
                                fit: BoxFit.fill),
                          ),
                        ),
                      ))
                ])),
      ),
    );
  }
}
