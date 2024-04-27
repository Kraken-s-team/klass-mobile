import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen_1.dart';

// ignore: must_be_immutable
class Comunitiy extends StatefulWidget {
  Comunitiy({super.key});
  static const routname = "/c";

  @override
  State<Comunitiy> createState() => _ComunitiyState();
}

const List<Tab> tabs = <Tab>[
  Tab(
    text: 'Сообщество',
    
  ),
  Tab(text: 'Обучение'),
  Tab(text: 'Участники'),
  Tab(
    text: "Описание",
  )
];

class _ComunitiyState extends State<Comunitiy> {
  bool search = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(248, 247, 245, 1),
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Color.fromARGB(223, 255, 255, 255),
          automaticallyImplyLeading: false,
          toolbarHeight: 75,
          title: search
              ? Row(
                  children: [
                    SizedBox(
                      height: 25,
                      width: 25,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child: Image.network(
                          "https://media.istockphoto.com/id/1781299198/photo/dark-blue-living-room-interior-with-cozy-leather-armchair.webp?b=1&s=170667a&w=0&k=20&c=Q_EvVf55NqXr-mA1ox8JeFr3gHx0ToRu_vKW9mY9l98=",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Design Web",
                      style: TextStyle(color: Colors.black, fontSize: 13),
                    ),
                  ],
                )
              : null,
          actions: [
            search
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        search = !search;
                      });
                    },
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ))
                : SizedBox(
                    width: 400,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SearchBar(
                        leading: IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              search = !search;
                            });
                          },
                        ),
                        hintText: "",
                      ),
                    )),
            Container(
              margin: EdgeInsets.all(15),
              height: 27,
              width: 27,
              alignment: Alignment.center,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 12,
                    backgroundImage: NetworkImage(
                      "https://media.istockphoto.com/id/1781299198/photo/dark-blue-living-room-interior-with-cozy-leather-armchair.webp?b=1&s=170667a&w=0&k=20&c=Q_EvVf55NqXr-mA1ox8JeFr3gHx0ToRu_vKW9mY9l98=",
                    ),
                  ),
                  Container(
                    height: 27,
                    width: 27,
                    alignment: Alignment.topRight,
                    child: CircleAvatar(
                      radius: 6.5,
                      backgroundColor: Colors.red,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        body: TabControllerExampleApp());
  }
}

class TabControllerExampleApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      // The Builder widget is used to have a different BuildContext to access
      // closest DefaultTabController.
      child: Builder(builder: (BuildContext context) {
        final TabController tabController = DefaultTabController.of(context);
        tabController.addListener(() {
          if (!tabController.indexIsChanging) {
            // Your code goes here.
            // To get index of current tab use tabController.index
          }
        });
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            toolbarHeight: 0,
            bottom: TabBar(
              tabs: tabs,
              labelColor: Colors.black,
              indicatorColor: Colors.black,
            ),
          ),
          body: TabBarView(children: [Screen1(),Container(color: Colors.green,)]),
        );
      }),
    );
  }
}
