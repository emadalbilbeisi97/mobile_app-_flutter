import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'about_waterauthority.dart';
import 'dateformmap.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class mymap1 extends StatefulWidget {
  const mymap1({Key? key,}) : super(key: key);


  @override
  State<mymap1> createState() => _mymap1();
}

class _mymap1 extends State<mymap1> {
  //int _counter = 0;
  int i = 1;
  static const LatLng _center = const LatLng(31.3547, 34.3088);
  List<Marker> map_point_list = [];

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
          height:0,
          child:Text('Enter Desalination Station Data', style: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: 'DancingScript',
              fontSize: 15
          ),),

        ),
        actions: [


          Container(
            child: Column(
              children: [

                Container(

                  child: Row(

                    children: [
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 100, 100, 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(50)), //here
                              // color: Theme.of(context).primaryColor,
                              color:Color(0xFF056EBE),
                              boxShadow: [
                                BoxShadow(
                                    color:Color(0xFF056EBE),
                                    offset: Offset(-1,2),
                                    blurRadius: 20.0)
                              ]

                          ),
                          child:  IconButton(
                            iconSize: 30,
                            icon: Icon(Icons.assignment_rounded),
                            onPressed: (){
                              goto_pagedataform();
                            },
                          )
                      ),
                      // SizedBox(width: 35,),
                      Container(
                          margin: EdgeInsets.fromLTRB(0,100, 100, 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(50)), //here
                              // color: Theme.of(context).primaryColor,
                              color:Color(0xFF056EBE),
                              boxShadow: [
                                BoxShadow(
                                    color:Color(0xFF056EBE),
                                    offset: Offset(-1,2),
                                    blurRadius: 20.0)
                              ]

                          ),
                          child:  IconButton(
                            iconSize: 30,
                            icon: Icon(Icons.map_outlined),
                            onPressed: (){},
                          )
                      ),

                    ],
                  ),
                )

              ],),)


        ],

      ),


      body: Center(

         child: Container(
              height: 460,
           child:GoogleMap(
               myLocationEnabled:true,
             onTap: (LatLng){
                print("latitude point" + LatLng.latitude.toString());
                print("longitude point" + LatLng.longitude.toString());
                add_point(LatLng);
             },
           //  mapType: MapType.,
             initialCameraPosition: CameraPosition(
               target: _center,
               zoom: 11.0,
             ),
               // marker point coordinate on map
               markers: Set<Marker>.of(map_point_list)
           ) )


          ),


    );




  }
  // back to page data form
  void goto_pagedataform(){
    Navigator.push(
      context,
       MaterialPageRoute(builder: (context) =>  dataform()),
     );
   }
  // add point on map
  void add_point(LatLng latLng){

    map_point_list.add(

            Marker(
                icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
                markerId: MarkerId(i.toString()),
                position: LatLng(latLng.latitude, latLng.longitude),
              onTap: (){
                  print("marker point : " + i.toString());
                  goto_formdata();

              }
            )
    );

    setState(() {
      i++;
    });
  }


  void goto_formdata(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  dataform()),
    );
  }
}