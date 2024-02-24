import 'package:flutter/material.dart';

class customTextfield extends StatelessWidget {
  final String labelName;
  final Icon fieldIcon;
  final TextInputType keyboard;
  final bool secure;
  final TextEditingController textController;
  final Color TColor;

  const customTextfield({
    super.key,
    required this.labelName,
    required this.fieldIcon,
    required this.keyboard,
    this.secure = false,
    required this.textController,
    required this.TColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8, right: 8),
      child: Padding(
        padding: EdgeInsets.only(left: 8, right: 8),
        child: TextField(
          controller: textController,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 10),
              filled: true,
              fillColor: TColor,
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
