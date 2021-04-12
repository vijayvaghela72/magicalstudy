import 'package:flutter/material.dart';
import 'package:flushbar/flushbar.dart';

class ColorQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(body: Page()));
  }
}

class Page extends StatefulWidget {
  PageState createState() => PageState();
}

class PageState extends State<Page> {
  final controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Colors Quiz'),
          backgroundColor: Colors.redAccent[700],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () =>
                Navigator.of(context, rootNavigator: true).pop(context),
          )),
      body: Center(
        child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: new DecorationImage(
              image: AssetImage("images/colorss.jpg"),
              fit: BoxFit.fitHeight,
            )),
            child: PageView(
              controller: controller,
              onPageChanged: (page) => {},
              pageSnapping: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 80,
                      width: 320,
                      decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent[200],
                          border: Border.all(
                            color: Colors.transparent,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Center(
                          child: Text(
                            "Select the RED colored Object",
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Card(
                          margin: EdgeInsets.fromLTRB(0.0, 30.0, 30.0, 0.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(width: 1, color: Colors.black)),
                          child: new InkWell(
                            onTap: () {
                              Flushbar(
                                title: "Right Answer!",
                                message: "Swap for next Question",
                                icon: new Icon(
                                  Icons.check,
                                  color: Colors.white,
                                ),
                                duration: Duration(seconds: 1),
                              )..show(context);
                            },
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset("images/Quizimage1.jpg",
                                    height: 120, width: 120, fit: BoxFit.fill),
                              ),
                            ),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.only(top: 30.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(width: 1, color: Colors.black)),
                          child: new InkWell(
                            onTap: () {
                              Flushbar(
                                title: "Wrong Answer!",
                                message: "Try Again...",
                                icon: new Icon(
                                  Icons.close,
                                  color: Colors.white,
                                ),
                                duration: Duration(seconds: 1),
                              )..show(context);
                            },
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset("images/Quizimage2.jpg",
                                    height: 120, width: 120, fit: BoxFit.fill),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
                Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 80,
                      width: 320,
                      decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent[200],
                          border: Border.all(
                            color: Colors.transparent,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Center(
                          child: Text(
                            "Select the GREEN colored Object",
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Card(
                          margin: EdgeInsets.fromLTRB(0.0, 30.0, 30.0, 0.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(width: 1, color: Colors.black)),
                          child: new InkWell(
                            onTap: () {
                              Flushbar(
                                title: "Wrong Answer!",
                                message: "Try Again...",
                                icon: new Icon(
                                  Icons.close,
                                  color: Colors.white,
                                ),
                                duration: Duration(seconds: 1),
                              )..show(context);
                            },
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset("images/Quizimage3.jpg",
                                    height: 120, width: 120, fit: BoxFit.fill),
                              ),
                            ),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.only(top: 30.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(width: 1, color: Colors.black)),
                          child: new InkWell(
                            onTap: () {
                              Flushbar(
                                title: "Right Answer!",
                                message: "Swap for next Question",
                                icon: new Icon(
                                  Icons.check,
                                  color: Colors.white,
                                ),
                                duration: Duration(seconds: 1),
                              )..show(context);
                            },
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset("images/Quizimage4.jpg",
                                    height: 120, width: 120, fit: BoxFit.fill),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
                Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 80,
                      width: 320,
                      decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent[200],
                          border: Border.all(
                            color: Colors.transparent,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Center(
                          child: Text(
                            "Select the YELLOW colored Object",
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Card(
                          margin: EdgeInsets.fromLTRB(0.0, 30.0, 30.0, 0.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(width: 1, color: Colors.black)),
                          child: new InkWell(
                            onTap: () {
                              Flushbar(
                                title: "Right Answer!",
                                message: " ",
                                icon: new Icon(
                                  Icons.check,
                                  color: Colors.white,
                                ),
                                duration: Duration(seconds: 1),
                              )..show(context);
                            },
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset("images/Quizimage6.jpg",
                                    height: 120, width: 120, fit: BoxFit.fill),
                              ),
                            ),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.only(top: 30.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(width: 1, color: Colors.black)),
                          child: new InkWell(
                            onTap: () {
                              Flushbar(
                                title: "Wrong Answer!",
                                message: "Try Again...",
                                icon: new Icon(
                                  Icons.close,
                                  color: Colors.white,
                                ),
                                duration: Duration(seconds: 1),
                              )..show(context);
                            },
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset("images/Quizimage5.jpg",
                                    height: 120, width: 120, fit: BoxFit.fill),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
              ],
            )),
      ),
    );
  }
}
