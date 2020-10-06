import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,),
            onPressed: (){
              Navigator.pop(context);
            }),
      ),
      body: Container(
        height:MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text("Sign up",style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 20,),
                    Text("Sign up to your account",style:TextStyle(
                        fontSize: 15,
                        color: Colors.grey[700]
                    ),  ),
                  ],
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: <Widget>[
                      makeInput(label:"Email"),
                      makeInput(label:"Password",abscureText:true),makeInput(label:"Confirm Password",abscureText: true,),
                    ],
                  ),),
                Padding(padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Container(
                    padding: EdgeInsets.only(top: 3,left: 3),
                    width : double.infinity ,
                    color: Colors.black,
                    height: 60,

                    onPressed () {},
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.black
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text("Sign up", style: TextStyle(
                        color: Colors.black,
                        fontSize: 18
                    ),),),
                ),
              ],
            ),


          ],
        ),

      ),
    );

  }
}
Widget makeInput({label,abscureText = false}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(label,style: TextStyle(fontSize:15,
        fontWeight: fontWeight.w400,
        color: Colors.black87,
      ),),
      SizedBox(height: 5,),
      TextField(obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[400])
          ),
        ),),
      SizedBox(height: 30,),
    ],
  );
}