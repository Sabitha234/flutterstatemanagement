import 'package:flutter/material.dart';
import 'package:statemanagementtask/ShowProduct.dart';
class Rating extends StatefulWidget {
   Rating({Key? key,required this.rate}) : super(key: key);
int rate=0;
  @override
  State<Rating> createState() => _RatingState(rate);
}

class _RatingState extends State<Rating> {
  _RatingState(this.rate);
  int rate=0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          IconButton(onPressed:rate1, icon:rate>=1?Icon(Icons.star,color: Colors.purple,):Icon(Icons.star_border_purple500_outlined)),
          IconButton(onPressed:rate2, icon:rate>=2?Icon(Icons.star,color: Colors.purple,):Icon(Icons.star_border_purple500_outlined)),
          IconButton(onPressed:rate3, icon:rate>=3?Icon(Icons.star,color: Colors.purple,):Icon(Icons.star_border_purple500_outlined)),
          IconButton(onPressed:rate4, icon:rate>=4?Icon(Icons.star,color: Colors.purple,):Icon(Icons.star_border_purple500_outlined)),
          IconButton(onPressed:rate5, icon:rate>=5?Icon(Icons.star,color: Colors.purple,):Icon(Icons.star_border_purple500_outlined)),

        ],
      ),
    );
  }
  rate1(){
    setState(() {
      rate=1;
      ShowProduct.rating=rate;
    });
    print(rate);
  }
  rate2(){
    setState(() {
      rate=2;
      ShowProduct.rating=rate;
    });
    print(rate);
  }
  rate3(){
    setState(() {
      rate=3;
      ShowProduct.rating=rate;
    });
    print(rate);
  }
  rate4(){setState(() {
    rate=4;
    ShowProduct.rating=rate;
  });
    print(rate);
  }
  rate5(){
    setState(() {
      rate=5;
      ShowProduct.rating=rate;
    });
    print(rate);
  }

}
