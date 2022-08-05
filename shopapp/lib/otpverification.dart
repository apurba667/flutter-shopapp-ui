import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopapp/slashscreen.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromARGB(255, 253, 247, 191),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Icon(
              Icons.message_rounded,
              color: Colors.deepOrange,
              size: 170,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "OTP VERIFICATION",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              "Please Enter OTP",
              style: TextStyle(color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(hintText: "Enter Your OTP"),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            ElevatedButton(
                style: TextButton.styleFrom(
                    primary: Colors.white, backgroundColor: Colors.teal),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SplashScreenDemo(),
                  ));
                },
                child: Text("Verify")),
          ],
        ),
      ),
    );
  }
}
