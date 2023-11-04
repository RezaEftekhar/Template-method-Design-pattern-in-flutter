# templatemethodexample


A Flutter application that calculates and displays the BMI (Body Mass Index) of students. This project demonstrates the implementation of the Template Method design pattern in handling data from different sources (JSON and XML) within the Flutter framework.

## Installation

To run the application, follow these steps:

1. Clone the repository.
2. Open the project in your preferred Flutter development environment.
3. Run the application on an emulator or a physical device.

## Usage

The application provides a user interface for calculating and displaying the BMI of students based on data obtained from XML and JSON sources.

## Project Details

The project comprises the following key components:

- `Student` class: This class stores information about students, including their full names, ages, heights, weights, and BMI values.

- `StudentsBmiCalculator` class: An abstract class that implements the Template Method design pattern. It contains methods for calculating BMI, filtering student data, and obtaining student information. It serves as the foundation for the concrete implementations of XML and JSON data sources.

- `StudentsXmlBmiCalculator` class: A concrete implementation of the `StudentsBmiCalculator` class specifically designed for handling XML data. It retrieves student data from an XML source and calculates the BMI for each student.

- `StudentsJsonBmiCalculator` class: Another concrete implementation of the `StudentsBmiCalculator` class that deals with JSON data. It retrieves student data from a JSON source and calculates the BMI for each student.

- `TeenageStudentsJsonBmiCalculator` class: A specialized implementation of the `StudentsBmiCalculator` class that filters out students based on their age. It specifically targets teenage students, filtering out individuals whose ages range from 12 to 19 years.

- Various UI components: The project includes UI components such as `CustomSection` and `CustomSectionContent` widgets, which are responsible for displaying student data and BMI calculations in a user-friendly format.

## Contributing

Contributions are welcome. For major changes, please open an issue first to discuss what you would like to change.


