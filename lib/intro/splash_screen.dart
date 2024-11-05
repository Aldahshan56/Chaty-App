import 'package:app_3/feature/auth/page/login_screen.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const Login()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffb1ccce),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 110,
              backgroundColor: Color(0xffb1ccce),
              backgroundImage:
              AssetImage("assets/Images/chatIcon.png"),
            ),
            SizedBox(height: 30,),
            Text("Chaty",style:TextStyle(color: Color(0xff17305a),fontWeight: FontWeight.bold,fontSize: 40),),
            SizedBox(height: 20,),
            Text("Chat with anyone",style:TextStyle(color: Color(0xff5a88ac),fontWeight: FontWeight.bold,fontSize:20 ),),
          ],
        ),
      ),
    );
  }
}
