import 'package:flutter/material.dart';
import 'package:tally/screens/home.dart';
import 'package:tally/screens/login/components/loginform.dart';
import 'package:tally/screens/login/loginpage.dart';

class Registerform extends StatelessWidget {
  const Registerform({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenwidth = MediaQuery.sizeOf(context).width;
    return Form(child: Column(
      spacing: 30,
      children: [
        SizedBox(
          width: screenwidth*0.85,
          child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              onSaved: (email) {},
              decoration: InputDecoration(
                labelText: "Email/Username"
              ),
            ),
        ),
          SizedBox(
            width: screenwidth*0.85,
            child: TextFormField(
                textInputAction: TextInputAction.done,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Password",
                  suffixIcon: Icon(Icons.visibility),
                ),
              ),
          ),
          Padding(
            padding:EdgeInsets.only(left: screenwidth*0.58),
            child: Text("forgot password?"),
            ),
          GestureDetector(
             onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));},
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(10)
              ),
              alignment: Alignment.center,
              width: screenwidth*0.7,
              child: Text(
                "REGISTER",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenwidth*0.06
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account?"),
              GestureDetector(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Loginpage()));},
                child: Text(
                  " login now".toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          )
      ],
    ));
  }
}