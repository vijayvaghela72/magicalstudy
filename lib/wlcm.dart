import 'package:magicalstudy/English_page.dart';
import 'package:magicalstudy/GK_page.dart';
import 'package:magicalstudy/Maths_page.dart';
import 'package:magicalstudy/Quiz_page.dart';
import 'package:magicalstudy/Rhyme_page.dart';
import 'package:magicalstudy/Story_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'Magical Study',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Magical Study'),
        centerTitle: true,
        backgroundColor: Colors.redAccent[700],
      ),
      body: Center(
        child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/wlcm.jpg'), fit: BoxFit.fill)),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(10.0, 110.0, 10.0, 20.0),
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "Welcome to Magical Study",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage()),
                    );
                  },
                  //shape: RoundedRectangleBorder(
                  // borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  label: Text(
                    'Lets Go..',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  //textColor: Colors.white,
                  //splashColor: Colors.red,
                  //color: Colors.blue,
                ),
              ],
            )),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Hello Kids',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 3,
                    fontSize: 30,
                    color: Colors.white),
              ),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
            ListTile(
              title: Text(
                'English',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EnglishPage()),
                );
              },
            ),
            ListTile(
              title: Text('Maths', style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MathPage()),
                );
              },
            ),
            ListTile(
              title: Text('GK', style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GKPage()),
                );
              },
            ),
            ListTile(
              title: Text('Quiz', style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizPage()),
                );
              },
            ),
            ListTile(
              title: Text('Story', style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StoryPage()),
                );
              },
            ),
            ListTile(
              title: Text('Rhyme', style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RhymePage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
