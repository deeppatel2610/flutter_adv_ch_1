Here's how you can improve your Flutter app's theme setup, along with a sample `README.md` file for your GitHub repository:

### Code for Dark and Light Theme in Flutter

```dart
MaterialApp(
  theme: ThemeData.light(),
  darkTheme: ThemeData.dark(),
  themeMode: isDark ? ThemeMode.dark : ThemeMode.light, // Use your `isDark` variable here
  home: MyHomePage(),
);
```

To switch between dark and light modes dynamically, you can use a `StatefulWidget` and store the value of `isDark` in a `bool` variable (which could be stored in `SharedPreferences` or similar for persistence).

## How to Use

To toggle between light and dark themes, modify the `isDark` variable and trigger a rebuild.

```dart
setState(() {
  isDark = !isDark;
});
```

## Photo
  <div>
    <img src= "https://github.com/user-attachments/assets/5dd94a70-5a60-4a21-b3e3-06400a845590"  height =500px>
    <img src= "https://github.com/user-attachments/assets/a1227420-5342-41cb-8c4a-b47ee82192d8"  height =500px> 


    
  [Screen_recording_20241001_232244.webm](https://github.com/user-attachments/assets/3ae9105d-f54e-4f0b-adb8-7cc7441aa95a)

  </div>
