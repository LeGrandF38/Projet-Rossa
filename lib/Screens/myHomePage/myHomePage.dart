import 'package:flutter/material.dart';
import 'package:projet_rossa/data/userData.dart';
import 'setcion1.dart';
import 'section2.dart';
import 'section3.dart';

//////////////////////LE WIDGET MyHomePage//////////////////////////////////////////////////
class MyHomePage extends StatelessWidget {
  //////gere le l'animation de la sideBarre/////////
  final VoidCallback openDrawer;
  const MyHomePage({
    Key? key,
    required this.openDrawer,
  }) : super(key: key);

  //////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              /////////////////////La silverAppbar//////////////////////

              SliverAppBar(
                title: Text("Rossa"),
                expandedHeight: 200,
                pinned: false,
                centerTitle: false,
                //
                leading: IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: openDrawer,
                ),
                //
                actions: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.search))
                ],
                //
                bottom: TabBar(
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    color: Colors.white,
                  ),
                  labelColor: Colors.indigo,
                  unselectedLabelColor: Colors.white,
                  tabs: [
                    Tab(
                        child: Align(
                      alignment: Alignment.center,
                      child: Text("Livres"),
                    )),
                    Tab(
                        child: Align(
                      alignment: Alignment.center,
                      child: Text("Devoirs"),
                    )),
                    Tab(
                        child: Align(
                      alignment: Alignment.center,
                      child: Text("Bac"),
                    )),
                  ],
                ),
                //
                backgroundColor: Colors.indigo,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(70))),
                //
                flexibleSpace: Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(70)),
                      gradient: LinearGradient(
                          //begin: Alignment.topCenter,
                          //end: Alignment.bottomCenter,
                          colors: [
                            Colors.indigo,
                            Colors.indigo.shade900,
                          ])),
                  child: FlexibleSpaceBar(
                      background: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: FittedBox(
                        child: Text(
                          lexoi.matiere.nomMatiere,
                          style: TextStyle(fontSize: 80, color: Colors.white),
                        ),
                      ),
                    ),
                  )

                      //background: Image.asset("image01.jpg", fit: BoxFit.cover),
                      ),
                ),
              ),
            ];
          },
          //////////////////////le ou lES BODY/////////////////////////
          body: TabBarView(
            children: [
              Section1(),
              Section2(),
              Section3(),
            ],
          ),
          //////////////////////le ou Les
        ),
      ),
    );
  }
} // Le Widget MyHomePage
