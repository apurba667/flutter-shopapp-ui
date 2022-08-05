import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopapp/otpverification.dart';

class Verify extends StatefulWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromARGB(255, 247, 238, 162),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Icon(
              Icons.telegram_rounded,
              color: Colors.deepOrange,
              size: 160,
            ),
            Text(
              "Verify Your Phone Number",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              "Enter Phone Number",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(prefixText: "+880"),
              ),
            ),
            ElevatedButton(
                style: TextButton.styleFrom(
                    primary: Colors.white, backgroundColor: Colors.teal),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => OtpVerification(),
                  ));
                },
                child: Text("Send OTP")),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                style: TextButton.styleFrom(
                    primary: Colors.white, backgroundColor: Colors.teal),
                onPressed: () {},
                child: Text("More")),
          ],
        ),
      ),
    );
  }
}
