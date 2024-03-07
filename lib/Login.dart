
import 'package:a/otpverify.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: Image.asset('assets/ya.png',height: 250,width: 150,)),
          Padding(
            padding: const EdgeInsets.only(right: 110),
            child: Text('Phone Number',style: TextStyle(fontSize: 30),),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text('Enter your moblie number to verify Account'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 30),
            child: Container(
              height: 50,
              width: 316,
              child: TextField(
                   decoration: InputDecoration(
                   border: OutlineInputBorder(),
                     hintText: '+91  |    596977865677'

                  ),
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => otpverify()));
              },
              child: Container(
                height: 50,
                width: 316,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                    color: Colors.redAccent,
                ),
                child: Center(child: Text('Continue',style: TextStyle(color: Colors.white),)),
                ),
            ),
          ),


        ],
      ),

    );
  }
}
