import 'core/storgecontroller.dart';
import 'package:get/get.dart';
 String server = 'http://192.168.1.104:8000';
class AppLink {
  //StorageController box = StorageController();
 
  static const String server = 'http://192.168.1.104:8000';
// profile
  static const String profile = "$server/api/students/profile";

  //aboutSub
 

//marksub
  static const String marksub =
      "$server/api/students/marks?course_id=3&year=2023";
//marks

  static const String marks = "$server/api/students/totals?year=2023";

//courses
  static const String courses = "$server/api/students/courses";
//exams

  static const String exams = "$server/api/students/examschedule";

//assign
  static const String assign = "$server/api/students/assignments?course_id=1";
//schedule
  static const String schedule = "$server/api/students/schedules";
//year
  static const String year = "$server/api/students/years";

  static const String Token = "4|e4U5kraqbdnf3TbspVN9HiwzIF1eCOnwynLcneYJ";

/////////////////////////////////////////////////////////////////////////////
  //cousepar
  static const String coursepar = "$server/api/guardians/courses?student_id=5";

  //markspar
  static const String markspar =
      "$server/api/guardians/totals?student_id=91&year=2023";

  //aboutsubpar
  static const String aboutsubpar =
      "$server/api/guardians/courses/3?student_id=5";
  //assignpar
  static const String assignpar =
      "$server/api/guardians/assignments?student_id=5&course_id=4";

  //marksubpar
  static const String marksubpar =
      "$server/api/guardians/marks?student_id=91&course_id=5&year=2023";

 static const String child =
      "$server/api/guardians/children";



      static const String yearpar = "$server /api/guardians/years?student_id=91";


      static const String examspar = "$server/api/guardians/examschedule?student_id=5";
    
}
