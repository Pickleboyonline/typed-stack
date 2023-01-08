import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GreetMe {
  factory Variables$Query$GreetMe({required String name}) =>
      Variables$Query$GreetMe._({
        r'name': name,
      });

  Variables$Query$GreetMe._(this._$data);

  factory Variables$Query$GreetMe.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    return Variables$Query$GreetMe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    return result$data;
  }

  CopyWith$Variables$Query$GreetMe<Variables$Query$GreetMe> get copyWith =>
      CopyWith$Variables$Query$GreetMe(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GreetMe) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }
}

abstract class CopyWith$Variables$Query$GreetMe<TRes> {
  factory CopyWith$Variables$Query$GreetMe(
    Variables$Query$GreetMe instance,
    TRes Function(Variables$Query$GreetMe) then,
  ) = _CopyWithImpl$Variables$Query$GreetMe;

  factory CopyWith$Variables$Query$GreetMe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GreetMe;

  TRes call({String? name});
}

class _CopyWithImpl$Variables$Query$GreetMe<TRes>
    implements CopyWith$Variables$Query$GreetMe<TRes> {
  _CopyWithImpl$Variables$Query$GreetMe(
    this._instance,
    this._then,
  );

  final Variables$Query$GreetMe _instance;

  final TRes Function(Variables$Query$GreetMe) _then;

  static const _undefined = {};

  TRes call({Object? name = _undefined}) => _then(Variables$Query$GreetMe._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GreetMe<TRes>
    implements CopyWith$Variables$Query$GreetMe<TRes> {
  _CopyWithStubImpl$Variables$Query$GreetMe(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Query$GreetMe {
  Query$GreetMe({
    required this.greetMe,
    required this.$__typename,
  });

  factory Query$GreetMe.fromJson(Map<String, dynamic> json) {
    final l$greetMe = json['greetMe'];
    final l$$__typename = json['__typename'];
    return Query$GreetMe(
      greetMe:
          Query$GreetMe$greetMe.fromJson((l$greetMe as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GreetMe$greetMe greetMe;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$greetMe = greetMe;
    _resultData['greetMe'] = l$greetMe.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$greetMe = greetMe;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$greetMe,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GreetMe) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$greetMe = greetMe;
    final lOther$greetMe = other.greetMe;
    if (l$greetMe != lOther$greetMe) {
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

extension UtilityExtension$Query$GreetMe on Query$GreetMe {
  CopyWith$Query$GreetMe<Query$GreetMe> get copyWith => CopyWith$Query$GreetMe(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GreetMe<TRes> {
  factory CopyWith$Query$GreetMe(
    Query$GreetMe instance,
    TRes Function(Query$GreetMe) then,
  ) = _CopyWithImpl$Query$GreetMe;

  factory CopyWith$Query$GreetMe.stub(TRes res) =
      _CopyWithStubImpl$Query$GreetMe;

  TRes call({
    Query$GreetMe$greetMe? greetMe,
    String? $__typename,
  });
  CopyWith$Query$GreetMe$greetMe<TRes> get greetMe;
}

class _CopyWithImpl$Query$GreetMe<TRes>
    implements CopyWith$Query$GreetMe<TRes> {
  _CopyWithImpl$Query$GreetMe(
    this._instance,
    this._then,
  );

  final Query$GreetMe _instance;

  final TRes Function(Query$GreetMe) _then;

  static const _undefined = {};

  TRes call({
    Object? greetMe = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GreetMe(
        greetMe: greetMe == _undefined || greetMe == null
            ? _instance.greetMe
            : (greetMe as Query$GreetMe$greetMe),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GreetMe$greetMe<TRes> get greetMe {
    final local$greetMe = _instance.greetMe;
    return CopyWith$Query$GreetMe$greetMe(
        local$greetMe, (e) => call(greetMe: e));
  }
}

class _CopyWithStubImpl$Query$GreetMe<TRes>
    implements CopyWith$Query$GreetMe<TRes> {
  _CopyWithStubImpl$Query$GreetMe(this._res);

  TRes _res;

  call({
    Query$GreetMe$greetMe? greetMe,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GreetMe$greetMe<TRes> get greetMe =>
      CopyWith$Query$GreetMe$greetMe.stub(_res);
}

const documentNodeQueryGreetMe = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GreetMe'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'greetMe'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'name')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'message'),
            alias: null,
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
Query$GreetMe _parserFn$Query$GreetMe(Map<String, dynamic> data) =>
    Query$GreetMe.fromJson(data);

class Options$Query$GreetMe extends graphql.QueryOptions<Query$GreetMe> {
  Options$Query$GreetMe({
    String? operationName,
    required Variables$Query$GreetMe variables,
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
          document: documentNodeQueryGreetMe,
          parserFn: _parserFn$Query$GreetMe,
        );
}

class WatchOptions$Query$GreetMe
    extends graphql.WatchQueryOptions<Query$GreetMe> {
  WatchOptions$Query$GreetMe({
    String? operationName,
    required Variables$Query$GreetMe variables,
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
          document: documentNodeQueryGreetMe,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GreetMe,
        );
}

class FetchMoreOptions$Query$GreetMe extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GreetMe({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GreetMe variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGreetMe,
        );
}

extension ClientExtension$Query$GreetMe on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GreetMe>> query$GreetMe(
          Options$Query$GreetMe options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GreetMe> watchQuery$GreetMe(
          WatchOptions$Query$GreetMe options) =>
      this.watchQuery(options);
  void writeQuery$GreetMe({
    required Query$GreetMe data,
    required Variables$Query$GreetMe variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGreetMe),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GreetMe? readQuery$GreetMe({
    required Variables$Query$GreetMe variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGreetMe),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GreetMe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GreetMe> useQuery$GreetMe(
        Options$Query$GreetMe options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GreetMe> useWatchQuery$GreetMe(
        WatchOptions$Query$GreetMe options) =>
    graphql_flutter.useWatchQuery(options);

class Query$GreetMe$Widget extends graphql_flutter.Query<Query$GreetMe> {
  Query$GreetMe$Widget({
    widgets.Key? key,
    required Options$Query$GreetMe options,
    required graphql_flutter.QueryBuilder<Query$GreetMe> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GreetMe$greetMe {
  Query$GreetMe$greetMe({
    required this.message,
    required this.$__typename,
  });

  factory Query$GreetMe$greetMe.fromJson(Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Query$GreetMe$greetMe(
      message: (l$message as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GreetMe$greetMe) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Query$GreetMe$greetMe on Query$GreetMe$greetMe {
  CopyWith$Query$GreetMe$greetMe<Query$GreetMe$greetMe> get copyWith =>
      CopyWith$Query$GreetMe$greetMe(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GreetMe$greetMe<TRes> {
  factory CopyWith$Query$GreetMe$greetMe(
    Query$GreetMe$greetMe instance,
    TRes Function(Query$GreetMe$greetMe) then,
  ) = _CopyWithImpl$Query$GreetMe$greetMe;

  factory CopyWith$Query$GreetMe$greetMe.stub(TRes res) =
      _CopyWithStubImpl$Query$GreetMe$greetMe;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GreetMe$greetMe<TRes>
    implements CopyWith$Query$GreetMe$greetMe<TRes> {
  _CopyWithImpl$Query$GreetMe$greetMe(
    this._instance,
    this._then,
  );

  final Query$GreetMe$greetMe _instance;

  final TRes Function(Query$GreetMe$greetMe) _then;

  static const _undefined = {};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GreetMe$greetMe(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GreetMe$greetMe<TRes>
    implements CopyWith$Query$GreetMe$greetMe<TRes> {
  _CopyWithStubImpl$Query$GreetMe$greetMe(this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}
