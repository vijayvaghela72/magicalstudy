import 'package:flutter/material.dart';
import 'Numbers.dart';

class MathPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("Maths"), backgroundColor: Colors.redAccent[700]),
      body: Center(
        child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/math_page.jpg'),
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
                            MaterialPageRoute(builder: (context) => Numbers()),
                          );
                        },
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40.0),
                            child: Image.asset('images/number.png',
                                fit: BoxFit.fill),
                          ),
                        ),
                      )),
                ])),
      ),
    );
  }
}
