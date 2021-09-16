import 'package:flutter/material.dart';
import 'package:notepad/colornotes.dart';
import 'package:notepad/notelist.dart';
import 'package:notepad/notespagefood.dart';
import 'package:notepad/notlar.dart';
import 'package:notepad/screens/todoscreen.dart';

class Gezilecek extends StatefulWidget {
  Gezilecek({Key? key}) : super(key: key);

  @override
  _GezilecekState createState() => _GezilecekState();
}

class _GezilecekState extends State<Gezilecek>
    with SingleTickerProviderStateMixin {
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
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 10,
          bottom: const TabBar(
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                text: "Needs",
                icon: Icon(Icons.shop),
              ),
              Tab(
                text: "To Do List",
                icon: Icon(Icons.check_circle_outline),
              ),
              Tab(
                text: "Places To See",
                icon: Icon(Icons.remove_red_eye_sharp),
              ),
              Tab(
                text: "Foods",
                icon: Icon(Icons.fastfood_outlined),
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
                color: Colors.red.shade100,
                child: NotesPage(),
              ),
              // ignore: prefer_const_constructors
              Container(color: Colors.red, child: HomePage()),
              // ignore: prefer_const_constructors
              Container(
                color: Colors.red.shade100,
                child: Notes(),
              ),

              Container(
                color: Colors.red.shade100,
                child: const NotesYemek(),
              ),
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
