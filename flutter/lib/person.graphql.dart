import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$FetchPerson {
  factory Variables$Query$FetchPerson({required String id}) =>
      Variables$Query$FetchPerson._({
        r'id': id,
      });

  Variables$Query$FetchPerson._(this._$data);

  factory Variables$Query$FetchPerson.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$FetchPerson._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$FetchPerson<Variables$Query$FetchPerson>
      get copyWith => CopyWith$Variables$Query$FetchPerson(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FetchPerson) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$FetchPerson<TRes> {
  factory CopyWith$Variables$Query$FetchPerson(
    Variables$Query$FetchPerson instance,
    TRes Function(Variables$Query$FetchPerson) then,
  ) = _CopyWithImpl$Variables$Query$FetchPerson;

  factory CopyWith$Variables$Query$FetchPerson.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FetchPerson;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$FetchPerson<TRes>
    implements CopyWith$Variables$Query$FetchPerson<TRes> {
  _CopyWithImpl$Variables$Query$FetchPerson(
    this._instance,
    this._then,
  );

  final Variables$Query$FetchPerson _instance;

  final TRes Function(Variables$Query$FetchPerson) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$FetchPerson._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$FetchPerson<TRes>
    implements CopyWith$Variables$Query$FetchPerson<TRes> {
  _CopyWithStubImpl$Variables$Query$FetchPerson(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$FetchPerson {
  Query$FetchPerson({
    this.fetch_person,
    required this.$__typename,
  });

  factory Query$FetchPerson.fromJson(Map<String, dynamic> json) {
    final l$fetch_person = json['fetch_person'];
    final l$$__typename = json['__typename'];
    return Query$FetchPerson(
      fetch_person: l$fetch_person == null
          ? null
          : Query$FetchPerson$fetch_person.fromJson(
              (l$fetch_person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchPerson$fetch_person? fetch_person;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$fetch_person = fetch_person;
    _resultData['fetch_person'] = l$fetch_person?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$fetch_person = fetch_person;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$fetch_person,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchPerson) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$fetch_person = fetch_person;
    final lOther$fetch_person = other.fetch_person;
    if (l$fetch_person != lOther$fetch_person) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchPerson on Query$FetchPerson {
  CopyWith$Query$FetchPerson<Query$FetchPerson> get copyWith =>
      CopyWith$Query$FetchPerson(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchPerson<TRes> {
  factory CopyWith$Query$FetchPerson(
    Query$FetchPerson instance,
    TRes Function(Query$FetchPerson) then,
  ) = _CopyWithImpl$Query$FetchPerson;

  factory CopyWith$Query$FetchPerson.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchPerson;

  TRes call({
    Query$FetchPerson$fetch_person? fetch_person,
    String? $__typename,
  });
  CopyWith$Query$FetchPerson$fetch_person<TRes> get fetch_person;
}

class _CopyWithImpl$Query$FetchPerson<TRes>
    implements CopyWith$Query$FetchPerson<TRes> {
  _CopyWithImpl$Query$FetchPerson(
    this._instance,
    this._then,
  );

  final Query$FetchPerson _instance;

  final TRes Function(Query$FetchPerson) _then;

  static const _undefined = {};

  TRes call({
    Object? fetch_person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchPerson(
        fetch_person: fetch_person == _undefined
            ? _instance.fetch_person
            : (fetch_person as Query$FetchPerson$fetch_person?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FetchPerson$fetch_person<TRes> get fetch_person {
    final local$fetch_person = _instance.fetch_person;
    return local$fetch_person == null
        ? CopyWith$Query$FetchPerson$fetch_person.stub(_then(_instance))
        : CopyWith$Query$FetchPerson$fetch_person(
            local$fetch_person, (e) => call(fetch_person: e));
  }
}

class _CopyWithStubImpl$Query$FetchPerson<TRes>
    implements CopyWith$Query$FetchPerson<TRes> {
  _CopyWithStubImpl$Query$FetchPerson(this._res);

  TRes _res;

  call({
    Query$FetchPerson$fetch_person? fetch_person,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FetchPerson$fetch_person<TRes> get fetch_person =>
      CopyWith$Query$FetchPerson$fetch_person.stub(_res);
}

const documentNodeQueryFetchPerson = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchPerson'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'fetch_person'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'full_name'),
            alias: NameNode(value: 'name'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$FetchPerson _parserFn$Query$FetchPerson(Map<String, dynamic> data) =>
    Query$FetchPerson.fromJson(data);

class Options$Query$FetchPerson
    extends graphql.QueryOptions<Query$FetchPerson> {
  Options$Query$FetchPerson({
    String? operationName,
    required Variables$Query$FetchPerson variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryFetchPerson,
          parserFn: _parserFn$Query$FetchPerson,
        );
}

class WatchOptions$Query$FetchPerson
    extends graphql.WatchQueryOptions<Query$FetchPerson> {
  WatchOptions$Query$FetchPerson({
    String? operationName,
    required Variables$Query$FetchPerson variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryFetchPerson,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchPerson,
        );
}

class FetchMoreOptions$Query$FetchPerson extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchPerson({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$FetchPerson variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryFetchPerson,
        );
}

extension ClientExtension$Query$FetchPerson on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchPerson>> query$FetchPerson(
          Options$Query$FetchPerson options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$FetchPerson> watchQuery$FetchPerson(
          WatchOptions$Query$FetchPerson options) =>
      this.watchQuery(options);
  void writeQuery$FetchPerson({
    required Query$FetchPerson data,
    required Variables$Query$FetchPerson variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryFetchPerson),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchPerson? readQuery$FetchPerson({
    required Variables$Query$FetchPerson variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryFetchPerson),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchPerson.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FetchPerson> useQuery$FetchPerson(
        Options$Query$FetchPerson options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$FetchPerson> useWatchQuery$FetchPerson(
        WatchOptions$Query$FetchPerson options) =>
    graphql_flutter.useWatchQuery(options);

class Query$FetchPerson$Widget
    extends graphql_flutter.Query<Query$FetchPerson> {
  Query$FetchPerson$Widget({
    widgets.Key? key,
    required Options$Query$FetchPerson options,
    required graphql_flutter.QueryBuilder<Query$FetchPerson> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$FetchPerson$fetch_person {
  Query$FetchPerson$fetch_person({
    required this.name,
    required this.$__typename,
  });

  factory Query$FetchPerson$fetch_person.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$FetchPerson$fetch_person(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchPerson$fetch_person) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchPerson$fetch_person
    on Query$FetchPerson$fetch_person {
  CopyWith$Query$FetchPerson$fetch_person<Query$FetchPerson$fetch_person>
      get copyWith => CopyWith$Query$FetchPerson$fetch_person(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchPerson$fetch_person<TRes> {
  factory CopyWith$Query$FetchPerson$fetch_person(
    Query$FetchPerson$fetch_person instance,
    TRes Function(Query$FetchPerson$fetch_person) then,
  ) = _CopyWithImpl$Query$FetchPerson$fetch_person;

  factory CopyWith$Query$FetchPerson$fetch_person.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchPerson$fetch_person;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchPerson$fetch_person<TRes>
    implements CopyWith$Query$FetchPerson$fetch_person<TRes> {
  _CopyWithImpl$Query$FetchPerson$fetch_person(
    this._instance,
    this._then,
  );

  final Query$FetchPerson$fetch_person _instance;

  final TRes Function(Query$FetchPerson$fetch_person) _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchPerson$fetch_person(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchPerson$fetch_person<TRes>
    implements CopyWith$Query$FetchPerson$fetch_person<TRes> {
  _CopyWithStubImpl$Query$FetchPerson$fetch_person(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}
