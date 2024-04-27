import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/widget.dart';

class LogIn3 extends StatelessWidget {
  LogIn3({super.key});
  static const routeame = "/3";
  final bool change = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(248, 247, 245, 1),
      body: Padding(
        padding: const EdgeInsets.all(43.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 83,
            ),
            Text(
              "Klass",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 44),
            ),
            SizedBox(
              height: 55,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "E-mail",
                        prefixIcon: Icon(Icons.alternate_email_outlined),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Theme.of(context).primaryColor),
                            borderRadius: BorderRadius.circular(6))),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
            SizedBox(height: 40,
              child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Пароль",
                        prefixIcon: Icon(Icons.lock_outlined),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Theme.of(context).primaryColor),
                            borderRadius: BorderRadius.circular(6))),
                  ),
            ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 44,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(HomePage.routeame);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor),
                      child: Text(
                        "ВОЙТИ",
                        style: TextStyle(fontSize: 14),
                      )),
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 44,
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
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).primaryColor),
                          )
                        ],
                      )),
                ),
                SizedBox(
                  height: 16,
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
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).primaryColor),
                          )
                        ],
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 67,
            ),
            Hero(tag: "tag", child: Widget1(change: change,))
          ],
        ),
      ),
    );
  }
}
