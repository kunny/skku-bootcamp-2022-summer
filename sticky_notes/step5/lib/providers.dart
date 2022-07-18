import 'package:sticky_notes/service/note_service.dart';

NoteService? _noteService;

NoteService noteManager() {
  if (_noteService == null) {
    _noteService = NoteService();
  }
  return _noteService!;
}
