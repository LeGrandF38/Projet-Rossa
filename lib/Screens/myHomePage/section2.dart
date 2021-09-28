import 'package:flutter/material.dart';
import 'package:projet_rossa/data/userData.dart';
import 'bouttonEpreuve.dart';

///
///
/////////////////////////LE VIDJET QUI RETOURNE LA SECRION (SingleScrollView)///

class Section2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Section2();
  }
}

class _Section2 extends State<Section2> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
            children: lexoi.matiere.nomsMatiereSection2.map((e) {
      return BouttonEpreuve(nomEpreuve: e);
    }).toList()));
  }
}
