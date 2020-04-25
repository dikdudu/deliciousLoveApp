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
  final FormFieldSetter<String> onSaved;
  final int maxLines;

  CustomTextField({this.hint, this.prefix, this.suffix, this.obscure = false,
    this.textInputType, this.onChanged, this.enabled, this.controller, this.onSaved, this.maxLines
  });

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(0, Container(
      margin: EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(255, 105, 180, .2),
              blurRadius: 10.0,
              offset: Offset(0, 2)
          )
        ]
      ),
      padding: prefix != null ? EdgeInsets.all(4) : const EdgeInsets.only(left: 16),
      child: TextFormField(
      controller: controller,
      obscureText: obscure,
      keyboardType: textInputType,
      maxLines: maxLines,
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
        onSaved: onSaved,
    )
    ));

  }


}

