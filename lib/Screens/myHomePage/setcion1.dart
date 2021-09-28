import 'package:flutter/material.dart';
import 'package:projet_rossa/data/userData.dart';

import 'bouttonEpreuve.dart';

///
///
/////////////////////////LE VIDJET QUI RETOURNE LA SECRION (SingleScrollView)///

class Section1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Section1();
  }
}

class _Section1 extends State<Section1> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
            children: lexoi.matiere.nomsEpreuvesSection1.map((e) {
      return BouttonEpreuve(nomEpreuve: e);
    }).toList()));
  }
}
////////////////////////////////////////////////////////////////////////////////
