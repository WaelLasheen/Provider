import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_task/provider/data.dart';
import 'package:provider_task/screens/buy.dart';

class product extends StatefulWidget {
  const product({super.key});

  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> {
  @override
  Widget build(BuildContext context) {
    final info = Provider.of<data>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi ,${info.name}"),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            showDialog(
              context: context, 
              builder: (context){
                return AlertDialog(
                  content: SizedBox(
                    height: 180,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(info.name , 
                          style: TextStyle(fontSize: 24 ,color: Colors.lightGreen[900]),
                        ),
                        Text(info.email , 
                          style: TextStyle(fontSize: 18 ,color: Colors.lightGreen[900]),
                        ),
                        Text(info.phoneNumber , 
                          style: TextStyle(fontSize: 24 ,color: Colors.lightGreen[900]),
                        ),
                      ],
                    ),
                  ),
                );
              }
            );
          },
          icon: const Icon(Icons.info)
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network("https://sika-design.com/cdn/shop/products/Teddy_cushion_Moroccan_4838_5f1dd923-a1ab-4928-80c6-c5a3c507024c_2048x.jpg?v=1647917558"),
          Container(
            width: 150,
            margin: const EdgeInsets.only(top: 25),
            decoration: BoxDecoration(color: Colors.lightBlue[50] ,borderRadius: const BorderRadius.all(Radius.circular(20))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: () => info.add(), icon: Icon(Icons.add ,color: Colors.green[800],)),
                Text(info.quantity.toString(), style: TextStyle(fontSize: 24 ,color: Colors.blueGrey[900]),),
                IconButton(onPressed: () => info.sub(), icon: Icon(Icons.remove ,color: Colors.red[800],)),
              ],
            ),
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => const buyInfo(),)),
        child: const Icon(Icons.shopping_cart_outlined),
      ),
    );
  }
}