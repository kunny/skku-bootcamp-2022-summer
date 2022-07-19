import 'package:flutter/material.dart';
import 'package:sticky_notes/page/note_edit_page.dart';
import 'package:sticky_notes/page/note_list_page.dart';
import 'package:sticky_notes/page/note_view_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Sticky Notes',
        theme: ThemeData(
          primarySwatch: Colors.teal,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: NoteListPage.routeName,
        routes: {
          NoteListPage.routeName: (context) => const NoteListPage(),
          NoteEditPage.routeName: (context) {
            final args = ModalRoute.of(context)!.settings.arguments;
            final index = args != null ? args as int : null;
            return NoteEditPage(index);
          },
          NoteViewPage.routeName: (context) {
            final index = ModalRoute.of(context)!.settings.arguments as int;
            return NoteViewPage(index);
          },
        });
  }
}
