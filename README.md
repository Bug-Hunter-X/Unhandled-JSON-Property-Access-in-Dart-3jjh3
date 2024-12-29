# Unhandled JSON Property Access in Dart
This repository demonstrates a common error in Dart when handling JSON responses from APIs.  The `bug.dart` file contains code that attempts to access a property of a JSON object without checking for its existence, leading to a runtime exception if the property is missing. The `bugSolution.dart` file provides a corrected version of the code that addresses this issue.

**Problem:**
The original code fails to handle cases where the JSON response might not contain the expected 'name' property.  This results in a runtime error when the code tries to access `item['name']` if `item` doesn't have that property.

**Solution:**
The solution involves using the null-aware operator (`?.`) or checking for the property's existence before accessing it. This ensures that the code gracefully handles cases where the property is missing, preventing runtime exceptions.