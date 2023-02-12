import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'home1.dart';
import 'session.dart';


// value radio buton
enum SingingCharacter { Begineer,Intermediate, Good ,Expert }

class myregister0 extends StatefulWidget {
   myregister0({Key? key,}) : super(key: key);

  @override
  State<myregister0> createState() => _myregister0();
}

class _myregister0 extends State<myregister0> {

  // session page data information send form register
  SessionManager sessionManager =  new SessionManager();



  final TextEditingController fullname_controller = TextEditingController();
  final TextEditingController email0_controller = TextEditingController();
  final TextEditingController password0_controller = TextEditingController();
  bool isChecked = false;
  String dropdownValue = 'Employed';

  // event radio
  SingingCharacter? _character = SingingCharacter.Begineer;


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

          title: Text('Create a new account', style: TextStyle(
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
            child :Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[

                SizedBox(height: 30,),

                // full name
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
                      hintText: 'Full Name',
                    ),

                    controller:fullname_controller
                ),
              ),

                SizedBox(height: 20,),

                // email
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

                      controller:email0_controller
                  ),
                ),
                SizedBox(height: 20,),

                // password
                Container(
                  width: 310,
                  padding: EdgeInsets.all(5),
                  child:  TextField(

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
                    controller: password0_controller,
                  ),
                ),
                SizedBox(height: 20,),

                // dropdown
                Container(
                  width: 300,
                  child: DropdownButton<String>(
                    value: dropdownValue,

                    icon: const Icon(Icons.arrow_downward),
                    elevation: 16,
                    style: const TextStyle(color:Colors.black54, fontWeight: FontWeight.bold),
                    underline: Container(
                      height: 2,
                      color: Colors.blueGrey,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: <String>[ 'Employed',
                      'Officer',
                      'Engineer GIS']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child:
                        Text(value),
                      );
                    }).toList(),
                  ),
                ),

                SizedBox(height: 20,),

                // get email notification
                Container(
                  width: 250,
                  child: Row(
                    children: [

                      Text("Get email notification",style:TextStyle(
                          fontWeight:FontWeight.bold,
                          fontSize:14,
                          color: Colors.white
                      )),
                      SizedBox(width:40),
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

                SizedBox(height: 10),

                // Radio button munu
                // radio 1
                Container(
                    width: 300,
                    child:  ListTile(
                      title: const Text('Begineer', style: TextStyle(fontWeight: FontWeight.bold,
                        color: Colors.white, fontSize: 14
                      ),),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.Begineer,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    )
                ),
                // SizedBox(height: 10,),
                // radio 2
                Container(
                  width: 300,
                  child: ListTile(
                    title: const Text('Intermediate', style: TextStyle(fontWeight: FontWeight.bold,
                        color: Colors.white, fontSize: 14
                    ),),
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.Intermediate,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                ),
                  /**********/
                // SizedBox(height: 10,),
                // radio 3
                Container(
                    width: 300,
                    child:  ListTile(
                      title: const Text('Good' ,style: TextStyle(fontWeight: FontWeight.bold,
                          color: Colors.white, fontSize: 14
                      ),),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.Good,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    )
                ),
                // SizedBox(height: 10,),
                // radio 4
                Container(
                  width: 300,
                  child: ListTile(
                    title: const Text('Expert', style: TextStyle(fontWeight: FontWeight.bold,
                        color: Colors.white, fontSize: 14
                    ),),
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.Expert,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                ),

                SizedBox(height: 50),

                // button sign up
                ElevatedButton(
                    onPressed:(){
                      print("full name: "+ fullname_controller.text);
                      print("email: "+ email0_controller.text);
                      print("password : "+ password0_controller.text);
                      print("get email : "+ isChecked.toString());
                      print("dropdown : " + dropdownValue);
                      sessionManager.setFullName(fullname_controller.text);
                      sessionManager.Setemail( email0_controller.text);
                      sessionManager.SetPassword( password0_controller.text);
                      sessionManager.SetUserLoggedIn('LoggedIn');
                      goto_home01();
                    },
                    child: Text("Sign Up"),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF006CC9),
                      onPrimary: Colors.white,
                      minimumSize: Size(300.0, 60.0),
                      textStyle: TextStyle(fontSize: 24),)
                ),

                SizedBox(height: 30),






              ])),

          // This trailing comma makes auto-formatting nicer for build methods.
        )
    );

  }

  void goto_home01(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  home1()),
    );
  }

}
