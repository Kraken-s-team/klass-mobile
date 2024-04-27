import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/login2_screen.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});
  static const routeame = "/1";
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(248, 247, 245, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Klass",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 44),
          ),
          Image.asset(
            "assets/images/students.png",
            height: 221,
            width: 221,
          ),
          Container(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 40,
                  width: 205,
                  child: ElevatedButton.icon(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Theme.of(context).primaryColor),
                      onPressed: () {
                        Navigator.of(context).push(CupertinoPageRoute(builder: (context) => LogIn2(),));
                      },
                      icon: Icon(Icons.email_outlined, size: 16),
                      label: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Войти с Email",
                          style: TextStyle(fontSize: 14),
                        ),
                      )),
                ),
                SizedBox(
                  height: 40,
                  width: 205,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(color: Colors.black),
                          backgroundColor: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/google.png"),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Войти с Google",
                            style: TextStyle(fontSize: 14, color: Theme.of(context).primaryColor),
                          )
                        ],
                      )),
                ),
                SizedBox(
                  height: 40,
                  width: 205,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(color: Colors.black),
                          backgroundColor: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/facebook.png"),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Войти с Facebook",
                            style: TextStyle(fontSize: 14, color: Theme.of(context).primaryColor),
                          )
                        ],
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Впервые в SkyPro? ",
                      style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text("Зарегистрироваться ",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold)))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
