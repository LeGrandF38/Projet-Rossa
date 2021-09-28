import 'package:flutter/material.dart';
import 'package:projet_rossa/data/userData.dart';

class BouttonEpreuve extends StatelessWidget {
  BouttonEpreuve({required this.nomEpreuve});

  String nomEpreuve;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 13),
          Card(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              elevation: 6,
              shadowColor: Colors.indigo,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.indigo,
                    highlightColor: Colors.indigo[900],
                    child: Container(
                        //margin: EdgeInsets.fromLTRB(20, 15, 20, 15),
                        height: 60,
                        decoration: BoxDecoration(
                            //color: Colors.white,
                            //borderRadius: BorderRadius.circular(38),
                            ),
                        child: Row(
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(30, 5, 0, 2),
                                    // color: Colors.pink,
                                    //width: MediaQuery.of(context).size.width * 0.8,
                                    // height: MediaQuery.of(context).size.height * 0.6,
                                    child: Text("$nomEpreuve",
                                        style: TextStyle(
                                          color: Colors.indigo,
                                          fontSize: 20,
                                        )),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(30, 2, 0, 2),
                                    // color: Colors.yellow,
                                    // width: MediaQuery.of(context).size.width * 0.8,
                                    // height: MediaQuery.of(context).size.height / 2,
                                    child: Text(
                                      lexoi.nomEcole,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                                child: Container(
                                    //color: Colors.amber,
                                    )),
                            Container(
                              child: Icon(Icons.download),
                            )
                          ],
                        )),
                    onTap: () {},
                  ))),
        ],
      ),
    );
  }
}
