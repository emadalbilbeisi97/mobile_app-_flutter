import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'pagemap.dart';
import 'session.dart';


class dataform extends StatefulWidget {
  const dataform({Key? key,}) : super(key: key);


  @override
  State<dataform> createState() => _dataform();
}

class _dataform extends State<dataform> {
  int _counter = 0;
  String dropdownValue = 'GazaNorth';
  bool isChecked = false;
  SessionManager sessionManager =  new SessionManager();
  TextEditingController city_name_controller = new TextEditingController();
  TextEditingController station_name_controller = new TextEditingController();
  TextEditingController length_controller = new TextEditingController();
  TextEditingController width_controller = new TextEditingController();



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
                          onPressed: (){},
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
                          onPressed: (){
                            goto_pagemap();
                          },
                        )
                    ),

                  ],
                ),
              )

        ],),)


        ],

       ),


      body: Center(
         child: SingleChildScrollView(
          scrollDirection:Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

             SizedBox(height: 80),

              // input station name text field 1
              Container(
                width: 310,
                padding: EdgeInsets.all(5),
                child:  TextField(
                  controller: city_name_controller,
                  style: TextStyle(
                      color:Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily:"arial"
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFF306396),
                    hintStyle:TextStyle(color: Colors.white),
                    border: OutlineInputBorder(), hintText: 'City Name',
                  ),

                  // controller:user_name_controller
                ),
              ),

              SizedBox(height: 20),


              // text field 2
              Container(
                width: 310,
                padding: EdgeInsets.all(5),
                child:  TextField(
                  controller: station_name_controller,
                  style: TextStyle(
                      color:Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily:"arial"
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFF306396),
                    hintStyle:TextStyle(color: Colors.white),
                    border: OutlineInputBorder(), hintText: 'Station Name',
                  ),

                  // controller:user_name_controller
                ),
              ),

              SizedBox(height: 20),

              // text field 2 (width , height)
              Container(
                width : 310,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      // Length
                      Container(
                        width: 145,
                        padding: EdgeInsets.all(5),
                        child: TextField(
                          controller: length_controller,
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
                            hintText: 'Length',
                          ),
                          // controller: length_controller,
                        ),
                      ),

                      // Width
                      Container(
                        width: 145,
                        padding: EdgeInsets.all(5),
                        child: TextField(
                          controller: width_controller,
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
                            hintText: 'Width',
                          ),
                          // controller: width_controller,

                        ),
                      ),


                    ]),
              ),

            SizedBox(height:20),

            // checkbox 1 , 2 row
              Container(
                width: 300,
                margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
                child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Container(

                      child: Row(children: [
                        Text("Residential",style:TextStyle(
                            fontWeight:FontWeight.bold,
                            fontSize:14,
                            color: Colors.white
                        )),
                        Checkbox(
                          checkColor: Colors.blueGrey,
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        )
                      ],
                      ),
                    ),
                      SizedBox(width:35),
                    // two selcet checkbox
                    Container(

                      child: Row(children: [
                        Text("Commercial",style:TextStyle(
                            fontWeight:FontWeight.bold,
                            fontSize:14,
                            color: Colors.white
                        )),
                        Checkbox(
                          checkColor: Color(0xFF123151),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        )
                      ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height:40),

              // row two button ( button calculate , button load)
              Container(

                  //margin: EdgeInsets.fromLTRB(80, 0, 0, 0),
                  width:310,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    // calculate button
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(500)), //here
                          // color: Theme.of(context).primaryColor,
                          color:Color(0xFF056EBE),
                          boxShadow: [
                            BoxShadow(
                                color:Color(0xFF056EBE),
                                offset: Offset(-1,2),
                                blurRadius: 10.0)
                          ]

                      ), //BoxDecoration
                      child: ElevatedButton(
                          onPressed:(){
                            calculate_now0();

                          },
                          child:  Icon(
                            Icons.calculate_outlined,
                            color: Colors.white,
                            size: 35,
                          ),//Text("Calculate"),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF006CC9),
                           // onPrimary: Colors.white,
                            minimumSize: Size(50.0, 50.0),
                            textStyle: TextStyle(fontSize: 24),)
                      ),
                    ),

                    SizedBox(width: 60,),

                    // load button
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(500)), //here
                          // color: Theme.of(context).primaryColor,
                          color:Color(0xFF056EBE),
                          boxShadow: [
                            BoxShadow(
                                color:Color(0xFF056EBE),
                                offset: Offset(-1,2),
                                blurRadius: 10.0)
                          ]

                      ), //BoxDecoration
                      child: ElevatedButton(
                          onPressed:(){
                            load_mark_sessoin();
                          },
                          child: Icon(
                            Icons.cloud_download_sharp,
                            color: Colors.white,
                            size: 30,
                          ),
                          //Text("load"),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF006CC9),
                            onPrimary: Colors.white,
                            minimumSize: Size(50.0, 50.0),
                            textStyle: TextStyle(fontSize: 24),)
                      ),
                    ),

                  ],
                  )
              ),
              SizedBox(height:30),

              // button add form data and save data
              Container(

                child: ElevatedButton(
                    onPressed:(){
                      goto_pagemap();
                       save_in_session();

                    },
                    child: Text("Add Station"),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF006CC9),
                      onPrimary: Colors.white,
                      minimumSize: Size(300.0, 55.0),
                      textStyle: TextStyle(fontSize: 24),)
                ),
              ),
                SizedBox(height:30)

            ],
          )
         )
      ),


    );




  }

  void goto_pagemap(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  mymap1()),
    );
  }


  double calculate_now0(){
    double avg = 0;
    // طباعة فقط للفحص من صحة التنفيذ
    print("avg length :" + length_controller.text);
    print("avg width:" + width_controller.text);

    // خاص في الحقول controller وهنا طريقة الجمع عبر استدعاء كل
    avg = (double.parse(length_controller.text) *
        double.parse(width_controller.text)) ;

    // طباعة النتيجة
    print("sum avg = "+avg.toString());
    return avg;
  }


  // save all data function to session
  void save_in_session(){
    sessionManager.SetCityName(city_name_controller.text);
    sessionManager.SetStationName(station_name_controller.text);
    // because for value number not text

    sessionManager.SetLength(double.parse(length_controller.text));
    sessionManager.SetWidth( double.parse(width_controller.text));

    sessionManager.setcalcu_avg1(calculate_now0());

  }

  // load all data function to session
  void  load_mark_sessoin()async{
    final prefs = await SharedPreferences.getInstance();
    print ('City Name :' + prefs.getString("city_name").toString());
    print ('Station Name :' + prefs.getString("station_name").toString());
    print ('Length =' + prefs.getDouble("length").toString());
    print ('Width = ' + prefs.getDouble("width").toString());

  }

}