// To parse this JSON data, do
//
//     final person = personFromJson(jsonString);

import 'dart:convert';

Person personFromJson(String str) => Person.fromMap(json.decode(str));

String personToJson(Person data) => json.encode(data.toMap());

class Person {
    final String name;
    final double amount;

    Person({
        this.name,
        this.amount,
    });

    factory Person.fromMap(Map<String, dynamic> json) => Person(
        name: json["name"],
        amount: json["amount"].toDouble(),
    );

    Map<String, dynamic> toMap() => {
        "name": name,
        "amount": amount,
    };
}


// To parse this JSON data, do
//
//     final history = historyFromJson(jsonString);
History historyFromJson(String str) => History.fromMap(json.decode(str));

String historyToJson(History data) => json.encode(data.toMap());

class History {
    final String name;
    final String reason;
    final double amount;
    final DateTime time;

    History({
        this.name,
        this.reason,
        this.amount,
        this.time,
    });

    factory History.fromMap(Map<String, dynamic> json) => History(
        name: json["name"],
        reason: json["reason"],
        amount: json["amount"].toDouble(),
        time: DateTime.parse(json["time"]),
    );

    Map<String, dynamic> toMap() => {
        "name": name,
        "reason": reason,
        "amount": amount,
        "time": time.toIso8601String(),
    };
}
