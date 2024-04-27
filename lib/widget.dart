// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_1/login2_screen.dart';
import 'package:flutter_application_1/login3_screen.dart';

// ignore: must_be_immutable
class Widget1 extends StatefulWidget {
  bool change;

  Widget1({
    Key? key,
    required this.change,
  }) : super(key: key);

  @override
  State<Widget1> createState() => _Widget1();
}

class _Widget1 extends State<Widget1> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              widget.change
                  ? Navigator.of(context).pushNamed(LogIn3.routeame)
                  : Navigator.of(context).pushNamed(LogIn2.routeame);
              widget.change = !widget.change;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(243, 244, 246, 1),
              borderRadius: BorderRadius.circular(7),
            ),
            height: 48,
            width: 244,
            child: AnimatedAlign(
              child: Container(
                height: 48,
                width: widget.change ? 138 : 116,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              curve: Curves.linear,
              alignment:
                  widget.change ? Alignment.centerLeft : Alignment.centerRight,
              duration: Duration(milliseconds: 100),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(17),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 7),
              Text(
                "РЕГИСТРАЦИЯ",
                style: TextStyle(
                  fontSize: 12,
                  color: widget.change
                      ? Colors.white
                      : Theme.of(context).primaryColor,
                ),
              ),
              SizedBox(width: 59),
              Text(
                "ВОЙТИ",
                style: TextStyle(
                  fontSize: 12,
                  color: widget.change
                      ? Theme.of(context).primaryColor
                      : Colors.white,
                ),
              ),
              SizedBox(width: 19),
            ],
          ),
        ),
      ],
    );
  }
}
