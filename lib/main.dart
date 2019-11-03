import 'package:flutter/material.dart';
import 'package:instagram_app/widgets/custombuttombar.dart';
import 'package:instagram_app/widgets/post.dart';
import 'package:instagram_app/widgets/stories.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Storie> _listStorie = [
    Storie("assets/images/1.jpg", 'TheCarla'),
    Storie("assets/images/2.jpg", '_caio'),
    Storie("assets/images/1.jpg", 'Julliahh'),
    Storie("assets/images/4.jpg", 'Leeth'),
    Storie("assets/images/1.jpg", '_caio'),
    Storie("assets/images/2.jpg", 'Julliahh'),
    Storie("assets/images/1.jpg", 'Leeth'),
    Storie("assets/images/4.jpg", 'TheCarla')
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.white,
          accentColor: Colors.black),
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.live_tv),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () {},
            )
          ],
          elevation: 1,
          title: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.camera_alt),
                onPressed: () {},
              ),
              Text("Photo Ui Design",
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomButtomBar(),
        body: Container(
          child: Column(
            children: <Widget>[
              Stories(_listStorie),
              Container(height: 1, color: Colors.grey[300]),
              Container(
                child: Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: _listStorie.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Post(
                          _listStorie[index].img, _listStorie[index].nome);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
