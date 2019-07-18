
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Rain App",
      debugShowCheckedModeBanner: false,

      home: new rain (),
    );
  }}


  class rain extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return rainingapp();
  }

  }

  class rainingapp extends State<rain>{
  int _money=0;
  void _rainmoney(){
    setState(() {
      _money = _money+100;


    });


  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:Text("Rain app",style: TextStyle(
          fontStyle: FontStyle.italic,
        ),),
        backgroundColor: Colors.deepPurple,

      ),
      body: new Container(
        child: Column(
         children: <Widget>[
           new Center(
          child:Text("Get Rich!",textDirection: TextDirection.ltr,
          style:TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 30.0,



          ),)
           ),
           Expanded(child: Center(
             child: Text("\$$_money",
               textDirection: TextDirection.ltr,
               style: TextStyle(
                 fontWeight: FontWeight.w900,
                 fontSize: 50.0,
                   color: _money >1000 ? Colors.green : Colors.redAccent,


               ),

             ),
           )),
           Expanded(
             child:Center(
               child: FlatButton(
                 color: Colors.green,
                   textColor: Colors.white,
                   onPressed: _rainmoney,
                   child: new Text(" Get Money",
                   style: TextStyle(
                     fontWeight: FontWeight.w900,
                     fontSize: 30.0,
                     fontStyle: FontStyle.italic,

                   ),)),

             ) ,
           )



         ],


        )

      )




    );
  }


  }



