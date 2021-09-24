import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathFoto;
  String textoNombreUsuario;
  String textoResumenUsuario;
  int cantidadEtrellas;
  String textoComntario;


  Review(this.pathFoto, this.textoNombreUsuario, this.textoResumenUsuario, this.cantidadEtrellas, this.textoComntario);
  @override
  Widget build(BuildContext context){


    final foto = Container(
      margin: EdgeInsets.only(
        top: 10,
        right: 5
      ),
      width:50,
      height:100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
        image: AssetImage(
            pathFoto

        ),
          fit: BoxFit.cover
      )
    )
    );


    final nombreUsuario = Container(
      child: Text(
       textoComntario,
        style: TextStyle(
        fontFamily: "Lato",
        fontSize: 18
        ),

      ),
    );


    final resumenUsuario = Container(
      margin: EdgeInsets.only(
        right:10
      ),
      child: Text(
        textoResumenUsuario,
        style: TextStyle(
          color: Colors.black54
        ),

      ),
    );

    final estrella = Container(
      margin: EdgeInsets.only(
          right: 5
      ),
      child: Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );


    final estrellaBorde = Container(
      margin: EdgeInsets.only(
          right: 5
      ),
      child: Icon(
        Icons.star_border,
        color: Colors.black54,
      ),
    );


    List<Container>estrellas = new List();
    for(int i = 0; i < 5; i++){
      if(i < cantidadEtrellas){
        estrellas.add(estrella);
      }else{
        estrellas.add(estrellaBorde);
      }
    }
    final  filastrellas = Row(
      children: estrellas,
    );


    final filaResumen = Row(
      children: <Widget>[
        resumenUsuario,
        filastrellas

      ],
    );

    final comentario = Container(
      child: Text(textoComntario,
        style: TextStyle(
          fontFamily: "Lato",
        ),

      ),
    );


    final columnaReview = Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        nombreUsuario,
        filaResumen,
        comentario
      ],
    );


    final review = Row(
      children: <Widget>[
        foto,
        columnaReview

      ],
    );
    return review;

  }

}