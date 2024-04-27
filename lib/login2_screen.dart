import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/widget.dart';

// ignore: must_be_immutable
class LogIn2 extends StatelessWidget {
  LogIn2({super.key});
  static const routeame = "/2";
  bool change = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(248, 247, 245, 1),
      body: Center(
          child: Padding(
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
                        prefixIcon: Icon(Icons.person_outline),
                        labelText: "Полное Имя",
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Theme.of(context).primaryColor),
                            borderRadius: BorderRadius.circular(6))),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "E-mail",
                        prefixIcon: Icon(Icons.alternate_email_outlined),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor),
                            borderRadius: BorderRadius.circular(6))),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 40,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Пароль",
                        prefixIcon: Icon(Icons.lock_outlined),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor),
                            borderRadius: BorderRadius.circular(6))),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 40,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Повторите пароль",
                        prefixIcon: Icon(Icons.lock_outlined),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor),
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
                        "ЗАРЕГИСТРИРОВАТЬСЯ",
                        style: TextStyle(fontSize: 14),
                      )),
                )
              ],
            ),
            SizedBox(
              height: 67,
            ),
            Hero(
                tag: "tag",
                child: Widget1(
                  change: change,
                ))
          ],
        ),
      )),
    );
  }
}
