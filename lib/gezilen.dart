import 'package:flutter/material.dart';
import 'package:notepad/colornotes.dart';
import 'package:notepad/notelist.dart';
import 'package:notepad/notlar.dart';

class Gezilen extends StatefulWidget {
  const Gezilen({Key? key}) : super(key: key);

  @override
  _GezilenState createState() => _GezilenState();
}

class _GezilenState extends State<Gezilen> with SingleTickerProviderStateMixin {
  late TabController televizyonKontrolcusu;
  @override
  void initState() {
    super.initState();
    televizyonKontrolcusu = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final double genislik = MediaQuery.of(context).size.width;
    final double yukseklik = MediaQuery.of(context).size.height;
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 10,
          bottom: const TabBar(
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                text: "Discovered Places",
                icon: Icon(Icons.favorite),
              ),
              Tab(
                text: "Memories",
                icon: Icon(Icons.photo_library),
              ),
            ],
          ),
        ),
        // ignore: sized_box_for_whitespace
        body: Container(
          height: yukseklik,
          child: TabBarView(
            children: <Widget>[
              // ignore: prefer_const_constructors, avoid_unnecessary_containers
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/need.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Notlar(),
              ),
              // ignore: prefer_const_constructors
              Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/need.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Notlar())
              // ignore: prefer_const_constructors
            ],
          ),
        ),
      ),
    );
  }

  Widget? yapilacaklar() {
    return Container(
      color: Colors.red,
    );
  }
}
