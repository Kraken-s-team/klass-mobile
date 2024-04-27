// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/post_widget.dart';
import 'package:flutter_application_1/widget2.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const routeame = "/h"; // Fixed the typo here
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(248, 247, 245, 1),
      appBar: AppBar(
          toolbarHeight: 70,
          toolbarOpacity: 1,
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          actions: [
            SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: SearchAnchor(builder:
                      (BuildContext context, SearchController controller) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(2),
                      child: SearchBar(
                        side: MaterialStatePropertyAll(BorderSide(color: Color.fromRGBO(0, 0, 0, 0.5))),
                        elevation: MaterialStatePropertyAll(0),
                        hintText: "InputНайти сообщество",
                        controller: controller,
                        padding: const MaterialStatePropertyAll<EdgeInsets>(
                            EdgeInsets.all(15)),
                        onTap: () {
                          controller.openView();
                        },
                        onChanged: (_) {
                          controller.openView();
                        },
                        leading: const Icon(
                          Icons.search,
                          color: Color.fromRGBO(107, 114, 128, 1),
                        ),
                        trailing: <Widget>[
                          Tooltip(
                            message: 'Settings',
                            child: InkWell(
                              onTap: () {
                                
                              },
                              child: Icon(
                                (Icons.tune_outlined),
                                color: Color.fromRGBO(107, 114, 128, 1),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }, suggestionsBuilder:
                      (BuildContext context, SearchController controller) {
                    return List<ListTile>.generate(5, (int index) {
                      final String item = 'item $index';
                      return ListTile(title: Text(item), onTap: () {});
                    });
                  })),
            ),
          ]),
      body: Column(
        children: [
          Widget2(),
          // ListView.builder(
          //   itemCount: 5,
          //   itemExtent: 5,
          //   padding: EdgeInsets.all(5),
          // itemBuilder: (context, index) {
          //   return
          PostW()
          // })
        ],
      ),
    );
  }
}