import 'package:bmi_calculator/Components/RactButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Row(
                  children: [
                    Icon(Icons.arrow_back_ios_new),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text("Back")
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Your BMI is",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                height: 350,
                child: Expanded(
                  child: CircularPercentIndicator(
                    radius: 140.0,
                    lineWidth: 30.0,
                    animation: true,
                    animationDuration: 100,
                    percent: 0.3,
                    center: new Text(
                      "24.5",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 60,
                          fontWeight: FontWeight.bold),
                    ),
                    footer: Container(
                      child: Text(
                        "Underweight",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ),
                    progressColor: Theme.of(context).colorScheme.primary,
                    circularStrokeCap: CircularStrokeCap.round,
                    backgroundColor:
                        Theme.of(context).colorScheme.primary.withOpacity(0.2),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(10.0)),
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Your BMI is [calculated value], indicating underweight.\n\n'
                    'Consult a healthcare professional for guidance on healthy weight gain through a balanced diet and exercise.\n\n'
                    'Prioritize nutrient-dense foods and consider strength training to build muscle mass gradually.',
                    style: TextStyle(fontSize: 16),
                  )),
              SizedBox(height: 20),
            ],
            //Underweight:
            // Your BMI is [calculated value], indicating underweight. Consult a healthcare professional for guidance on healthy weight gain through a balanced diet and exercise. Prioritize nutrient-dense foods and consider strength training to build muscle mass gradually.
            //
            // Normal:
            // Your BMI is [calculated value], within the healthy range. Maintain your healthy lifestyle with balanced nutrition and regular exercise. Remember to listen to your body's hunger and fullness cues and stay hydrated.
            //
            // Overweight:
            // Your BMI is [calculated value], suggesting overweight. Seek advice from a healthcare provider for personalized strategies to manage weight through diet and exercise. Focus on small, sustainable changes and set achievable goals for long-term success.
          ),
        ),
      ),
    );
  }
}
