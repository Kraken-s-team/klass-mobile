import 'package:flutter/material.dart';
import 'package:flutter_application_1/comunitiy.dart';

class PostW extends StatelessWidget {
  const PostW({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: InkWell(
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: () {
          Navigator.of(context).pushNamed(Comunitiy.routname);
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.5))
          ),
          margin: EdgeInsets.all(17),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(7), topRight: Radius.circular(7)),
                child: Image.network(
                  "https://media.istockphoto.com/id/1781299198/photo/dark-blue-living-room-interior-with-cozy-leather-armchair.webp?b=1&s=170667a&w=0&k=20&c=Q_EvVf55NqXr-mA1ox8JeFr3gHx0ToRu_vKW9mY9l98=",
                  fit: BoxFit.cover,
                  height: 113,
                  width: 280,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(7),
                    bottomRight: Radius.circular(7)),
                child: Container(
                  color: Colors.white,
                  height: 88,
                  width: 280,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(2),
                            child: Image.network(
                              "https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGNoYWlyfGVufDB8fDB8fHww",
                              fit: BoxFit.cover,
                              height: 25,
                              width: 25,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Design Web",
                            style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Text(
                        "Идеи дизайна интерьера, советы профи, вдохновение для вашего дома! Присоединяйтесь!",
                        style: TextStyle(
                            fontSize: 9, color: Color.fromRGBO(0, 0, 0, 0.5)),
                      ),
                      Row(
                        children: [
                          Text("Публичный • ",style: TextStyle(fontSize: 9),),
                          Text("10.5К участников • ",style: TextStyle(fontSize: 9),),
                          Text("Бесплатный",style: TextStyle(fontSize: 9),)
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
