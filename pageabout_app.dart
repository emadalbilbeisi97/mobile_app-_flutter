import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class pageabout_app extends StatefulWidget {
  const pageabout_app({Key? key,}) : super(key: key);


  @override
  State<pageabout_app> createState() => _pageabout_app();
}

class _pageabout_app extends State<pageabout_app> {
  //int _counter = 0;



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:Color(0xFF123151),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF306396),

        toolbarHeight: 150,

        elevation: 14,

        shape: RoundedRectangleBorder(

            borderRadius:

            BorderRadius.only(bottomRight: Radius.circular(50),
              bottomLeft: Radius.circular(50),

            )

        ),

        title:  SizedBox(
          child:Text('About Application', style: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: 'DancingScript',
              fontSize: 18
          ),),

        ),
        actions: [],

      ),


      body: Center(
          child:SingleChildScrollView(
            scrollDirection:Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 50,),

            // image map
              Container(
                width: 310,
              //  margin:EdgeInsets.fromLTRB(0, 30, 0, 0),
                child:Image.asset(
                  "images/map10.jpg",
                ),
              ),

              SizedBox(height: 25,),

              Container(
                  width: 320,
                  child: Text("Detect desalination areas in the Gaza Strip and work on emergency service if there are problems where the worker or employee sends a complaint to locate the desalination plant through the application and then collect orders to the water authority.",
                      style:TextStyle(color: Colors.white,
                          fontSize: 13.5)
                  )
              ),

              SizedBox(height: 30,),

              Container(
                  width: 320,
                  child: Text("Desalination plants play an important role in the Gaza Strip in most of the serious challenges around water and working on its quality and water health in order to provide healthy water to citizens",
                      style:TextStyle(color: Colors.white,
                          fontSize: 13.5)
                  )
              ),

              // SizedBox(height: 140,),
              //
              // //  icon next to page
              // Container(
              //     margin: EdgeInsets.fromLTRB(250, 0, 0, 0),
              //     decoration: BoxDecoration(
              //         borderRadius: BorderRadius.all(Radius.circular(50)), //here
              //         // color: Theme.of(context).primaryColor,
              //         color:Color(0xFF056EBE),
              //         boxShadow: [
              //           BoxShadow(
              //               color:Color(0xFF056EBE),
              //               offset: Offset(-1,2),
              //               blurRadius: 20.0)
              //         ]
              //
              //     ),
              //     child:  IconButton(
              //         iconSize: 30,
              //         icon: Icon(Icons.arrow_forward_ios_outlined,
              //           color: Colors.white,),
              //         onPressed:(){
              //           //      goto_home001();
              //         }
              //     )
              // ),

            ]),
      ),

          ));


  }


}