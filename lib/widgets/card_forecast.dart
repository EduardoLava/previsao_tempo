import 'package:flutter/material.dart';
import 'package:previsao_tempo/model/previsao_cidade.dart';

class CardForecast extends StatelessWidget {
  final Forecast forecast;

  CardForecast(this.forecast);

  @override
  Widget build(BuildContext context) {
    var totalHeigth = MediaQuery.of(context).size.height;
    var totalWidth = MediaQuery.of(context).size.width;

    return Card(
      shadowColor: Colors.grey,
      elevation: 5,
      child: Container(
        width: totalWidth * 0.45,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.white, Colors.blue[200]])),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text(
                "${forecast.weekday}",
                style: TextStyle(fontSize: 17),
              ),
              Text("${forecast.date}", style: TextStyle(fontSize: 13)),
              Image.asset(
                "lib/assets/${forecast.condition}.ico",
                fit: BoxFit.cover,
                height: totalHeigth * 0.15,
                alignment: Alignment.center,
              ),
              Text(
                "${forecast.description}",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "Máx: ${forecast.max}°",
              ),
              Text(
                "Min: ${forecast.min}°",
              )
            ],
          ),
        ),
      ),
    );
  }
}
