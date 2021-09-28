import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Screens/myHomePage/myHomePage.dart';

import 'Screens/myMenuScreen/myMenuScreen.dart';

//////////////////////////LA FONCTION MAIN////////////////////////////////////////
void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.light,
  ));

  runApp(MyApp());
}

/////////////////////LE MATERIAL APP//////////////////////////////////////////////////

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Titre Material app',
        theme: ThemeData(primarySwatch: Colors.indigo),
        home: MyMainPage());
  }
}

////////////////MyMainPage//////////////////////////////////////////
class MyMainPage extends StatefulWidget {
  @override
  _MyMainPageState createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {
  late double decaleDeGauche;
  late double decaleDeHaut;
  late double decaleDeBas;
  late bool isDrawerOpen;
  bool estTire = false;

  @override
  void initState() {
    super.initState();
    closeDrawer();
  }

  void openDrawer() => setState(() {
        decaleDeGauche = 200;
        decaleDeHaut = 83;
        decaleDeBas = 0.85;
        isDrawerOpen = true;
      });
  void closeDrawer() => setState(() {
        decaleDeGauche = 0;
        decaleDeHaut = 0;
        decaleDeBas = 1;
        isDrawerOpen = false;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        children: [
          buildMyMenuPage(),
          buildMyHomePage(),
        ],
      ),
    );
  }

////////////////////////////////////////////////////////////////////

////////////////////////MyMenuPage//////////////////////////////////
  Widget buildMyMenuPage() {
    return SafeArea(child: MyMenuPage());
  }
////////////////////////////////////////////////////////////////////

////////////////////////////MyHomPage/////////////////////////////////////////
  Widget buildMyHomePage() {
    return WillPopScope(
      onWillPop: () async {
        if (isDrawerOpen) {
          closeDrawer();
          return false;
        } else {
          return true;
        }
        ;
      },
      child: GestureDetector(
        onTap: closeDrawer,
        onHorizontalDragStart: (details) => estTire = true,
        onHorizontalDragUpdate: (details) {
          if (!estTire) return;
          const delta = 1;
          if (details.delta.dx > delta) {
            openDrawer();
          } else if (details.delta.dx < -delta) {
            closeDrawer();
          }
          estTire = false;
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          transform: Matrix4.translationValues(decaleDeGauche, decaleDeHaut, 0)
            ..scale(decaleDeBas),
          child: AbsorbPointer(
              absorbing: isDrawerOpen,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(isDrawerOpen ? 20 : 0),
                child: Container(
                  child: MyHomePage(
                    openDrawer: openDrawer,
                  ),
                ),
              )),
        ),
      ),
    );
  }
////////////////////////////////////////////////////////////

////////////////
  ///

}
