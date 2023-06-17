import 'package:flutter/material.dart';
import 'package:statemanagementtask/Rating.dart';

import 'Product.dart';

class ViewDetails extends StatelessWidget {
  ViewDetails({Key? key, required this.item}) : super(key: key);
  final Product item;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 200,
      child: Card(
        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              child: Image.asset('img/' + this.item.image),
            ),
            Expanded(
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(this.item.name, style: TextStyle(
                            fontSize: 15, color: Colors.purple, fontWeight: FontWeight.bold
                        ),),

                        Text(this.item.description),
                        Text(this.item.price.toString()+" Rs",style: TextStyle(color: Colors.blue),),
                        Rating(rate: 0,)
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}