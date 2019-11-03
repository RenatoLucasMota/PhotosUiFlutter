import 'package:flutter/material.dart';
import 'package:instagram_app/widgets/avatar_storie.dart';

class Stories extends StatefulWidget {
  List<Storie> listaStories; 

  Stories(this.listaStories);
  @override
  _StoriesState createState() => _StoriesState(listaStories);
}

class _StoriesState extends State<Stories> {
  List<Storie> listaStories; 

  _StoriesState(this.listaStories);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      color: Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listaStories.length,
        itemBuilder: (BuildContext context, int index) {
          return AvatarStorie(listaStories[index].img , listaStories[index].nome, 1);
        },
      ),
    );
  }
}

class Storie {
  String img;
  String nome;

  Storie(this.img, this.nome);
}
