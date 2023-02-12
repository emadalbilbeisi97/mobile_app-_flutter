import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'login.dart';
import 'register0.dart';


// page baics form login and create acount
class mytwobutton extends StatefulWidget {
  const mytwobutton({Key? key, required this.title}) : super(key: key);




  final String title;

  @override
  State<mytwobutton> createState() => _mytwobutton();
}

class _mytwobutton extends State<mytwobutton> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor:Color(0xFF123151),
      /*appBar: AppBar(

        title: Text(widget.title),
      ),*/
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            //IMAGE Logo
             Container(
                  margin: EdgeInsets.all(150),
                 child: Image.asset('images/logo.jpg',
                                  width:300,height:100)),

          //  button sigin up up
        ElevatedButton(
        onPressed: (){
          go_toregister();
        },
        child: Text("Create New Acount"),
        style: ElevatedButton.styleFrom(
            primary: Color(0xFF008C35),
            onPrimary: Colors.white,
            minimumSize: Size(320.0, 60.0),
            textStyle: TextStyle(
                fontSize: 24),
            // controller: passwordcontroller
        )
        ),
         SizedBox(height:30),
            //button sigin in
            ElevatedButton(
                onPressed: (){
                  //gopagelogin0();
                },
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                  primary:Color(0xFF105CA2),
                  onPrimary: Colors.white,
                  minimumSize: Size(320.0, 60.0),
                  textStyle: TextStyle(
                      fontSize: 24),
                  // controller: passwordcontroller
                )
            ),

       ]),

     // This trailing comma makes auto-formatting nicer for build methods.
    )
    );
  }

  void go_toregister(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  myregister0()),
    );
  }
 void gopagelogin0(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  mylogin()),
    );


}
}

