// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'previsao_cidade_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PrevisaoCidadeStore on _PrevisaoCidadeStore, Store {
  final _$loadingAtom = Atom(name: '_PrevisaoCidadeStore.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$previsaoCidadeAtom =
      Atom(name: '_PrevisaoCidadeStore.previsaoCidade');

  @override
  PrevisaoCidade get previsaoCidade {
    _$previsaoCidadeAtom.reportRead();
    return super.previsaoCidade;
  }

  @override
  set previsaoCidade(PrevisaoCidade value) {
    _$previsaoCidadeAtom.reportWrite(value, super.previsaoCidade, () {
      super.previsaoCidade = value;
    });
  }

  @override
  String toString() {
    return '''
loading: ${loading},
previsaoCidade: ${previsaoCidade}
    ''';
  }
}
