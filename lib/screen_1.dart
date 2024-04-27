
import 'package:flutter/material.dart';

import 'comment_post.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(margin: EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width,
          height: 50,
            child: TextField(
              decoration: InputDecoration(
                  // prefix: Container(
                  //   alignment: Alignment.bottomLeft,
                  //   child: CircleAvatar(
                  //     radius: 15,
                  //     backgroundImage: NetworkImage(
                  //         "https://media.istockphoto.com/id/1781299198/photo/dark-blue-living-room-interior-with-cozy-leather-armchair.webp?b=1&s=170667a&w=0&k=20&c=Q_EvVf55NqXr-mA1ox8JeFr3gHx0ToRu_vKW9mY9l98="),
                  //   ),
                  // ),
                  hintText: "Qidiruv matni ...",
                  border: OutlineInputBorder()),
            ),
          ),


          Comunity_post()
        ],
      ),
    );
  }
}
