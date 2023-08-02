
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _productsState createState() => _productsState();
}
class _productsState extends State<Products>{
  var productsList =[
    {
      "name":"banana",
      "picture": "assets/products/banana.jpg",
      "price": "Tzs 1000",
    },
    {
      "name":"Coconut",
      "picture": "assets/products/coconut.jpg",
      "price": "Tzs 1500",
    },

    ];
  @override
  Widget build(BuildContext context){
    return GridView.builder(
      itemCount: productsList.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context , int index){
        return SingleProduct(
        product_name: productsList[index]['name'],
        product_picture: productsList[index]['picture'],
        price: productsList[index]['price'],
        );
  });
}
}

class SingleProduct extends StatelessWidget{
  final product_name;
  final product_picture;
  final price;

  const SingleProduct({super.key, required this.product_name, required this.product_picture, required this.price});
  @override
  Widget build(BuildContext context){
    return Card(
      child: Hero(
        tag: product_name,
        child: Material(
          child: InkWell(onTap: (){},
          child: GridTile(
            footer: Container(
              color: Colors.white,
              child: ListTile(
                leading: Text(product_name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                title: Text("\$$price",
                style: TextStyle(color: Colors.red, fontWeight: FontWeight.w800),
                ),
                subtitle: Text("\$$price",),
              ),

            ), child: Image.asset(product_picture)),

          ),),
        ),
      );
    //Single_product({this.product_name,this.product_picture,this.price}
  }
}
