import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import'screens/form_page.dart';
void main(){
	
//#####################################################################################################

 // ይህ መስመር ከታች ስላለው ኮድ መሥራት እርግጠኛ ያደርጋል
  WidgetsFlutterBinding.ensureInitialized(); 
  
  // የStatus Bar ቀለሙን እዚህ ጋር እናስተካክላለን
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.blue, // ፍጹም ጥራት ላለው እይታ (Transparent) ማድረግ ይመረጣል
    statusBarIconBrightness: Brightness.dark, // የሰዓት እና ባትሪ ምልክቶቹ ጥቁር እንዲሆኑ (ነጭ background ከሆነ)
  ));

//#####################################################################################################
	 runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
	debugShowCheckedModeBanner:false,
      home:Scaffold(
backgroundColor:Colors.white,
	  appBar:AppBar(
	  title:const Text("App"),
	  backgroundColor:Colors.blue,
	  ),
	  
	  body:Column (
	  
	  children :[
	  
	 SizedBox(height:15),
     Row(
	 mainAxisAlignment:MainAxisAlignment.center,
	 children :[
SizedBox(height:15),

Container(
width:150,
height:150,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(100),

gradient: RadialGradient(
colors: [Colors.yellow, Colors.green,Colors.red],
center: Alignment.center,
radius: 0.8,
),
),
),
],
),


	 ],
	 ), 
	  
	  
   ),
   );
  }
 }