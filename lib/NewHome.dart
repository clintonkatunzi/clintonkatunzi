import 'package:flutter/material.dart';
import 'package:lecle_flutter_carousel_pro/lecle_flutter_carousel_pro.dart';

//local imports
import 'package:sample_commerce/Components/Horizontal_listView.dart';
import 'package:sample_commerce/Components/products.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>{
  Widget image_carousel = SizedBox(
          height: 200.0,
          width: 350.0,
          child: Carousel(
            boxFit: BoxFit.cover,
            images: [
              ExactAssetImage('assets/Images/SmartGengeLogo.png'),
              // ExactAssetImage('assets/Images/genge1.jpg'),
              ExactAssetImage('assets/Images/genge2.jpg'),
              ExactAssetImage('assets/Images/genge.jpg'),
              ExactAssetImage('assets/Images/nafaka.jpg'),
              ExactAssetImage('assets/Images/viungo.jpg'),
              ExactAssetImage('assets/Images/mbogamboga.jpg'),


            ],
            autoplay:true,
            animationCurve: Curves.fastLinearToSlowEaseIn,
            animationDuration: Duration(microseconds: 8000),
            dotSize: 5.0,
            dotSpacing: 15.0,
            dotColor: Colors.black,
            indicatorBgPadding: 8.0,
            dotBgColor: Colors.orange.withOpacity(0.5),
            hasBorderRadius: true,
            overlayShadow: true,
            overlayShadowColors: Colors.orangeAccent,
            overlayShadowSize: 0.6,
          )
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        // backgroundColor: Colors.orange,
        title:Text('Smart Genge'),
        centerTitle: true,
        actions:  <Widget>[
          new IconButton(icon: Icon(Icons.search) ,color: Colors.black,onPressed: (){},),
          new IconButton(icon: Icon(Icons.shopping_cart) ,color: Colors.black,onPressed: (){},)

        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            // header
            new UserAccountsDrawerHeader(
              accountName: Text('clinton' , style: TextStyle(color: Colors.black),),
                accountEmail: Text('clinton@gamil.com' ,  style: TextStyle(color: Colors.black),),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(Icons.person_2 , color: Colors.white,),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.orange
              ),
            ),
            // body
            InkWell(
              onTap: (){},
              child: ListTile(
              title: Text('Home Page', style: TextStyle(color: Colors.black),),
                textColor: Colors.black,
                leading: Icon(Icons.home_filled , color: Colors.orange,),

            ),
                  ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Account',  style: TextStyle(color: Colors.black),),
                textColor: Colors.black,

                leading: Icon(Icons.account_box , color: Colors.orange,),

              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders' ,  style: TextStyle(color: Colors.black),),
                textColor: Colors.black,

                leading: Icon(Icons.shopping_basket , color: Colors.orange,),

              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Categories', style: TextStyle(color: Colors.black),),
                textColor: Colors.black,

                leading: Icon(Icons.category , color: Colors.orange,),

              ),
            ),
            Divider(
              color: Colors.orange, thickness:2.0 ,
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                textColor: Colors.black,

                leading: Icon(Icons.settings , color: Colors.blueAccent,),

              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                textColor: Colors.black,
                leading: Icon(Icons.help_center, color: Colors.blueAccent,),

              ),
            ),
          ],
        ),
      ),
     body: new ListView(
       children: <Widget>[
         image_carousel,
         // padding widget
         new Padding(padding: const EdgeInsets.all(10.0),
         child: new Text('Categories'),),
         // horizontal
       HorizontalList(),
         new Padding(padding: const EdgeInsets.all(22.0),
           child: new Text('Featured Products'),),
         // grid view
         Container(
           height: 320.0,
           child: Products(),
         )
        ],
     ),
    );
  }
}
