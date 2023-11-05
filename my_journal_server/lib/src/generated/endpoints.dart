/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/example_endpoint.dart' as _i2;
import '../endpoints/journal_endpoint.dart' as _i3;
import 'package:my_journal_server/src/generated/journal.dart' as _i4;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'example': _i2.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'journal': _i3.JournalEndpoint()
        ..initialize(
          server,
          'journal',
          null,
        ),
    };
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i2.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['journal'] = _i1.EndpointConnector(
      name: 'journal',
      endpoint: endpoints['journal']!,
      methodConnectors: {
        'createNewJournalEntry': _i1.MethodConnector(
          name: 'createNewJournalEntry',
          params: {
            'journal': _i1.ParameterDescription(
              name: 'journal',
              type: _i1.getType<_i4.Journal>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['journal'] as _i3.JournalEndpoint)
                  .createNewJournalEntry(
            session,
            params['journal'],
          ),
        ),
        'getAllEntries': _i1.MethodConnector(
          name: 'getAllEntries',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['journal'] as _i3.JournalEndpoint)
                  .getAllEntries(session),
        ),
        'removeJournalEntry': _i1.MethodConnector(
          name: 'removeJournalEntry',
          params: {
            'journal': _i1.ParameterDescription(
              name: 'journal',
              type: _i1.getType<_i4.Journal>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['journal'] as _i3.JournalEndpoint).removeJournalEntry(
            session,
            params['journal'],
          ),
        ),
      },
    );
  }
}
