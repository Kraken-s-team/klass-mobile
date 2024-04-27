import 'package:flutter/material.dart';

class Comunity_post extends StatelessWidget {
  const Comunity_post({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      padding: EdgeInsets.all(15),
      alignment: Alignment.centerLeft,
      color: Colors.black12,
      width: MediaQuery.of(context).size.width,
      height: 180,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 37,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 35,
                  height: 35,
                  decoration: ShapeDecoration(
                    color: Color(0xFF3F51B5),
                    shape: OvalBorder(
                      side: BorderSide(width: 2, color: Color(0xFF8BC34A)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(),
                    Text(
                      'Javohir Sirojiddinov',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '12 часов назад',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 9,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 34,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: ShapeDecoration(
                    color: Color(0xFF2196F3),
                    shape: OvalBorder(),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                SizedBox(
                  width: 285,
                  child: Text(
                    'Я недавно начал учить дизайн, нужны советы!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 49,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 204,
                  height: 49,
                  child: Opacity(
                    opacity: 0.50,
                    child: Text(
                      'Мне 19 лет, и подумал начать учиться веб дизайну потому что мне c детства нравится создавать что-то своё и каждый раз когда вижу какой то не...',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 81,
                  height: 49,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1419242902214-272b3f66ee7a?q=80&w=1826&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.favorite_outline,
                    size: 12,
                    color: Color.fromRGBO(17, 24, 39, 1),
                  ),
                  Text(
                    " 256",
                    style: TextStyle(
                        fontSize: 10, color: Color.fromRGBO(17, 24, 39, 1)),
                  ),
                ],
              ),
              SizedBox(
                width: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.comment_outlined,
                    size: 12,
                    color: Color.fromRGBO(17, 24, 39, 1),
                  ),
                  Text(
                    " 568",
                    style: TextStyle(
                        fontSize: 10, color: Color.fromRGBO(17, 24, 39, 1)),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
