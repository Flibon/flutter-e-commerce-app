import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/download.png",
              fit: BoxFit.cover,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Usernname",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {

                        });
                      }
                      ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),

                  Container(
                    width :150,
                    height: 40,
                    color: Colors.deepPurple,
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color:Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(8)
                        ),
                  ),

                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeroute);
                  //   },
                  //   child: Text("Login"),
                  //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
