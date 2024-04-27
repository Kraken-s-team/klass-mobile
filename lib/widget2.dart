import 'package:flutter/material.dart';

class Widget2 extends StatefulWidget {
  const Widget2({
    super.key,
  });

  @override
  State<Widget2> createState() => _Widget2State();
}

class _Widget2State extends State<Widget2> {
  bool gat = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          gat = !gat;
        });
      },
      child: Container(
        height: 28,
        width: 95,
        decoration: BoxDecoration(
          border:
              gat ? Border.all(color: Color.fromRGBO(209, 213, 219, 1)) : null,
          color: gat ? Colors.white : Colors.black,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(),
            SizedBox(
                height: 16,
                width: 16,
                child: Image.asset(
                  "assets/images/ball.png",
                  fit: BoxFit.cover,
                )),
            Text(
              "Дизайн",
              style: TextStyle(color: gat?Colors.black:Colors.white,fontSize: 14),
            ),
            SizedBox()
          ],
        ),
      ),
    );
  }
}
