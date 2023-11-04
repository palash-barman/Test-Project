import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF3C3C3C),
      body:SafeArea(
        child: Center(
          child: Stack(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Color(0xFF3C3C3C),
                child: Column(
                  children: [
                    Image.asset("assets/image/Logo.png",height: 103,width: 103,)
                    ,
                    SizedBox(height:10,),
                    RichText(text:TextSpan(
                      text:"the",
                      style: TextStyle(fontSize:32,fontWeight: FontWeight.w300),
                      children: [
                        TextSpan(
                          text:"social",
                          style: TextStyle(fontSize:32,fontWeight: FontWeight.w400),
                        ),
                        TextSpan(
                         text:"club",

                          style: TextStyle(fontSize:32,fontWeight: FontWeight.w700),

                        )
                      ]
                    ))
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: double.infinity,
                margin: EdgeInsets.only(top:200),
                decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight:Radius.circular(30)
                  )
                ),
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal:20,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height:25,),
                      Text("Anmelden",style:TextStyle(fontSize: 32,fontWeight: FontWeight.w700,),),
                      SizedBox(height:25,),
                      TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                        hintText: "Email",
                            contentPadding: EdgeInsets.symmetric(horizontal:10),
                            enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Color(0xFF3C3C3C),
                            width: 3
                          )
                        )
                      ),),
                       SizedBox(height:10,),
                       TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                        hintText: "Password",
                            contentPadding: EdgeInsets.symmetric(horizontal:10),
                            enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Color(0xFF3C3C3C),
                            width: 3
                          )
                        )
                      ),),
                      SizedBox(height:10,),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(onPressed: (){},
                            child:Text("Forgot Password")),
                      ),
                      SizedBox(height:28,),
                      Center(
                        child: OutlinedButton(onPressed:(){},
                            style:OutlinedButton.styleFrom(
                              backgroundColor:Colors.black,
                              shape: StadiumBorder(),
                              minimumSize: Size(size.width*0.7, 50)
                            ),
                            child:Text("Submit",style:TextStyle(fontSize: 20,color: Colors.white),)),
                      )
                        ,
                      SizedBox(height:74,),
                      RichText(text:TextSpan(
                          text:"Noch keinen Account? ",
                        style: TextStyle(fontWeight: FontWeight.w300,fontSize:14,color: Colors.black)
                        ,
                        children: [
                          TextSpan(
                              text:"Registrieren",
                              recognizer: TapGestureRecognizer()..onTap = () => print('Tap Here onTap'),
                              style: TextStyle(fontWeight: FontWeight.w400,fontSize:14,color: Colors.black,decoration: TextDecoration.underline),
                          )
                        ]
                      ))
                    ],
                  ),
                ),
              ),

            ],
          )
        ),
      )


    );
  }
}