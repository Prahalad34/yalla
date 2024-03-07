import 'package:a/Home.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
class otpverify extends StatefulWidget {
  const otpverify({super.key});

  @override
  State<otpverify> createState() => _otpverifyState();
}

class _otpverifyState extends State<otpverify> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {

    var PinCodeFieldShape;
    return Scaffold(
      body: SingleChildScrollView(
      child:Column(
        children: [
          Center(child: Image.asset('assets/ya.png',height: 250,width: 150,)),
          Text('OTP Verification',style: TextStyle(fontSize: 30),),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text('we send you the verification code on'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 60),
            child: Text('+91 | 895976994',style: TextStyle(fontSize: 20),),
          ),
    Center(
    child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: PinCodeTextField(
    controller: controller,
    maxLength: 4, // Set the length of the OTP
    autofocus: true,
    wrapAlignment: WrapAlignment.spaceAround,
    pinBoxWidth: 50,
    pinBoxHeight: 50,
    pinBoxRadius: 10,
    pinBoxBorderWidth: 2,
    onDone: (text) {
    // This callback is triggered when the user enters the complete OTP
    // print("OTP Entered: $text");
    },
    ),
    ),
    ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
              },
              child: Container(
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.redAccent
                ),
                child: Center(child: Text('Verify',style: TextStyle(color: Colors.white),)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text.rich(
              TextSpan(
              children: [
                TextSpan(
                  text: 'Dont receive OTP?',
              ),
                 TextSpan(
                  text: 'Resend',
                 style: TextStyle(color:Colors.redAccent )
                 )
                  ]
            ),
          )





          )
        ]
      )
      )
    );
  }
}



