import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class pagewater_authority extends StatefulWidget {
  const pagewater_authority({Key? key,}) : super(key: key);


  @override
  State<pagewater_authority> createState() => _pagewater_authority();
}

class _pagewater_authority extends State<pagewater_authority> {
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
          child:Text('About Water Authority', style: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: 'DancingScript',
              fontSize: 15
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
              Container(
                width: 310,
                  child: Text("The Palestinian Water Authority was established by the "
                      "PA Presidential No. 90"
                      "For the year 1995, which in its article "
                      "1 provides for the formation of a water authority"
                      "To achieve integrated and sustainable management and "
                      "protection of limited water sources"
                      "And keep it in organizational tools that help it reach "
                     "and economic development by ensuring a balance between"
                      "Quantities of water available in quantity, quality and needs"
                      "The Palestinian People for the Future",
                    style:TextStyle(color: Colors.white,  fontSize: 13.5)
                      )
              ),

              SizedBox(height: 50,),
              Container(
                  width: 310,
                  child: Text("Functions and powers of the Water Authority :",
                      style:TextStyle(color: Color(0xFF5EB0FF),
                      fontSize: 18)
                  )
              ),
              SizedBox(height: 30,),

              Container(
                  width: 310,
                  child: Text("Implement public water policy and ensure effective management of Palestinian traditional and non-traditional water sources and work towards access to water security through integrated planning of water sources and detection of alternative sources to achieve balanced management between supply and consumption. Quality control of services provided to consumers",
                      style:TextStyle(color: Colors.white,
                          fontSize: 13.5)
                  )
              ),

              SizedBox(height: 140,),



            ],
          )),


    ));




  }


}