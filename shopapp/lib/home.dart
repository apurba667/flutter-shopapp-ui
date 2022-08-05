import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopapp/loginpage.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("images/c.jpg"))),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Welcome To \nRegistration Page",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange),
            ),
            Text(
              "Please write the currect information",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal),
            ),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email), hintText: "Email"),
            ),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  hintText: "Password"),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
                child: ElevatedButton(
                    style: TextButton.styleFrom(
                        primary: Colors.white, backgroundColor: Colors.teal),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => LogInPage())));
                    },
                    child: Text("Continue"))),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Already Have an Accounts?",
                  style: TextStyle(color: Colors.teal),
                ),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: ((context) => LogInPage())));
                  },
                  child: Container(
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.deepOrange),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
