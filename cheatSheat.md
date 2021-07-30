# Buttons:

```dart
ElevatedButton(
  style: ElevatedButton.styleFrom(
    primary: Colors.orange, //Background Color
    onPrimary: Colors.white, //Text Color
  ),
  child: Text('The text of the button'),
  onPressed: () => print("Elevated Button was pressed")
),
TextButton(
  style: TextButton.styleFrom(
    primary: Colors.orange, //Text Color
  ),
  child: Text('The text of the button'),
  onPressed: () => print("Text Button was pressed")
),
OutlinedButton(
  style: OutlinedButton.styleFrom(
    primary: Colors.orange, //Text Color
    side: BorderSide(color: Colors.orange), //Border Color
  ),
  child: Text('The text of the button'),
  onPressed: () => print("Outlined Button was pressed")
),
```