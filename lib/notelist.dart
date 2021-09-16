import 'package:flutter/material.dart';
import 'package:notepad/screens/note_view_screen.dart';
import 'package:provider/provider.dart';

import 'helper/note_provider.dart';
import 'screens/note_edit_screen.dart';
import 'screens/note_list_screen.dart';

void main() {
  runApp(Notes());
}

class Notes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: NoteProvider(),
      child: MaterialApp(
        title: "Flutter Notes",
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => NoteListScreen(),
          NoteViewScreen.route: (context) => NoteViewScreen(),
          NoteEditScreen.route: (context) => NoteEditScreen(),
        },
      ),
    );
  }
}
