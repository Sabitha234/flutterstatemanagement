import 'package:flutter/material.dart';
import 'package:statemanagementtask/Product.dart';
import 'ShowProduct.dart';
import 'ViewDetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
         primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final items = Product.getProducts();
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("State Management Demo"),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext , index){
            return GestureDetector(
              child: ViewDetails(item: items[index]),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ShowProduct(item:items[index])));
              },
            );

          }
      )
  );
  }
}
