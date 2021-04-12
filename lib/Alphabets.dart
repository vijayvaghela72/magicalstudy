import 'package:flutter/material.dart';

class Alphabets extends StatelessWidget {
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

  String imagePath;

  imageproperty(String path) => Image.asset(
        path,
        height: 210,
        width: 210,
      );

  createAlphabets(imagePath) => Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [imageproperty(imagePath)]),
          SizedBox(height: 5),
          //   iconBar(),

          /* Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [iconBar()]),*/
        ],
      ));
/*  Widget iconBar() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlatButton(
            color: Colors.blue[900],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: IconButton(
                icon: Icon(Icons.audiotrack),
                color: Colors.white,
                iconSize: 30.0,
                onPressed: () => {}),
            onPressed: () {},
          ),
        ],
      );
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Alphabets'),
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
              image: new DecorationImage(
            image: AssetImage("images/alphabets.jpeg"),
            fit: BoxFit.fitHeight,
          )),
          child: PageView(
            controller: controller,
            onPageChanged: (page) => {},
            pageSnapping: true,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              createAlphabets("images/a.jpg"),
              createAlphabets("images/b.jpg"),
              createAlphabets("images/c.jpg"),
              createAlphabets("images/d.jpg"),
              createAlphabets("images/e.jpg"),
              createAlphabets("images/f.jpg"),
              createAlphabets("images/g.jpg"),
              createAlphabets("images/h.jpg"),
              createAlphabets("images/i.jpg"),
              createAlphabets("images/j.jpg"),
              createAlphabets("images/k.jpg"),
              createAlphabets("images/l.jpg"),
              createAlphabets("images/m.jpg"),
              createAlphabets("images/n.jpg"),
              createAlphabets("images/o.jpg"),
              createAlphabets("images/p.jpg"),
              createAlphabets("images/q.jpg"),
              createAlphabets("images/r.jpg"),
              createAlphabets("images/s.jpg"),
              createAlphabets("images/t.jpg"),
              createAlphabets("images/u.jpg"),
              createAlphabets("images/v.jpg"),
              createAlphabets("images/w.jpg"),
              createAlphabets("images/x.jpg"),
              createAlphabets("images/y.jpg"),
              createAlphabets("images/z.jpg"),
            ],
          ),
        )));
  }
}
