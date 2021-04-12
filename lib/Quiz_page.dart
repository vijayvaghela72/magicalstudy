import 'package:flutter/material.dart';
import 'ColorQuiz.dart';
import 'ShapeQuiz.dart';

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("Quiz"), backgroundColor: Colors.redAccent[700]),
      body: Center(
        child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/quiz_page.jpg'),
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
                                builder: (context) => ColorQuiz()),
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
                            MaterialPageRoute(builder: (context) => ShapQuiz()),
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

class FruitsQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("Fruits"), backgroundColor: Colors.redAccent[700]),
    );
  }
}

class AnimalsQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Animals"), backgroundColor: Colors.redAccent[700]),
    );
  }
}
