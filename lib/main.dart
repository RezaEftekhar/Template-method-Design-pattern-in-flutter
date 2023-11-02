import 'package:flutter/material.dart';
import 'package:templatemethodexample/students_json_bmi_calculator.dart';
import 'package:templatemethodexample/students_section.dart';
import 'package:templatemethodexample/students_xml_bmi_calculator.dart';
import 'package:templatemethodexample/teenage_json_students_bmi_calculator.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TemplateMethodExampleWidget(),
  ));
}

class TemplateMethodExampleWidget extends StatelessWidget {
  const TemplateMethodExampleWidget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student BMI Calculator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomSection(
                bmiCalculator: StudentsXmlBmiCalculator(),
                headerText: 'XML Data Source',
              ),
              SizedBox(height: 20),
              CustomSection(
                bmiCalculator: StudentsJsonBmiCalculator(),
                headerText: 'JSON Data Source',
              ),
              SizedBox(height: 20),
              CustomSection(
                bmiCalculator: TeenageStudentsJsonBmiCalculator(),
                headerText: 'Teenage Students (JSON)',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
