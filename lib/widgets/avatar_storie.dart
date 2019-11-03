import 'package:flutter/material.dart';

class AvatarStorie extends StatefulWidget {
  String imagem; 
  String titulo;
  int tipo;
  AvatarStorie(this.imagem, this.titulo, this.tipo);
  @override
  _AvatarStorieState createState() => _AvatarStorieState(imagem, titulo, tipo);
}

class _AvatarStorieState extends State<AvatarStorie> {
   String imagem; 
   String titulo;
   int tipo = 1;
  _AvatarStorieState(this.imagem, this.titulo, this.tipo);
  @override
  Widget build(BuildContext context) {
    return Container(
            child: Padding(
              padding: tipo == 1 ? EdgeInsets.only(left: 8, right: 10, top: 8) :
              EdgeInsets.only(left: 8, right: 2, top: 8),
              child: Column(
                children: <Widget>[
                  Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Container(
                        height: tipo == 1 ? 69 : 37,
                        width: tipo == 1 ? 69 : 37,
                        child: CircleAvatar(
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                                gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [Colors.blue, Colors.purple])),
                          ),
                          backgroundColor: Colors.purple,
                        ),
                      ),
                      Container(
                        height: tipo == 1 ? 64 : 33,
                        width: tipo == 1 ? 64 : 33,
                        child: CircleAvatar(backgroundColor: Colors.white),
                      ),
                      Container(
                        height: tipo == 1 ? 60 : 30,
                        width: tipo == 1 ? 60 : 30,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            imagem,
                          ),
                        ),
                      ),
                    ],
                  ),
                  tipo == 2 ? Container() :
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(titulo),
                  )
                ],
              ),
            ),
          );
  }
}