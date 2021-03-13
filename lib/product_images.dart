import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MaterialApp(home: ProductImages(),));

class ProductImages extends StatefulWidget
{

  final String NameOfTab;

  @override
  _ProductImagesState createState() => _ProductImagesState();

  //setting for whenever we call this constructor.
  ProductImages({Key key, @required this.NameOfTab}) : super(key: key);

}

class _ProductImagesState extends State<ProductImages>
{
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      //Top App Bar for app
      appBar: AppBar(

        backgroundColor: Colors.black,

        centerTitle: true,

        title: Text(widget.NameOfTab, style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),),
      ),

      body: Column(
        children: <Widget>
        [
          
          Text("I am here for reference"),

          Container(

            height: 500,
            width:  700,
            child: Image.asset('project_images/remnant_background.jpeg', fit: BoxFit.cover,),
          )
        ],
      ),
      
      
    );
  }
}