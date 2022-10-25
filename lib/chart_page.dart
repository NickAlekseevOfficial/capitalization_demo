import 'package:capitalization_demo/company_service.dart';
import 'package:capitalization_demo/pie_chart_widget.dart';
import 'package:flutter/material.dart';

import 'company_model.dart';
import 'details_page.dart';

class ChartPage extends StatefulWidget {
  const ChartPage({Key? key}) : super(key: key);

  final bool isVisible = true;

  @override
  State<ChartPage> createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  late Future<List<CompanyModel>> futureData;
  late CompanyService companyService = CompanyService();
  List<String> symbols = ['AAPL', 'AMZN', 'GOOG', 'MSFT'];
  late bool _isVisible = widget.isVisible;
  int _index = 0;

  void _toggle() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void _update(int index) {
    _index = index;
    debugPrint('Current index: $_index');
  }

  @override
  void initState() {
    futureData = companyService.assignData(symbols);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: FutureBuilder<List<CompanyModel>>(
          future: futureData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return _isVisible
                  ? PieChartWidget(
                      companies: snapshot.data!,
                      onTap: _toggle.call,
                      onUpdate: _update,
                    )
                  : DetailsPage(
                      companies: snapshot.data!,
                      index: _index,
                      onTap: _toggle.call,
                    );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
