import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:previsao_tempo/model/previsao_cidade.dart';
import 'package:previsao_tempo/store/previsao_cidade_store.dart';
import 'package:previsao_tempo/widgets/card_forecast.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PrevisaoCidade previsaoCidade;
  PrevisaoCidadeStore _store = PrevisaoCidadeStore();

  @override
  void initState() {
    super.initState();
    _store.findPrevisao();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Observer(builder: (context) {
      return Text("Previsão - ${_store.previsaoCidade?.results?.cityName}");
    })), body: Observer(builder: (context) {
      return buildBody(context);
    }));
  }

  Widget buildBody(BuildContext context) {
    if (_store.loading) {
      return Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.red,
        ),
      );
    }

    var totalHeigth = MediaQuery.of(context).size.height;

    Results result = _store.previsaoCidade.results;

    return Container(
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Colors.blue[200], Colors.blue[400]])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: totalHeigth * 0.05,
          ),
          Container(
            height: totalHeigth * 0.4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: totalHeigth * 0.05,
                    ),
                    Text(
                      "${result.temp}°",
                      style: TextStyle(
                          fontSize: 70,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "${result.description}",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Image.asset(
                  "lib/assets/${result.conditionSlug}.ico",
                  fit: BoxFit.cover,
                  height: totalHeigth * 0.25,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          Container(
            height: totalHeigth * 0.4,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _store.previsaoCidade.results.forecast.length,
                itemBuilder: (context, index) {
                  Forecast forecast =
                      _store.previsaoCidade.results.forecast[index];
                  return CardForecast(forecast);
                }),
          )
        ],
      ),
    );
  }
}
