import 'package:flutter/material.dart';
import 'package:provider_task/screens/product.dart';
import '../tools/textFeild.dart';

class signUp extends StatelessWidget {
  const signUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.orange,
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 60),
            child: Text('Sign Up', style: TextStyle(fontSize: 44, color: Colors.white ,fontWeight: FontWeight.bold),),
          ),
           textFeild(hint: 'Full Name', type: 'name',),
           textFeild(hint: 'Email', type: 'email',),
           textFeild(hint: 'Password', type: 'password',),
           textFeild(hint: 'Phone number', type: 'phoneNumber',),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.blueGrey[900], 
              foregroundColor: Colors.white, // Background Color
            ),
            onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> const product())), 
            child: const Text("sign up")
          )
        ],
      )
    );
  }
}