import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

class AddEventsCalendar extends StatefulWidget {
  final DateTime? selectedDate;

  const AddEventsCalendar({Key? key, this.selectedDate}) : super(key: key);

  @override
  _AddEventsCalendarState createState() => _AddEventsCalendarState();
}

class _AddEventsCalendarState extends State<AddEventsCalendar> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.clear,
            color: Colors.deepOrange,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Center(
            child: ElevatedButton(
              onPressed: () async {
                _formKey.currentState!.save();
              },
              child: Text("Save"),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          FormBuilder(
            child: Column(
              children: [
                FormBuilderTextField(
                  name: "Title",
                  decoration: InputDecoration(
                    hintText: "Add Title",
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.only(left: 48.0),
                  ),
                ),
                Divider(),
                FormBuilderTextField(
                  name: "Description",
                  decoration: InputDecoration(
                    hintText: "Add Description",
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.only(left: 48.0),
                    prefixIcon: Icon(Icons.short_text),
                  ),
                ),
                Divider(),
                FormBuilderSwitch(
                  name: "Public",
                  title: Text("Public"),
                  initialValue: false,
                  controlAffinity: ListTileControlAffinity.leading,
                  decoration: InputDecoration(border: InputBorder.none),
                ),
                Divider(),
                FormBuilderDateTimePicker(
                  name: "Date",
                  initialValue: widget.selectedDate ?? DateTime.now(),
                  fieldHintText: "Add Date",
                  inputType: InputType.date,
                  format: DateFormat('EEEE', 'dd MMMM, yyyy'),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.calendar_today_sharp),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
