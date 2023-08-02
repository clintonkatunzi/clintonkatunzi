import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext Context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          categories(
              imageLocation: 'assets/cats/vegetables.png',
              imageCaption: 'Vegetables',
          ),
          categories(
            imageLocation: 'assets/cats/fruits1.png',
            imageCaption: 'Fruits',
          ),
          categories(
            imageLocation: 'assets/cats/grains.png',
            imageCaption: 'Grains',
          ),
          categories(
            imageLocation: 'assets/cats/spices.png',
            imageCaption: 'Spices',
          ),
          categories(
            imageLocation: 'assets/cats/oil.png',
            imageCaption: 'Oil',
          )
        ],
      ),
    );
  }
}

class categories extends StatelessWidget{
  final String imageLocation;
  final String imageCaption;

  categories({ this.imageLocation = '',this.imageCaption ='' });
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(onTap: (){},
      child: Container(
        width: 100.0,
        child: ListTile(
        title: Image.asset(imageLocation,width: 100,height: 80.0,),
            subtitle:Text(imageCaption,style:TextStyle(color: Colors.black))
      ),
    ),
    ),);
  }
}