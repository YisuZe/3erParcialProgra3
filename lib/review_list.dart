import 'package:flutter/material.dart';

import 'riview.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    //ReviewList
    final reviewList = Column(
      children: < Widget>[
        Review("assets/images/persona1.jpg","Monica Bustillo","1 reviews - 3 photos",4,"Bastante acogedor"),
        Review("assets/images/persona2.jpg","Mercedes Rodriguez","4 reviews - 3 photos",3,"No tuve la oportunidad de conocer tal lugar"),
        Review("assets/images/persona3.jpg","Laura Cardozo","3 reviews - 2 photos",5,"10 de 10 recomendable"),
        Review("assets/images/persona4.jpg","Leo Puertas","8 reviews - 4 photos",2,"Seria Agradable conocerlo"),
        Review("assets/images/persona5.jpg","Cepillin Bustamante","3 reviews - 4 photos",3,"Bello lugar para hacer turismo")

      ],
    );
    return reviewList;
  }
}