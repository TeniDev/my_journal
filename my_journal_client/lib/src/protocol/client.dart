/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:my_journal_client/src/protocol/journal.dart' as _i3;
import 'dart:io' as _i4;
import 'protocol.dart' as _i5;

class _EndpointExample extends _i1.EndpointRef {
  _EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

/// Endpoint for the journal table.
class _EndpointJournal extends _i1.EndpointRef {
  _EndpointJournal(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'journal';

  /// Creates a new journal entry.
  _i2.Future<String> createNewJournalEntry(_i3.Journal journal) =>
      caller.callServerEndpoint<String>(
        'journal',
        'createNewJournalEntry',
        {'journal': journal},
      );

  /// Returns all journal entries.
  _i2.Future<List<_i3.Journal>> getAllEntries() =>
      caller.callServerEndpoint<List<_i3.Journal>>(
        'journal',
        'getAllEntries',
        {},
      );

  /// Removes a journal entry.
  _i2.Future<void> removeJournalEntry(_i3.Journal journal) =>
      caller.callServerEndpoint<void>(
        'journal',
        'removeJournalEntry',
        {'journal': journal},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    _i4.SecurityContext? context,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
  }) : super(
          host,
          _i5.Protocol(),
          context: context,
          authenticationKeyManager: authenticationKeyManager,
        ) {
    example = _EndpointExample(this);
    journal = _EndpointJournal(this);
  }

  late final _EndpointExample example;

  late final _EndpointJournal journal;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'example': example,
        'journal': journal,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
