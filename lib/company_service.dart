import 'dart:async';
import 'dart:convert';

import 'package:capitalization_demo/company_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CompanyService {
  List<CompanyModel> companies = [];

  Future<CompanyModel> fetchData(String symbol) async {
    final response = await http.get(Uri.parse(
        'https://www.alphavantage.co/query?function=OVERVIEW&symbol=$symbol&apikey=LI7V9MHHRYC9Z4XD'));
    if (response.statusCode == 200) {
      final company = CompanyModel.fromJson(jsonDecode(response.body));

      return company;
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<List<CompanyModel>> assignData(List<String> symbols) async {
    companies.clear();
    for (String symbol in symbols) {
      final company = await fetchData(symbol);
      companies.add(company);
    }
    return companies;
  }
}

// kinda test.
Future<void> main() async {
  final companyService = CompanyService();
  final result = await companyService.fetchData('AAPL');
  debugPrint('Symbol: ${result.symbol}');
}
