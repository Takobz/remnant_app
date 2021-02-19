import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//main runs the app
void main() => runApp(MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false,));

//stateful widgets can change state
//the UI can change
class MyApp extends StatefulWidget{

  //calls _MyAppState to recreate the state
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {


    return Scaffold(

      backgroundColor: Colors.black,

      //side bar
      drawer: Drawer(

        child: ListView(

          padding: EdgeInsets.zero,

          children: <Widget>[

            ListTile(

              title: Text("PANTS"),
              trailing: Icon(Icons.add),
              onTap: (){},
            ),

            ListTile(

              title: Text("TEES"),
              trailing: Icon(Icons.add),
              onTap: (){},
            ),

            ListTile(

              title: Text("BEANIES"),
              trailing: Icon(Icons.add),
              onTap: (){},
            ),

            ListTile(

              title: Text("HOODIES"),
              trailing: Icon(Icons.add),
              onTap: (){},
            ),

          ],

        ),

      ),

      appBar: AppBar(

        backgroundColor: Colors.black,

        actions: [

          Expanded(

            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.search),
            ),
          ),

          Expanded(

            flex: 1,
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
              child: Text("REMNANT", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 35),),
            ),
          ),

          //TODO fix the account icon
          Expanded(

            flex: 1,
            child: Padding(
                padding: EdgeInsets.fromLTRB(80,8,0,0),
                child: Icon(Icons.add_shopping_cart)
            ),
          ),

          Expanded(

            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.account_circle),
            ),
          )
        ],
      ),

      body: SingleChildScrollView(

        child: Column(


          children: <Widget>[

            //1st item in column
            //Remnant image
            Container(

              height: 500,
              width:  700,
              child: Image.asset('project_images/remnant_background.jpeg', fit: BoxFit.cover,),
            ),

            //space separation:
            Divider(height: 30,),

            //2nd item in column
            //small container for:
            //delivery, shop now and services.
            Container(

              width: 700,
              child: Row(

                //row with containers
                children: <Widget>[

                  Padding(padding: EdgeInsets.all(10),),

                  //Delivery container
                  Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      //color: Colors.white,
                        border: Border.all(color: Colors.white, width: 5,),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Column(
                      children: <Widget>[
                        Text("DELIVERY FREE",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                        Icon(Icons.local_shipping, color: Colors.white,)
                      ],
                    ),
                  ),

                  Padding(padding: EdgeInsets.all(40),),


                  //Store Container
                  Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      //color: Colors.white,
                        border: Border.all(color: Colors.white, width: 5,),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Column(
                      children: <Widget>[
                        Text("SHOP NOW",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                        Icon(Icons.store_mall_directory, color: Colors.white,)
                      ],
                    ),
                  ),

                  Padding(padding: EdgeInsets.all(40),),

                  Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      //color: Colors.white,
                        border: Border.all(color: Colors.white, width: 5,),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Column(
                      children: <Widget>[
                        Text("SERVICES",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                        Icon(Icons.help, color: Colors.white,)
                      ],
                    ),
                  )

                ],
              ),
            ),

            Divider(height: 60,),


            Container(

              child: Text(
                "The Disconnected, After Plan",
                style: TextStyle(fontFamily: 'oldEnglish', color: Colors.white, fontSize: 30),
              ),
            ),

            Divider(height: 60,),

            //The text for the follow phrase (my english, lmao)
            Container(
              width: 700,
              height: 50,
              child: Text(
                "FOLLOWS US @REMNANT_DULUXE",
                style: TextStyle(fontWeight: FontWeight.w800, color: Colors.white, fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),

            //Divider(height: 5,),

            //Social Media items
            //images of the social media pages
            Container(
              width: 700,
              height: 80,
              //color: Colors.white,
              child: Row(

                mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[

                  //facebook icon:
                  Padding(padding: EdgeInsets.all(10),),
                  
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white
                    ),
                    child: Image.asset('project_images/facebook_icon_img.png',colorBlendMode: BlendMode.color,),
                  ),

                  Padding(padding: EdgeInsets.all(10),),

                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white
                    ),
                    child: Image.asset('project_images/insta_icon_img.png',colorBlendMode: BlendMode.color,),
                  ),

                  Padding(padding: EdgeInsets.all(10),),

                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white
                    ),
                    child: Image.asset('project_images/twitter_img_icon.png',colorBlendMode: BlendMode.color,),
                  ),

                  Padding(padding: EdgeInsets.all(10),),

                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white
                    ),
                    child: Image.asset('project_images/youtube_icon_img.png',colorBlendMode: BlendMode.color,),
                  ),

                  Padding(padding: EdgeInsets.all(10),),

                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white
                    ),
                    child: Image.asset('project_images/whatsapp_icon_img.png',colorBlendMode: BlendMode.color,),
                  ),

                  Padding(padding: EdgeInsets.all(10),),
                  

                ],
              ),
            ),

            Divider(height: 10,),

            //The Last text at the bottom
            Container(
              width: 700,
              height: 35,
              child: Text('REMNANT APPAREL', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30, color: Colors.white),textAlign: TextAlign.center,),
            ),

            Divider(height: 30,),

          ],

          //end of page (bottom)
        ),

      ),

    );
  }
}