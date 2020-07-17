import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:mobx/mobx.dart';
import 'package:previsao_tempo/model/previsao_cidade.dart';

part 'previsao_cidade_store.g.dart';

class PrevisaoCidadeStore = _PrevisaoCidadeStore with _$PrevisaoCidadeStore;

const API_KEY = "yourkey";

const url = "https://api.hgbrasil.com/weather?key=$API_KEY&woeid=456329";

abstract class _PrevisaoCidadeStore with Store {
  @observable
  bool loading = false;

  @observable
  PrevisaoCidade previsaoCidade = PrevisaoCidade();

  Future<void> findPrevisao() async {
    print("findPrevisao: ");

    loading = true;

    Response response =
        await Dio().get(url, options: buildCacheOptions(Duration(days: 1)));

    print(response.data);

    previsaoCidade = PrevisaoCidade.fromJson(response.data);

    loading = false;

    print("exit: findPrevisao: ");
  }
}
