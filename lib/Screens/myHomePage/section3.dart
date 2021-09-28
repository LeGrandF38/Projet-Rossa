import 'package:flutter/material.dart';
import 'package:projet_rossa/data/userData.dart';

import 'bouttonEpreuve.dart';

///
///
/////////////////////////LE VIDJET QUI RETOURNE LA SECRION (SingleScrollView)///
class Section3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Section3();
  }
}

class _Section3 extends State<Section3> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
            children: lexoi.matiere.nomsMatiereSection3.map((e) {
      return BouttonEpreuve(nomEpreuve: e);
    }).toList()));
  }
}
