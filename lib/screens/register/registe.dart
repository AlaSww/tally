import 'package:flutter/material.dart';
import 'package:tally/screens/login/components/loginscreentopimage.dart';
import 'package:tally/screens/register/registerform.dart';
import 'package:tally/screens/register/registerscreentopimage.dart';

class register extends StatelessWidget {
  const register({super.key});

  @override
  Widget build(BuildContext context) {
    final double screeheight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: screeheight*0.1),
        child: Center(
          child: Column(
            children: [
              registerScreenTopImage(),
              SizedBox(height: screeheight*0.05,),
              Registerform()
            ],
          ),
        ),
      ),
    );
  }
}