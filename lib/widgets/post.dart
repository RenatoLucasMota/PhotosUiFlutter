import 'package:flutter/material.dart';
import 'package:instagram_app/widgets/avatar_storie.dart';

class Post extends StatefulWidget {
  String img;
  String nome;

  Post(this.img, this.nome);

  @override
  _PostState createState() => _PostState(img, nome);
}

class _PostState extends State<Post> {
  String img;
  String nome;

  _PostState(this.img, this.nome);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: AvatarStorie(widget.img, "", 2),
                      height: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(widget.nome),
                    )
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.more_horiz),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Image.asset(
            widget.img,
            fit: BoxFit.none,
          ),
          Container(
            color: Colors.white,
            height: 50,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.chat_bubble_outline),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.send),
                      onPressed: () {},
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.bookmark_border),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            height: 30,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Align(
                child: Text(
                  'há 6 horas',
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                ),
                alignment: Alignment.centerLeft,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
