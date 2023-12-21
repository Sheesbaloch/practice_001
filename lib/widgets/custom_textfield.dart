import 'package:flutter/material.dart';

class customTextfield extends StatelessWidget {
  final String labelName;
  final Icon fieldIcon;
  final TextInputType keyboard;
  final bool secure;
  final TextEditingController textController;

  const customTextfield({
    super.key,
    required this.labelName,
    required this.fieldIcon,
    required this.keyboard,
    this.secure = false,
    required this.textController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          controller: textController,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              prefix: fieldIcon,
              labelText: labelName,
              labelStyle: const TextStyle(color: Colors.white)),
          obscureText: secure,
          keyboardType: keyboard,
        ),
      ),
    );
  }
}
