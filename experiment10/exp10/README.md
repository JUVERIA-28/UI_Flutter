# ***Experiment 10: Unit Testing & Debugging in Flutter***

## **Aim**
a) To write unit tests for Flutter UI components.  
b) To use Flutter’s debugging tools to identify and fix issues in a Flutter application.

---

## **Procedure**

1. Created a new Flutter project using:  
   ```flutter create experiment10_testing_debugging```

2. Opened the project in **VS Code**.

3. Inside the `lib` and `test` folders, created:
   - `main.dart` (UI)
   - `counter.dart` (logic to be tested)
   - `counter_test.dart` (unit test file)

4. Learned how Flutter testing works:
   - `unit tests` → test small functions, logic, or classes  
   - `widget tests` → test UI components  
   - `integration tests` → test full app workflow  

5. Used the **flutter_test** package (already included in every Flutter project).

6. Wrote unit test using:
   ```dart
   test('Counter increment test', () { ... });

### Output

[<img src="Output10.png" width="300"/>](Output10.png)
