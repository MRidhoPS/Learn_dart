import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiRes {
  String jsonResponse = '''
  {
    "message": "Get Data Success",
    "user_id": "1",
    "totalExpenses": {
        "total_amount": "900000"
    },
    "data": [
      {
        "username": "ridho",
        "amount": 200000,
        "description": "Bayar Guru"
      },
      {
        "username": "ridho",
        "amount": 500000,
        "description": "Service Motor"
      },
      {
        "username": "ridho",
        "amount": 200000,
        "description": "Bayar Wifi"
      }
    ]
  }
  ''';
}

class Api {
  ApiRes apiRes = ApiRes();

  final String baseUrl = 'http://192.168.18.17:4000/api/getDataExpense/1';

  Future<TotalTransaction> getTotal() async{
    final response = await http.get(Uri.parse(baseUrl));

    Map<String, dynamic> jsonRes = jsonDecode(response.body);
    TotalTransaction totalTransaction = TotalTransaction.fromJson(jsonRes['totalExpenses']);
    print('total transaction: ${totalTransaction.total}');
    return totalTransaction;
  }

  Future<List<Transaction>> getData() async {
    final response = await http.get(
      Uri.parse(baseUrl),
    );

    Map<String, dynamic> jsonRes = jsonDecode(response.body);
    List<dynamic> data = jsonRes['data'];
    List<Transaction> result =
        data.map((e) => Transaction.fromJson(e)).toList();
    for (var i in result) {
      print('${i.amount}, ${i.description}');
    }
    return result;
  }
}

class Transaction {
  final String username;
  final int amount;
  final String description;

  Transaction({
    required this.username,
    required this.amount,
    required this.description,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      username: json['username'],
      amount: json['amount'],
      description: json['description'],
    );
  }
}

class TotalTransaction{
  final String total;

  TotalTransaction({required this.total});

  factory TotalTransaction.fromJson(Map<String, dynamic> json){
    return TotalTransaction(total: json['total_amount']);
  }
}

void main() {
  Api api = Api();
  api.getData();
  api.getTotal();
}
