import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_task/provider/data.dart';

class buyInfo extends StatelessWidget {
  const buyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final info = Provider.of<data>(context ,listen: false);
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            title: Text(info.name),
            subtitle: Text(info.email),
            leading: Icon(Icons.person  ,color: Colors.blue[200],),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(horizontal: 8 ,vertical: 12),
            decoration: BoxDecoration(
              color: Colors.brown[100],
              borderRadius: const BorderRadius.all(Radius.circular(25))
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                  child: Image.network('https://sika-design.com/cdn/shop/products/Teddy_cushion_Moroccan_4838_5f1dd923-a1ab-4928-80c6-c5a3c507024c_2048x.jpg?v=1647917558'),
                ),
                const SizedBox(height: 12,),
                Text("Quantity : ${info.quantity}"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}