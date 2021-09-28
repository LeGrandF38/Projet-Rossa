import 'package:flutter/material.dart';
import 'package:projet_rossa/data/userData.dart';

import 'profilCadre.dart';

class MyMenuPage extends StatelessWidget {
  const MyMenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.indigo,
              Colors.indigo.shade700,
              Colors.indigo.shade900,
            ])),
        child: SingleChildScrollView(
            child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfilCadre(),
              SizedBox(
                height: 30,
              ),
              Column(
                children: lexoi.nomsMatieres
                    .map((e) => Material(
                          color: Colors.transparent,
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 0),
                            onTap: () {},
                            title: Text(
                              e,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ))
                    .toList(),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
