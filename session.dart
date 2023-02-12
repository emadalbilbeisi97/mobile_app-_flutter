import 'package:shared_preferences/shared_preferences.dart';

class SessionManager{

  // data  for page loading for loggedin
  void SetUserLoggedIn(String loggedin) async{
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString('loggedin',loggedin);
  }

  // data input full nama for Register
  void setFullName(String fullName) async{
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString('fullname',fullName);
  }

  // data input email for Register
  void Setemail(String email) async{
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString('email',email);
  }

  // data input password for Register
  void SetPassword(String password) async{
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString('password',password);
  }

  /***********************************************/
                    // FOR Page formdatamap
// data City Name
  void  SetCityName(String city_name) async{

    final prefs = await SharedPreferences.getInstance();

    await prefs.setString('city_name',city_name);
  }

  // data Station Name
  void  SetStationName(String station_name) async{

    final prefs = await SharedPreferences.getInstance();

    await prefs.setString('station_name',station_name);
  }
  // data Length
  void  SetLength(double length) async{

    final prefs = await SharedPreferences.getInstance();

    await prefs.setDouble('length',length);
  }

  // data Width
  void  SetWidth(double width) async{

    final prefs = await SharedPreferences.getInstance();

    await prefs.setDouble('width',width);
  }

// data calcolate avarege save
  void setcalcu_avg1(double calculate_avg) async{
    // Obtain shared preferences تعريف للمكتبة حتى يتم تنفيذ الاوامر
    final prefs = await SharedPreferences.getInstance();
    //  نبدأ في الحقل الاول بإسمه وهي عملية تخزين لقيمة الحقل المدخلة من قبل المستخدم
    await prefs.setDouble('calculate_avg',calculate_avg);
  }
}