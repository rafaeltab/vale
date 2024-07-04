/// This is a documentation comment for the entire Dart file.
///
/// This file demonstrates the usage of various types of comments
/// in Dart code, including:
/// - Documentation comments (using `///`)
/// - Block comments (using `/* */`)
/// - Inline comments (using `//`)
///
/// Each type of comment is used in different contexts to provide
/// explanations and annotations for the code.

/// A class representing a simple calculator.
/// 
/// The `Calculator` class provides basic arithmetic operations
/// such as addition, subtraction, multiplication, and division.
class Calculator {
  /* 
   * The result of the last calculation.
   * This private field is used to store the result of the most recent
   * arithmetic operation performed by the calculator. It is not accessible
   * directly outside the class.
   */
  double _result = 0.0;

  /// Adds two numbers and updates the result.
  ///
  /// This method takes two `double` parameters, adds them together,
  /// and stores the result in the `_result` variable. It also prints
  /// the result to the console.
  ///
  /// [a] The first number to add.
  /// [b] The second number to add.
  void add(double a, double b) {
    // Calculate the sum of a and b
    _result = a + b;
    // Print the result
    print('Addition result: $_result');
  }

  /// Subtracts the second number from the first number and updates the result.
  ///
  /// This method performs subtraction and updates the internal result.
  ///
  /// [a] The number to subtract from.
  /// [b] The number to subtract.
  void subtract(double a, double b) {
    // Calculate the difference between a and b
    _result = a - b;
    // Print the result
    print('Subtraction result: $_result');
  }

  /// Multiplies two numbers and updates the result.
  ///
  /// This method performs multiplication and updates the internal result.
  ///
  /// [a] The first number to multiply.
  /// [b] The second number to multiply.
  void multiply(double a, double b) {
    // Calculate the product of a and b
    _result = a * b;
    // Print the result
    print('Multiplication result: $_result');
  }

  /// Divides the first number by the second number and updates the result.
  ///
  /// This method performs division and handles division by zero cases.
  ///
  /// [a] The numerator.
  /// [b] The denominator.
  /// Throws an [ArgumentError] if [b] is zero.
  void divide(double a, double b) {
    if (b == 0) {
      /*
       * Handle division by zero error.
       * Since division by zero is undefined, an ArgumentError is thrown
       * to indicate that this operation is not allowed. This prevents
       * the program from crashing unexpectedly.
       */
      throw ArgumentError('Cannot divide by zero.');
    }
    // Calculate the quotient of a and b
    _result = a / b;
    // Print the result
    print('Division result: $_result');
  }

  /* 
   * Returns the last result of the calculation.
   * This method provides access to the last computed result. It is
   * a getter that allows external code to retrieve the value of `_result`
   * without modifying it. This ensures encapsulation while providing
   * read-only access to the result.
   * 
   * Returns:
   * - A [double] representing the last result.
   */
  double get result => _result;
}

/// A simple function to demonstrate the use of the `Calculator` class.
///
/// This function creates an instance of the `Calculator`, performs
/// some arithmetic operations, and prints the results to the console.
void main() {
  // Create a new instance of the Calculator class
  Calculator calc = Calculator();

  /*
   * Perform various arithmetic operations using the Calculator instance.
   * The following operations are demonstrated:
   * - Addition
   * - Subtraction
   * - Multiplication
   * - Division (including division by zero to show error handling)
   */
  // Perform addition
  calc.add(10, 5);

  // Perform subtraction
  calc.subtract(10, 5);

  // Perform multiplication
  calc.multiply(10, 5);

  // Perform division
  try {
    calc.divide(10, 0); // This will throw an exception
  } catch (e) {
    /*
     * Catch and print the exception if division by zero occurs.
     * The catch block handles the error thrown during division and
     * provides feedback to the user or developer about the error.
     */
    print('Caught an error: $e');
  }

  // Output the last result
  print('Last result: ${calc.result}');
}