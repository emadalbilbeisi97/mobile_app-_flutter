import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_termapp/session.dart';
import 'Personal_Info _App.dart';
import 'about_waterauthority.dart';
import 'dateformmap.dart';
import 'login.dart';
import 'pageabout_app.dart';
import 'package:shared_preferences/shared_preferences.dart';
class home1 extends StatefulWidget {
  const home1({Key? key,}) : super(key: key);


  @override
  State<home1> createState() => _home1();
}

class _home1 extends State<home1> {

  // session page data information send form register " input full name"
  SessionManager sessionManager =  new SessionManager();
  String fullname = '';
  String email = '';
  @override
  void initState() {
    get_value_form_session();
  }
  void get_value_form_session() async{

    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();
    // Try reading data from the 'action' key. If it doesn't exist, returns null.
   setState(() {
     fullname = prefs.getString('fullname').toString();
     email = prefs.getString('email').toString();
   });


  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor:Color(0xFF123151),

        body: Center(

          child: Container(
            width: 420,
            child: SingleChildScrollView(
            scrollDirection:Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  SizedBox(height:40),
                    Text("Wellcom " + fullname,
                      style: TextStyle(fontSize: 20,color: Colors.white),),
                  SizedBox(height:40),
                  // first title dashboard "row"
                  Container(
                      margin: EdgeInsets.fromLTRB(20,0, 0, 0),
                      child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                        children: [


                          Container(
                            // margin: EdgeInsets.fromLTRB(20,0, 0, 0),
                            child: Text("Dashboard",
                                style:TextStyle(
                                    fontWeight:FontWeight.bold,
                                    fontSize: 28,
                                    color: Colors.white
                                )),
                          ),
                          // text dashboard
                        //  SizedBox(width:10),

                          // images logo
                          Container(

                            child: Image.asset(
                                "images/logo.jpg",
                                width: 200,
                                height:120
                            ),
                          ),
                        ],
                      )
                  ),
                  SizedBox(height:30),

                  // Row box 1 , 2
                  Container(
                     padding: EdgeInsets.all(17),
                      child: Row(
                        // box 1
                        children: [

                          // box 1
                            Container(
                              width:170,
                              height:200,
                              // color: Color(0xFF056EBE),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(18)), //here
                                  // color: Theme.of(context).primaryColor,
                                  color:Color(0xFF056EBE),
                                  boxShadow: [
                                    BoxShadow(
                                        color:Color(0xFF056EBE),
                                        offset: Offset(-1,2),
                                        blurRadius: 10.0)
                                  ]

                              ), //BoxDecoration

                              child: Column(
                                  children: [
                                    //button text
                                    Container(
                                      margin:EdgeInsets.fromLTRB(20, 30, 0, 0),
                                      child: TextButton(
                                        onPressed:(){
                                          goto_pagewater0022();
                                        },
                                        child:Text("About Water Authority", style:TextStyle(
                                            fontWeight:FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.white
                                        ))
                                      ),
                                    ),
                                    Container(
                                      margin:EdgeInsets.fromLTRB(0, 30, 0, 0),
                                      child:Image.asset(
                                          "images/logo.jpg",
                                          width: 50,

                                      ),
                                    )

                                  ]),
                            ),

                           SizedBox(width:15),

                          //box 2
                          Container(
                            width:140,
                            height:200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(18)), //here
                                // color: Theme.of(context).primaryColor,
                                color:Color(0xFF056EBE),
                                boxShadow: [
                                  BoxShadow(
                                      color:Color(0xFF056EBE),
                                      offset: Offset(-0.4,2),
                                      blurRadius: 10.0)
                                ]

                            ), //BoxDecoration
                            child: Column(
                                children: [
                                  // Text button
                                  Container(
                                    margin:EdgeInsets.fromLTRB(5, 35, 0, 0),
                                    child: TextButton(
                                        onPressed:(){
                                          goto_viewmap();
                                        },
                                        child:Text("View Map", style:TextStyle(
                                            fontWeight:FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.white
                                        ))
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0,50, 0, 0),
                                    child: Icon(
                                      Icons.add_location,
                                      color: Color(0xFF67B6FF),
                                      size: 50.0,
                                    ),
                                  ),


                                ]),
                          ),

                            ]),
                          ),

                  // SizedBox(height:5),

                  // Row box 3, 4
                  Container(
                    padding: EdgeInsets.all(17),

                    child: Row(

                        children: [

                          // box 3
                          Container(
                            width:170,
                            height:200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(18)), //here
                                // color: Theme.of(context).primaryColor,
                                color:Color(0xFF056EBE),
                                boxShadow: [
                                  BoxShadow(
                                      color:Color(0xFF056EBE),
                                      offset: Offset(-1,2),
                                      blurRadius: 10.0)
                                ]

                            ), //BoxDecoration
                            child: Column(
                                children: [
                                  // button text
                                  Container(
                                    margin:EdgeInsets.fromLTRB(20, 30, 0, 0),
                                    child: TextButton(
                                        onPressed:(){
                                          goto_abuotapp();
                                        },
                                        child:Text("Application     Idea",
                                            style:TextStyle(
                                            fontWeight:FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.white
                                        ))
                                    ),
                                  ),
                                  // icon
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0,25, 0, 0),
                                    child: Icon(
                                      Icons.app_settings_alt,
                                      color: Color(0xFF67B6FF),
                                      size: 50.0,
                                    ),
                                  ),
                                ]),
                          ),

                          SizedBox(width:15),

                          //box 4
                          Container(
                            width:140,
                            height:200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(18)), //here
                                // color: Theme.of(context).primaryColor,
                                color:Color(0xFF056EBE),
                                boxShadow: [
                                  BoxShadow(
                                      color:Color(0xFF056EBE),
                                      offset: Offset(-0.4,2),
                                      blurRadius: 10.0)
                                ]

                            ), //BoxDecoration
                            child: Column(
                                children: [
                                  Container(
                                    margin:EdgeInsets.fromLTRB(10, 30, 0, 0),
                                    child: TextButton(
                                        onPressed:(){
                                          goto_page_info();
                                        },
                                        child:Text("Application Programmer",
                                            style:TextStyle(
                                            fontWeight:FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.white
                                        ))
                                    ),
                                  ),

                                  Container(
                                    margin: EdgeInsets.fromLTRB(0,20, 0, 0),
                                    child: Icon(
                                      Icons.account_circle,
                                      color: Color(0xFF67B6FF),
                                      size: 50.0,
                                    ),
                                  ),

                                ]),
                          ),

                        ]),
                  ),

                  SizedBox(height:10),

              // LogOut Button
                 Container(
                   width:60,
                  height:50,
                  alignment: Alignment.center,
                 decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(18)), //here
                         // color: Theme.of(context).primaryColor,
                         color: Color(-16421186),
                         boxShadow: [
                           BoxShadow(
                               color:Color(0xFF056EBE),
                               offset: Offset(-1,2),
                               blurRadius: 10.0)
                         ]

                     ),
                 child: IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.logout, color:Colors.white),
                  onPressed: (){
                    logout();
                  },
              )
            ),

                        ],
                      ),
          )
          ),


        )
    );




  }
  void goto_viewmap(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  dataform()),
    );
  }

  // go to page about water

  void goto_pagewater0022(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  pagewater_authority()),
    );
  }

  // go to page about application
  void goto_abuotapp(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  pageabout_app()),
    );
  }
  // go to page presonal info of an app owner
  void goto_page_info(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  personal_info()),
    );
  }

// button event logout
  void logout(){
    sessionManager.SetUserLoggedIn('Logged_Out');
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) =>  mylogin()),

    );
  }

}