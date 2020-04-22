import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/login');
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 0),
        height: 140.0,
        child:Row(
          children: <Widget>[
            Icon(
              Icons.person,
              color: Colors.white,
              size: 35,
            ),
            const SizedBox(width: 20,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Acesse sua conta agora!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),
                    overflow: TextOverflow.clip,
                  ),
                  Text(
                    "Clique aqui",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                    ),
                    overflow: TextOverflow.clip,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
