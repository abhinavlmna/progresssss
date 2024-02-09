import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class Otpflttr extends StatefulWidget {
  const Otpflttr({super.key});

  @override
  State<Otpflttr> createState() => _OtpflttrState();
}

class _OtpflttrState extends State<Otpflttr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OtpTextField(
          numberOfFields: 5,
          borderColor: Color(0xFF512DA8),
          //set to true to show as box or false to show as dash
          showFieldAsBox: true,
          //runs when a code is typed in
          onCodeChanged: (String code) {
            //handle validation or checks here
          },
          //runs when every textfield is filled
          onSubmit: (String verificationCode){
            showDialog(
                context: context,
                builder: (context){
                  return AlertDialog(
                    title: Text("Verification Code"),
                    content: Text('Code entered is $verificationCode'),
                  );
                }
            );
          }, // end onSubmit
        ),
      ),
    );
  }
}
