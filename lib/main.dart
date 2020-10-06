import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mpr1/login.dart';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      home: LoginPage(),
    )
  );
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text("WELCOME",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                ),
                SizedBox()
              ],
            ),
            Expanded(
              child: Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height,
                decoration: BoxDecoration(
                  
                    image: DecorationImage(
                        image: AssetImage('assets/images1.png'),
                    )
                ),
              ),
            ),
            Column(
              children: <Widget>[
                MaterialButton(
                  minWidth: double.infinity ,
                  height: 60,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.black
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text("Login", style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontSize: 18
                  ),),),
              ],


            ),
            SizedBox(height: 20,),

            Column(

              children: <Widget>[

                MaterialButton(
                padding: EdgeInsets.only(top: 3,left: 3),
                  minWidth: double.infinity ,
                  color: Colors.black,
                  height: 60,
                  elevation:0,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.black
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text("Sign up", style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                  ),),),
              ],


            ),
          ],),),));
  }
}








