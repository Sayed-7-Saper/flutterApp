import 'package:flutter/material.dart';

class Count extends StatefulWidget{
  @override
  _CountState createState() => _CountState();
}

class _CountState extends State<Count> {
  int countUser=1;
  @override
   void initState(){
    super.initState();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter ',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
      ),
      body: Center(
          child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(onPressed:(){setState(() {countUser--;

                    }); }, child: Text('MINUS',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),)),
                    SizedBox(width: 20.0,),
                    Text('${countUser}',style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.bold),),
                    SizedBox(width: 20.0,),
                    TextButton(onPressed:() {setState(() {countUser++;});}, child: Text('PLUS',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),)),

                  ],
                ),
            ),
    );
  }
}