import 'package:flutter/material.dart';

import 'company_model.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    Key? key,
    required this.companies,
    required this.index,
    this.onTap,
  }) : super(key: key);

  final List<CompanyModel> companies;
  final int index;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    const List<Color> colors = <Color>[
      Color(0xff0293ee),
      Color(0xfff8b250),
      Color(0xff845bef),
      Color(0xff13d38e),
    ];

    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 300,
          width: 380,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: colors[index],
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'company name:',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      companies[index].symbol!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'market capitalization:',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      companies[index].marketCapitalization.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, right: 2.0),
                  child: Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: IconButton(
                          onPressed: onTap?.call,
                          icon: const Icon(
                            Icons.close,
                            color: Colors.white,
                          ))),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
