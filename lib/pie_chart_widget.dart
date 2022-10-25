import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'company_model.dart';

class PieChartWidget extends StatefulWidget {
  const PieChartWidget({
    Key? key,
    required this.companies,
    this.onUpdate, this.onTap,
  }) : super(key: key);

  final List<CompanyModel> companies;

  final void Function(int index)? onUpdate;

  final VoidCallback? onTap;

  @override
  State<PieChartWidget> createState() => _PieChartWidgetState();
}

class _PieChartWidgetState extends State<PieChartWidget> {
  int _touchedIndex = -1;
  late double _totalAmount;
  late final _companies = widget.companies;

  double _computeAmount() {
    double result = 0;
    for (int i = 0; i < _companies.length; i++) {
      result = result + _companies[i].marketCapitalization!;
    }
    return result;
  }

  double _computeShare(int index) {
    double result =
        _companies[index].marketCapitalization! / _totalAmount * 100;
    debugPrint('The share of index $index: $result');
    return result;
  }

  @override
  Widget build(BuildContext context) {
    _totalAmount = _computeAmount();

    return Center(
      child: PieChart(
        PieChartData(
          pieTouchData: PieTouchData(
            touchCallback: (FlTouchEvent event, pieTouchResponse) {
             if(mounted) {
               setState(() {
                 if (!event.isInterestedForInteractions ||
                     pieTouchResponse == null ||
                     pieTouchResponse.touchedSection == null) {
                   _touchedIndex = -1;
                   return;
                 }
                 _touchedIndex =
                     pieTouchResponse.touchedSection!.touchedSectionIndex;
                 widget.onUpdate!(_touchedIndex);
                 widget.onTap?.call();
               });
             }
            },
          ),
          borderData: FlBorderData(
            show: false,
          ),
          sectionsSpace: 0,
          centerSpaceRadius: 0,
          sections: showingSections(_companies),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections(List<CompanyModel> companies) {
    return List.generate(companies.length, (i) {
      final isTouched = i == _touchedIndex;
      final fontSize = isTouched ? 18.0 : 14.0;
      final radius = isTouched ? 155.0 : 130.0;
      final widgetSize = isTouched ? 75.0 : 70.0;

      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff0293ee),
            value: _computeShare(0),
            title: '${_computeShare(0).toStringAsFixed(1)}%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
            ),
            badgeWidget: _Badge(
              '${widget.companies[0].symbol}',
              size: widgetSize,
              borderColor: const Color(0xff0293ee),
            ),
            badgePositionPercentageOffset: .98,
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xfff8b250),
            value: _computeShare(1),
            title: '${_computeShare(1).toStringAsFixed(1)}%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
            ),
            badgeWidget: _Badge(
              '${widget.companies[1].symbol}',
              size: widgetSize,
              borderColor: const Color(0xfff8b250),
            ),
            badgePositionPercentageOffset: .98,
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xff845bef),
            value: _computeShare(2),
            title: '${_computeShare(2).toStringAsFixed(1)}%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
            ),
            badgeWidget: _Badge(
              '${widget.companies[2].symbol}',
              size: widgetSize,
              borderColor: const Color(0xff845bef),
            ),
            badgePositionPercentageOffset: .98,
          );
        case 3:
          return PieChartSectionData(
            color: const Color(0xff13d38e),
            value: _computeShare(3),
            title: '${_computeShare(3).toStringAsFixed(1)}%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
            ),
            badgeWidget: _Badge(
              '${widget.companies[3].symbol}',
              size: widgetSize,
              borderColor: const Color(0xff13d38e),
            ),
            badgePositionPercentageOffset: .98,
          );
        default:
          throw Exception('Oh no');
      }
    });
  }
}

class _Badge extends StatelessWidget {
  const _Badge(
    this.text, {
    required this.size,
    required this.borderColor,
  });

  final String text;
  final double size;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: PieChart.defaultDuration,
      width: size,
      height: size / 1.5,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        border: Border.all(
          color: borderColor,
          width: 2,
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            offset: const Offset(3, 3),
            blurRadius: 3,
          ),
        ],
      ),
      padding: EdgeInsets.all(size * 0.15),
      child: Center(
        child: Text(text),
      ),
    );
  }
}
