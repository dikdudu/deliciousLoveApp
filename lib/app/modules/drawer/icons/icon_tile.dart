import 'package:flutter/material.dart';

class IconTile extends StatelessWidget {

  final String label;
  final IconData iconData;
  final VoidCallback onTap;
  final bool highlighted;

  IconTile({this.label, this.iconData, this.onTap, this.highlighted});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 60,
          child: Row(
            children: <Widget>[
              Icon(
                iconData,
                size: 32,
                color: highlighted ? Color.fromARGB(255, 215, 130, 186) : Colors.white,
              ),
              const SizedBox(width: 32,),
              Text(
                label,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: highlighted ? Color.fromARGB(255, 215, 130, 186) : Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
