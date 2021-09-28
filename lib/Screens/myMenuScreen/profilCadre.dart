import 'package:flutter/material.dart';
import 'package:projet_rossa/data/userData.dart';

class ProfilCadre extends StatelessWidget {
  const ProfilCadre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 15, 0, 5),
      child: Row(
        children: [
          CircleAvatar(
            // ///////////////a completer////////
            child: ClipOval(),
          ),
          SizedBox(
            width: 20.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Text(
                  lexoi.nomEcole,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              Text(lexoi.nomClasse,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
