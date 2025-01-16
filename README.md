# Unhandled JSON Key Access in Dart

This repository demonstrates a common error in Dart applications when handling JSON responses from APIs: attempting to access a key that might not exist in the JSON data.  The `bug.dart` file shows the problematic code, while `bugSolution.dart` presents a robust solution.

## Problem
The `fetchData` function in `bug.dart` fetches JSON data from an API.  It then attempts to access the `nonExistentKey` without checking for its existence. If this key is not present in the JSON, a runtime exception is thrown, potentially crashing the application.

## Solution
The `bugSolution.dart` file provides an improved version of the `fetchData` function. It utilizes the `containsKey` method to check if the key exists before accessing it. This prevents the runtime exception and handles the case gracefully when the key is absent.
