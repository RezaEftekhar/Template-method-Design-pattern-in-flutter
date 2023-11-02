import 'package:flutter/material.dart';
import 'package:templatemethodexample/students.dart';
import 'package:templatemethodexample/students_bmi_calculator.dart';

class CustomSection extends StatefulWidget {
  final StudentsBmiCalculator bmiCalculator;
  final String headerText;

  const CustomSection({
    required this.bmiCalculator,
    required this.headerText,
  });

  @override
  _CustomSectionState createState() => _CustomSectionState();
}

class _CustomSectionState extends State<CustomSection> {
  final List<Student> students = [];

  void _calculateBmiAndGetStudentsData() {
    setState(() {
      students.addAll(widget.bmiCalculator.calculateBmiAndReturnStudentList());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          widget.headerText,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: CustomSectionContent(
            students: students,
            onPressed: _calculateBmiAndGetStudentsData,
          ),
        ),
      ],
    );
  }
}

class CustomSectionContent extends StatelessWidget {
  final List<Student> students;
  final VoidCallback onPressed;

  const CustomSectionContent({
    required this.students,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return students.isEmpty
        ? ElevatedButton(
            onPressed: onPressed,
            child: Text("Calculate BMI and Get Students' Data"),
          )
        : ListView.builder(
            shrinkWrap: true,
            itemCount: students.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(students[index].fullName),
                subtitle: Text('Age: ${students[index].age}'),
                trailing:
                    Text('BMI: ${students[index].bmi.toStringAsFixed(2)}'),
              );
            },
          );
  }
} 
