import 'package:serverpod/serverpod.dart';

import '../generated/journal.dart';

/// Endpoint for the journal table.
class JournalEndpoint extends Endpoint {
  /// Creates a new journal entry.
  Future<String> createNewJournalEntry(Session session, Journal journal) async {
    try {
      await Journal.insert(session, journal);
      session.log('Journal has been stored.');
      return 'Journal has been stored. {$journal}';
    } catch (e) {
      session.log('Journal has been stored.', exception: e);
      return 'Error: $e';
    }
  }

  /// Returns all journal entries.
  Future<List<Journal>> getAllEntries(Session session) async {
    try {
      final entries = await Journal.find(session, orderBy: ColumnInt('id'));
      session.log('Journal entries have been retrieved.');
      return entries;
    } catch (e) {
      session.log('Journal entries have been retrieved.', exception: e);
      return [];
    }
  }

  /// Removes a journal entry.
  Future<void> removeJournalEntry(Session session, Journal journal) async {
    try {
      await Journal.deleteRow(session, journal);
      session.log('Journal entry has been removed.');
    } catch (e) {
      session.log('Journal entry has been removed.', exception: e);
    }
  }
}
