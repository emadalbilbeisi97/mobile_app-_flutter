import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class personal_info extends StatefulWidget {
  const personal_info({Key? key,}) : super(key: key);


  @override
  State<personal_info> createState() => _personal_info();
}

class _personal_info extends State<personal_info> {
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
          child:Text('Application Programmer', style: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: 'DancingScript',
              fontSize: 18
          ),),

        ),
        actions: [],

      ),


      body: Center(

        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 50,),

              // image personal
              // Container(
              //   width: 310,
              //   //  margin:EdgeInsets.fromLTRB(0, 30, 0, 0),
              //   child:Image.asset(
              //     "images/image.jpg",
              //     width: 25,
              //   ),
              // ),

              // image profile
              Container(
                alignment: AlignmentDirectional.center,
                margin: EdgeInsets.fromLTRB(0,0,0,0),

                child:InkWell(
                    onTap:(){},
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage("images/image.jpg"),
                     backgroundColor: Colors.blueGrey,
                        foregroundColor:Color(-13591809),
                    )
                ),
              ),

              SizedBox(height: 35,),

              Container(

                  width: 320,
                  child: Text("Geographic Information Systems Engineer",
                      style:TextStyle(color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)
                  )
              ),
              SizedBox(height: 35,),
              Container(
                  width: 320,
                  child: Text("About Me :",
                      style:TextStyle(color: Color(-6829313),
                          fontSize: 25,
                      fontWeight: FontWeight.bold)
                  )
              ),

              SizedBox(height: 30,),


              Container(

                  width: 320,
                  child: Text("I have two year of experience in geographic information systems and the direction of my career and my dream of analyzing and developing mobile and web applications in dealing with interactive maps and GIS analysis",
                      style:TextStyle(color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)
                  )
              ),



            ]),
      ),

    );


  }


}