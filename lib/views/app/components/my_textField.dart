import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final controller ;
  final String hinText;
  final bool obscureText;
  MyTextField({super.key, this.controller, required this.hinText, required this.obscureText});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    controller: widget.controller,
                    obscureText: widget.obscureText,
                    decoration: InputDecoration(
                      hintText: widget.hinText,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)
                      ),
                      focusedBorder:  OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400)
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true
                    ),
                  ),
                );
  }
}