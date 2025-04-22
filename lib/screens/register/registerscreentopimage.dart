





import 'package:flutter/material.dart';

class registerScreenTopImage extends StatelessWidget {
  const registerScreenTopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "SIGN/UP",
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
        ),
        const SizedBox(height: 2),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child:Image.asset("assets/login.png",height:250,),
            ),
            const Spacer(),
          ],
        ),
        const SizedBox(height: 02),
      ],
    );
  }
}