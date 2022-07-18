import 'package:sticky_notes/service/analytics_service.dart';
import 'package:sticky_notes/service/note_service.dart';

AnalyticsService? _analyticsService;

NoteService? _noteService;

AnalyticsService analyticsService() {
  if (_analyticsService == null) {
    _analyticsService = AnalyticsService();
  }
  return _analyticsService!;
}

NoteService noteManager() {
  if (_noteService == null) {
    _noteService = NoteService();
  }
  return _noteService!;
}
