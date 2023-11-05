/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Journal extends _i1.TableRow {
  Journal({
    int? id,
    required this.title,
    required this.body,
    required this.date,
  }) : super(id);

  factory Journal.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Journal(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      title:
          serializationManager.deserialize<String>(jsonSerialization['title']),
      body: serializationManager.deserialize<String>(jsonSerialization['body']),
      date:
          serializationManager.deserialize<DateTime>(jsonSerialization['date']),
    );
  }

  static final t = JournalTable();

  String title;

  String body;

  DateTime date;

  @override
  String get tableName => 'journal';

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'body': body,
      'date': date,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'title': title,
      'body': body,
      'date': date,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'title': title,
      'body': body,
      'date': date,
    };
  }

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'title':
        title = value;
        return;
      case 'body':
        body = value;
        return;
      case 'date':
        date = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Journal>> find(
    _i1.Session session, {
    JournalExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Journal>(
      where: where != null ? where(Journal.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Journal?> findSingleRow(
    _i1.Session session, {
    JournalExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Journal>(
      where: where != null ? where(Journal.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Journal?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Journal>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required JournalExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Journal>(
      where: where(Journal.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Journal row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Journal row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Journal row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    JournalExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Journal>(
      where: where != null ? where(Journal.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef JournalExpressionBuilder = _i1.Expression Function(JournalTable);

class JournalTable extends _i1.Table {
  JournalTable() : super(tableName: 'journal');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final title = _i1.ColumnString('title');

  final body = _i1.ColumnString('body');

  final date = _i1.ColumnDateTime('date');

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        body,
        date,
      ];
}

@Deprecated('Use JournalTable.t instead.')
JournalTable tJournal = JournalTable();
