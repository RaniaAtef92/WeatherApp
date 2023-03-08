import 'package:flutter/material.dart';

class custom_Text_Feild extends StatelessWidget {
  const custom_Text_Feild(
      {Key? key,
      this.hinttext,
      this.onsub,
      this.obscure = false,
      this.keybord,
      this.labeltext})
      : super(key: key);
  final String? hinttext, labeltext;
  final Function(String)? onsub;
  final bool obscure;
  final TextInputType? keybord;
  //final IconButton? iconbotton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100, right: 5, left: 5),
      child: TextField(
        obscureText: obscure,
        onSubmitted: onsub,
        keyboardType: keybord,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            suffixIcon:    IconButton(onPressed: (){}, icon: Icon(
                Icons.search,
                color: Colors.teal,
                size: 35,
              ),),
            hintText: hinttext,
            labelText: labeltext,
            labelStyle: TextStyle(color: Colors.teal, fontSize: 20),
            hintStyle: TextStyle(color: Colors.black, fontSize: 20),
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.teal))),
      ),
    );
  }
}
