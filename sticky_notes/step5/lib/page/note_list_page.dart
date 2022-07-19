import 'package:flutter/material.dart';
import 'package:sticky_notes/data/note.dart';
import 'package:sticky_notes/page/note_edit_page.dart';
import 'package:sticky_notes/page/note_view_page.dart';
import 'package:sticky_notes/providers.dart';

class NoteListPage extends StatefulWidget {
  static const routeName = '/';

  const NoteListPage({Key? key}) : super(key: key);

  @override
  State createState() => _NoteListPageState();
}

class _NoteListPageState extends State<NoteListPage> {
  bool _showAsGrid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sticky Notes'),
        actions: [
          IconButton(
            icon: Icon(_showAsGrid ? Icons.list : Icons.grid_view),
            tooltip: _showAsGrid ? '목록으로 보기' : '격자로 보기',
            onPressed: () {
              setState(() {
                _showAsGrid = !_showAsGrid;
              });
            },
          )
        ],
      ),
      body: FutureBuilder<List<Note>>(
        future: noteManager().listNotes(),
        builder: (context, snap) {
          if (snap.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snap.hasError) {
            return const Center(
              child: Text('오류가 발생했습니다.'),
            );
          }

          final notes = snap.requireData;
          return _buildCards(notes);
        },
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: '새 노트',
        onPressed: () {
          Navigator.pushNamed(context, NoteEditPage.routeName).then((value) {
            setState(() {});
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildCards(List<Note> notes) {
    return _showAsGrid
        ? GridView.builder(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
            itemCount: notes.length,
            itemBuilder: (context, index) => _buildCard(notes[index]),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
            ),
          )
        : ListView.builder(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
            itemCount: notes.length,
            itemBuilder: (context, index) => SizedBox(
              height: 160,
              child: _buildCard(notes[index]),
            ),
          );
  }

  Widget _buildCard(Note note) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          NoteViewPage.routeName,
          arguments: note.id,
        ).then((value) {
          setState(() {});
        });
      },
      child: Card(
        color: note.color,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                note.title.isEmpty ? '(제목 없음)' : note.title,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              Expanded(
                child: Text(
                  note.body,
                  overflow: TextOverflow.fade,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
