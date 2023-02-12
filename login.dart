import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home1.dart';
import 'register0.dart';
import 'session.dart';
//page loading SplashPage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key,String,title}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const SplashPage(),
    );
  }
}

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key,}) : super(key: key);



  @override
  State<SplashPage> createState() => _SplashPage();
}

class _SplashPage extends State<SplashPage> {
  @override
  void initState() {
    Timer.periodic(Duration(seconds:2), (timer){
      checkUserLogin();
    });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
          backgroundColor: Color(0xFF123151),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Image.asset(
                'images/logo.jpg',
                width:100
            ),
            SizedBox(height: 25,),

            Text("سلطة المياه الفلسطينية", style: TextStyle(fontSize: 18,color:Colors.white)),

            SizedBox(height: 15,),

            Text("Palestinian Water Authority", style: TextStyle(fontSize: 18,color:Colors.white)),

          ],
        ),
      ),


    );

  }



  // check user login
  void checkUserLogin() async {
    final prefs = await SharedPreferences.getInstance();
    String user_loggedstaus = prefs.getString('loggedin').toString();
    if (user_loggedstaus == 'LoggedIn')
      goto_homepage();
    else
      go_to_loginpage();
  }

  // page home
  void goto_homepage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => home1()),
    );
  }
  // login page
  void go_to_loginpage(){
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) =>  mylogin()),

    );
  }

}



class mylogin extends StatefulWidget {
  const mylogin({Key? key,}) : super(key: key);


  @override
  State<mylogin> createState() => _mylogin();
}

class _mylogin extends State<mylogin> {

  // session page data information send form login
  SessionManager sessionManager =  new SessionManager();
  final TextEditingController email_controller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  @override
  void initState() {
    get_value_form_session();
  }

  // save data for login for email and password
  String pass01 = '';
  String email0 = '';
  void get_value_form_session() async{
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();
    // Try reading data from the 'action' key. If it doesn't exist, returns null.
    setState(() {
      pass01 = prefs.getString('password').toString();
      email0 = prefs.getString('email').toString();
    });
  }

  void login(){
    if((email_controller.text == email0) &&
      (passwordcontroller.text == pass01)){
      sessionManager.SetUserLoggedIn('LoggedIn');
      gotohome1();
    }
    else{
      print ("Sorry Error email and password ");
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor:Color(0xFF123151),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFF306396),

          toolbarHeight: 120,

          elevation: 14,

          shape: RoundedRectangleBorder(

              borderRadius:

              BorderRadius.only(bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),

              )

          ),

          title: Text('Logn in', style: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: 'DancingScript',
              fontSize: 20
          ),),

          actions: [


          ],

        ),

        body: Center(
           child:SingleChildScrollView(
        scrollDirection:Axis.vertical,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[



                SizedBox(height: 20,),
                Container(
                  width: 310,
                  padding: EdgeInsets.all(5),
                  child:  TextField(
                      style: TextStyle(
                          color:Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily:"arial"
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF306396),
                        border: OutlineInputBorder(),
                        hintStyle:TextStyle(color: Colors.white),
                        hintText: 'Email',
                      ),

                      controller:email_controller
                  ),
                ),
                SizedBox(height: 20,),

                // password
                Container(
                  width: 310,
                  padding: EdgeInsets.all(5),
                  child:  TextField(
                      keyboardType: TextInputType.visiblePassword,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily:"arial",

                    ),
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF306396),
                      border: OutlineInputBorder(),
                      hintStyle:TextStyle(color: Colors.white),
                      hintText: 'Password',
                    ),
                    controller: passwordcontroller,
                  ),
                ),
                SizedBox(height: 20),

                // button login
                Container(
                  child: ElevatedButton(
                      onPressed: (){
                        print("username: "+ email_controller.text);
                        print("password : "+ passwordcontroller.text);
                       // gotohome1();
                        login();
                      },
                      child: Text("Login"),
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFF006CC9),
                          onPrimary: Colors.white,
                          minimumSize: Size(300.0, 60.0),
                          textStyle: TextStyle(
                              fontSize: 24)
                      )
                  ),
                ),
                SizedBox(height: 30),

              Container(
                width: 290,
                child: Row(children: [
                  Text("Dont have acount ? ", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white
                  ),),

                  SizedBox(width:35,),

                  Container(

                    child: TextButton(
                      onPressed:(){
                        goto_register0001();
                      },
                      child:  Text('Regsiter', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(-16722607)
                      ),),
                    ),
                  )
                ],),
              )

              ]),

          // This trailing comma makes auto-formatting nicer for build methods.
        )
        ));
  }

  void gotohome1(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  home1()),
    );
  }
  void goto_register0001(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  myregister0()),
    );
  }
}

