import 'package:flutter/material.dart';
import 'package:proyecto1/gradient_back.dart';
import 'package:proyecto1/home_app_bar.dart';
import 'package:proyecto1/review_list.dart';
import 'package:proyecto1/riview.dart';

import 'card_image.dart';
import 'description_place.dart';

class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final descriptionplace = Container(
      margin: EdgeInsets.only(
        top: 300,
        left: 30,
          right: 30

      ),
      child: DescriptionPlace("Uyuni", 4, "Caminar en medio de la nada. A veces sobre un suelo pálido e interminable, a veces sobre las nubes. El blanco infinito bajo mis pies solo se interrumpe cuando arremete contra el azul del cielo, en la lejanía de un horizonte inacabable y continuo. Entre tanta inmensidad, la soledad es absoluta y el silencio, total. Una gaviota pasa volando sobre mi cabeza para luego darme cuenta de que me hallo sobre una fina capa de agua que refleja todo alrededor. Camino sobre las nubes."),
    );


    final reviewList = Container(
      margin: EdgeInsets.only(
          top: 20,
          left: 30,
          right: 30

      ),

      child:ReviewList()
    );

    //ListView
    final listView = ListView(
      children:<Widget>[
        descriptionplace,
        reviewList
      ],

    );

    return Scaffold(
        body: Stack(
        children: <Widget>[
          listView,
          HomeAppBar("Popular")
        ],
      )
    );
  }

}