import 'package:flutter/material.dart';
class date extends StatefulWidget {
  const date({super.key});

  @override
  State<date> createState() => _dateState();
}

class _dateState extends State<date> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Select Date'),
            ElevatedButton(onPressed: () async{
              DateTime? datePiked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2015),
                  lastDate: DateTime(2025));

              if(datePiked!=null){
                print('Date Selected: ${datePiked.day}-${datePiked.month}-${datePiked.year}');
              }

            }, child: Text('Show')),
            Text('Select Time'),
            ElevatedButton(onPressed: () async {
              TimeOfDay? timepicker = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                initialEntryMode: TimePickerEntryMode.dial
              );
              if(timepicker!=null){
                print('Time Selected: ${timepicker.hour}-${timepicker.minute}');
              }
            }, child: Text('Select Time'))
          ],
        ),
      ),
    );
  }
}
