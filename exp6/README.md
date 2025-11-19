# ***Experiment 6: Custom Widgets & Theming in Flutter***

## **Aim**
a) To create custom reusable widgets for specific UI elements in Flutter.  
b) To apply styling using **Themes**, **Custom Styles**, and **ThemeData**.

---

## **Procedure**

1. Created a new Flutter project using:  
   ```flutter create experiment6_custom_widgets```

2. Opened the project in **VS Code**.

3. Inside the `lib` folder, created custom Dart files:
   - `custom_button.dart` (custom widget)
   - `custom_card.dart` (custom widget)
   - `theme_config.dart` (custom theme setup)
   - Updated `main.dart` to apply themes.

4. Learned how to:
   - Build custom widgets by extending **StatelessWidget** or **StatefulWidget**.
   - Pass parameters to custom widgets for reuse.
   - Define global styling using **ThemeData**, including:
     - Colors  
     - Text styles  
     - Button themes  
     - AppBar themes  

5. Applied the custom theme inside `MaterialApp` using:
   ```dart
   theme: ThemeData(...)

### Output

[<img src="output6.png" width="300"/>](output6.png)