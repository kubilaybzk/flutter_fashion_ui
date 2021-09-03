import 'package:flutter/material.dart';

class Model {
  final String _modelName;
  final String _burcModelResim;

  get modelName => this._modelName;
  get burcModelResim => this._burcModelResim;

  Model(this._modelName, this._burcModelResim);
}

List<Model> veriekle() {
  List<Model> gecici = [];

  for (int i = 0; i < 9; i++) {
    String name = "";
    String adres = "";
    name = i.toString();

    adres = "images/" + '${i + 0}.jpg';

    Model eklenecekModel = Model(name, adres);
    gecici.add(eklenecekModel);
  }
  return gecici;
}
