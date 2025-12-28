import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class ImcResultScreen extends StatelessWidget {
  final double height;
  final int weight;
  const ImcResultScreen({
    super.key,
    required this.height,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: appBarResult(),
      body: bodyResult(context),
    );
  }

  Column bodyResult(context) {
    double fixedHeight = height / 100;
    double imcResult = weight / (fixedHeight * fixedHeight);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Resultado",
          style: TextStyle(
            color: AppColors.textPrimary,
            fontSize: 38,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              bottom: 16.0,
            ),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.backgroundComponent,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    getTextoImc(imcResult),
                    style: TextStyle(
                      fontSize: 30,
                      color: getColorForImc(imcResult),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    imcResult.toStringAsFixed(2),
                    style: TextStyle(
                      fontSize: 76,
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "asdf",
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            width: double.infinity,
            height: 56,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: AppColors.textPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text("FINALIZAR"),
            ),
          ),
        ),
      ],
    );
  }

  AppBar appBarResult() {
    return AppBar(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.textPrimary,
      title: Text("IMC Calculator"),
    );
  }

  Color? getColorForImc(double imcResult) {
    return switch (imcResult) {
      < 18.5 => Colors.yellow,
      >= 18.5 && < 24.9 => Colors.green,
      >= 25 && < 29.9 => Colors.orange,
      >= 30 => Colors.red,
      _ => Colors.white,
    };
  }

  String getTextoImc(double imcResult) {
    return switch (imcResult) {
      < 18.5 => "BAJO PESO",
      >= 18.5 && < 24.9 => "NORMAL",
      >= 25 && < 29.9 => "SOBREPESO",
      >= 30 => "OBESIDAD",
      _ => "DESCONOCIDO",
    };
  }
}
