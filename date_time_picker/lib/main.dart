import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _currentSelectedDate = DateTime.now();
  var _currentTime = TimeOfDay.now();
  //1. Call de nuestro datePicker.
  void callDatePicker() async {
    var selectedDate = await getDatePickerWidget();
    setState(() {
      _currentSelectedDate = selectedDate;
    });
  }

  //2. CrearWidget DatePicker.
  Future<DateTime> getDatePickerWidget() {
    return showDatePicker(
      context: context,
      initialDate: _currentSelectedDate,
      firstDate: DateTime(2017),
      lastDate: DateTime(2021),
      builder: (context, child) {
        return Theme(data: ThemeData.dark(), child: child);
      },
    );
  }

  void callTimePicker() async {
    var selectedTime = await getTimePickerWidget();
    setState(() {
      _currentTime = selectedTime;
    });
  }

  //tiempo
  Future<TimeOfDay> getTimePickerWidget() {
    return showTimePicker(
      context: context,
      initialTime: _currentTime,
      builder: (context, child) {
        return Theme(data: ThemeData.dark(), child: child);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    //3. botón que lanza nuestro dialgo datePicker.
    return SafeArea(
      child: Scaffold(
          body: Column(children: [
        FlatButton(
          onPressed: callDatePicker,
          child: Text("lanzar nuestro datePicker"),
        ),
        Text("$_currentSelectedDate"),
        FlatButton(
          onPressed: callTimePicker,
          child: Text("lanzar nuestro timePicker"),
        ),
        Text("$_currentTime"),
      ])),
    );
  }
}
