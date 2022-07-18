import 'package:firebase_analytics/firebase_analytics.dart';

class AnalyticsService {
  void addNote() {
    FirebaseAnalytics.instance.logEvent(name: 'add_note');
  }

  void changeViewMode(bool isGridMode) {
    FirebaseAnalytics.instance.logEvent(
      name: 'change_view_mode',
      parameters: {
        'mode': isGridMode ? 'grid' : 'list',
      },
    );
  }

  void deleteNote() {
    FirebaseAnalytics.instance.logEvent(name: 'delete_note');
  }

  void updateNote() {
    FirebaseAnalytics.instance.logEvent(name: 'update_note');
  }

  void viewNote() {
    FirebaseAnalytics.instance.logEvent(name: 'view_note');
  }
}
