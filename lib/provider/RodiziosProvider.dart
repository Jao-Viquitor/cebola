import 'dart:math';

import 'package:cebola/Model/DUMMY_USERS.dart';
import 'package:cebola/Model/Rodizio.dart';
import 'package:flutter/cupertino.dart';

class RodoziosProvider with ChangeNotifier {
  Map<String, Rodizio> _items = {...DUMMY_USER};

  List<Rodizio> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  Rodizio byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(Rodizio rodizio) {
    if (rodizio == null) {
      return;
    }

    if (rodizio.id != null &&
        rodizio.id.trim().isEmpty &&
        _items.containsKey(rodizio.id)) {
      _items.update(
          rodizio.id,
          (_) => Rodizio(rodizio.id, rodizio.nome, rodizio.categoria,
              rodizio.local, rodizio.data));
    } else {
      final String id = Random().nextDouble().toString();
      _items.putIfAbsent(
          id,
          () => Rodizio(id, rodizio.nome, rodizio.categoria, rodizio.local,
              rodizio.data));
    }
    notifyListeners();
  }

  void remove(Rodizio exc){
    if(exc != null && exc.id != null){
      _items.remove(exc.id);
      notifyListeners();
    }
  }

}
