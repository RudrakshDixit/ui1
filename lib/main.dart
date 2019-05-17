import 'dart:html' as prefix0;
import 'dart:svg';

import 'package:flutter_web/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Login Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
          appBar: new AppBar(
          title: new Text("Login Page",style: new TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),),
          centerTitle: true,
          backgroundColor: Colors.greenAccent[400],
          elevation: 5,
        ),
      body: Center(

        child: Container(
        decoration: new BoxDecoration(
          border: new Border.all(color: Colors.greenAccent[400]),
           color: Colors.white,
        ),
           width: MediaQuery.of(context).size.width*.5,
           height: MediaQuery.of(context).size.height*.9,


          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

            Stack(
                children:<Widget>[
                  Container(
                     margin: const EdgeInsets.only(top: 5),
                    child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                    Padding(padding: const EdgeInsets.only(left: 30)),
                      Text("Hello",style: new TextStyle(
                      fontSize: 60,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),),
                ],
              ),
                  ),


            Container(
               margin: const EdgeInsets.only(top: 50),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(padding: const EdgeInsets.only(left: 30)),

                  Text("There",style: new TextStyle(
                    fontSize: 60,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text(".",style: new TextStyle(
                    fontSize: 80,
                    color: Colors.greenAccent[400],
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
            ),
          ],
          ),
         Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/40),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                 width: MediaQuery.of(context).size.width*.45,
                 child: TextField(
                 style: new TextStyle(
                   fontSize: 15,
                   color: Colors.black,
                 ),
                keyboardType: TextInputType.emailAddress,
                   decoration: InputDecoration(
                     labelText: "EMAIL",
                     labelStyle: TextStyle(
                       fontSize: 20,
                       color: Colors.grey,

                     ),
                    focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)
)                 ),
                 ),
               ),
              ],
            ),
            Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/60),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width*.45,
                  child: TextField(
                    style: new TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,

                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)
                        )                 ),
                  ),
                ),
              ],
            ),
            Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/40),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                Container(
                  padding: EdgeInsets.only(right: MediaQuery.of(context).size.width/42),
                  child: InkWell(
                    onTap: (){},
                    child: Text("Forgot Password", style: new TextStyle(
                      color: Colors.greenAccent[400],
                      fontSize: 15,
                      decoration: TextDecoration.underline,

                  ),),
                  ),
                ),
              ],
            ),
            Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/40),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonTheme(
                  height: MediaQuery.of(context).size.height/13,
                  minWidth: MediaQuery.of(context).size.width*.45,
                  child: RaisedButton(
                    color: Colors.greenAccent[400],
                    child: Text("LOGIN",style: new TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),),
                    elevation: 1,
                    onPressed: (){},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.green,width: 1)
                    ),

                  ),
                )
              ],
            ),
             Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/65),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonTheme(
                  height: MediaQuery.of(context).size.height/13,
                  minWidth: MediaQuery.of(context).size.width*.45,
                  buttonColor:Colors.grey[100],

                  child: RaisedButton(
                    child: Text("Login in with Facebook",style: new TextStyle(
                      fontSize: 18,
                      color: Colors.indigo[900],
                    ),),

                    onPressed: (){},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.grey,width: 1)

                    ),

                  ),
                )
              ],
            ),
            Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/35),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("New to Spotify? ", style: new TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),),
                InkWell(
                  onTap: (){
                    },
                  child: Text("Register", style: new TextStyle(
                    color: Colors.greenAccent[400],
                    fontSize: 15,
                    decoration: TextDecoration.underline,
                  ),),
                ),
              ],
            ),
            ],
          ),
        ),
      ),
    );
  }
}
