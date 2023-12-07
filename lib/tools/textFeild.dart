import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/data.dart';

class textFeild extends StatelessWidget {
  final String hint;
  final String type;
  textFeild({super.key, required this.hint, required this.type});
  final textFeildData = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final value = Provider.of<data>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10 ,horizontal: 8),
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          filled: true,
          fillColor: Colors.orange[100],
          hintText: hint
        ),
        controller: textFeildData,
        onChanged: (v) {
          type=='name'? value.name=v : type=='email'? value.email=v : type=='password'? value.password=v : value.phoneNumber=v;
        },
      ),
    );
  }
}