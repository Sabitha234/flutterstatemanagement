import 'package:statemanagementtask/Product.dart';
import 'package:flutter/material.dart';
import 'package:statemanagementtask/Rating.dart';
class ShowProduct extends StatelessWidget {
  final Product item;
  ShowProduct({Key? key,required this.item}) : super(key: key);
  static int rating=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,
        title: Text("View Me"),
        actions: [
          PopupMenuButton(
              color: Colors.black,
              itemBuilder: (context)=>[PopupMenuItem(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                Text("Rate your Experience",style: TextStyle(color: Colors.white),),
                Container(
                    child: Rating(rate: rating,),
                  ),
              ],
            ),
          )
    )
    ]
          )
        ],

      ),
      body: Center(
        child: Container(
          width: 500,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('img/'+item.image),
                Text(item.name),
                Text(item.description),
                Text(item.price.toString()),
                 Rating(rate: rating,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
