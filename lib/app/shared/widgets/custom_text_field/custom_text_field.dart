import 'package:deliciousloveapp/app/shared/animation/fade_animation.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final TextEditingController controller;
  final String hint;
  final Widget prefix;
  final Widget suffix;
  final bool obscure;
  final TextInputType textInputType;
  final Function(String) onChanged;
  final bool enabled;

  CustomTextField({this.hint, this.prefix, this.suffix, this.obscure = false,
    this.textInputType, this.onChanged, this.enabled, this.controller
  });

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(3, Container(
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(255, 105, 180, .2),
              blurRadius: 20.0,
              offset: Offset(0, 10)
          )
        ]
      ),
      padding: prefix != null ? EdgeInsets.all(4) : const EdgeInsets.only(left: 16),
      child: TextField(
      controller: controller,
      obscureText: obscure,
      keyboardType: textInputType,
      onChanged: onChanged,
      enabled: enabled,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.grey[400]),
        hintText: hint,
        border: InputBorder.none,
        prefixIcon: prefix,
        suffixIcon: suffix,
      ),
      textAlignVertical: TextAlignVertical.center,
    )
    ));

  }


}

