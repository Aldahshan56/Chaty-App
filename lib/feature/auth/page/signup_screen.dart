import 'package:flutter/material.dart';
import '../../../functions/regex.dart';
import '../../chat/page/home_page_chats.dart';
import 'login_screen.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool obscureText = true;
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffb1ccce),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 100,horizontal: 8),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 80,
                    backgroundImage:
                    AssetImage("assets/Images/chatIcon.png"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Welcome",
                    style: TextStyle(color: Color(0xff17305a), fontSize: 18),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    style: const TextStyle(color: Color(0xff17305a)),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      errorStyle: const TextStyle(color: Colors.red),
                      label: const Text(
                        "User Name",
                        style: TextStyle(color: Color(0xff17305a), fontSize: 15),
                      ),
                      prefixIcon: const Icon(
                        Icons.person,
                        size: 35,
                      ),
                      prefixIconColor: const Color(0xff17305a),
                      // enable
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                          const BorderSide(color:Color(0xff5a88ac), width: 4)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                          const BorderSide(color: Color(0xff17305a), width: 4)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                          const BorderSide(color: Colors.red, width: 4)),
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "User Name is required";
                      } else{
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 25,),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    validator: (value){
                      if(value!.isEmpty){
                        return "Email is required";
                      }else if(!validateEmail(value)){
                        return "Email is not valid";
                      }
                      else{
                        return null;
                      }
                    },
                    style: const TextStyle(color: Color(0xff17305a)),
                    decoration: InputDecoration(
                      errorStyle: const TextStyle(color: Colors.red),
                      label: const Text(
                        "Email",
                        style: TextStyle(color: Color(0xff17305a), fontSize: 15),
                      ),
                      prefixIcon: const Icon(
                        Icons.email_rounded,
                        size: 35,
                      ),
                      prefixIconColor: const Color(0xff17305a),
                      // enable
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                          const BorderSide(color: Color(0xff5a88ac), width: 4)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                          const BorderSide(color: Color(0xff17305a), width: 4)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                          const BorderSide(color: Colors.red, width: 4)),
                    ),
                  ),
                  const SizedBox(
                    height: 25 ,
                  ),
                  TextFormField(
                    obscureText: obscureText,
                    validator: (value){
                      if(value!.isEmpty){
                        return "Password is required";
                      }else if(value.length<6){
                        return "password must be at least 6 characters";
                      }else if(!validatePassword(value)){
                        return "Password is not valid";
                      }
                      else{
                        return null;
                      }
                    },
                    keyboardType: TextInputType.visiblePassword,
                    style: const TextStyle(color: Color(0xff17305a)),
                    decoration: InputDecoration(
                      errorStyle: const TextStyle(color: Colors.red),
                      label: const Text(
                        "Password",
                        style: TextStyle(color: Color(0xff17305a), fontSize: 15),
                      ),
                      prefixIcon: const Icon(
                        Icons.lock,
                        size: 35,
                      ),
                      prefixIconColor: const Color(0xff17305a),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                          icon: Icon(
                            (obscureText)
                                ? Icons.visibility
                                : Icons.visibility_off,
                            size: 25,
                          )),
                      suffixIconColor:const Color(0xff17305a),
                      // enable
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                          const BorderSide(color: Color(0xff5a88ac), width: 4)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                          const BorderSide(color: Color(0xff17305a), width: 4)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                          const BorderSide(color: Colors.red, width: 4)),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                        onPressed: () {
                          if(formKey.currentState!.validate()){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=> const HomePageChats()));
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff5a88ac)),
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account?",style: TextStyle(color: Color(0xff5a88ac)),),
                      TextButton(
                        onPressed:(){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=> const Login()));
                        },
                        child:const Text("Login",style: TextStyle(color: Color(0xff17305a),fontWeight: FontWeight.bold),
                        ),
                      )
                    ],

                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
