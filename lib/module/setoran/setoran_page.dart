import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import 'db/firebase_api.dart';
import 'models/calendar_add_file_models.dart';
import 'package:path/path.dart';

class SetoranPage extends StatefulWidget {
  // final List<PlatformFile>? files;
  // final ValueChanged<PlatformFile>? onOpenedFile;
  const SetoranPage({
    Key? key,
    // this.files,
    // this.onOpenedFile,
  }) : super(key: key);

  @override
  _SetoranPageState createState() => _SetoranPageState();
}

class _SetoranPageState extends State<SetoranPage> {
  TextEditingController _fileUploadController = TextEditingController();

  Map<DateTime, List<Setoran>>? selectedFiles;
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  @override
  void initState() {
    selectedFiles = {};
    super.initState();
  }

  void dispose() {
    _fileUploadController.dispose();
    super.dispose();
  }

  // ignore: unused_element
  List<Setoran> _getSetoranFromDay(DateTime date) {
    return selectedFiles![date] ?? [];
  }

  UploadTask? task;
  // FilePickerResult? result;
  File? file;

  @override
  Widget build(BuildContext context) {
    final fileName = file != null ? basename(file!.path) : 'No selected file';

    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 30),
          Center(
            child: Text(
              "Setor Hafalan",
              style: TextStyle(
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w900,
                color: Colors.black,
                fontSize: 24,
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(20),
          //   child: Card(
          //     clipBehavior: Clip.antiAlias,
          //     child: Column(
          //       children: [
          //         TableCalendar(
          //           // locale: 'en_US',
          //           weekendDays: [7],
          //           daysOfWeekStyle: DaysOfWeekStyle(
          //             weekendStyle: TextStyle(
          //               color: Colors.redAccent,
          //               fontFamily: 'Comfortaa',
          //               fontWeight: FontWeight.w900,
          //             ),
          //             weekdayStyle: TextStyle(
          //               color: Colors.black54,
          //               fontFamily: 'Comfortaa',
          //               fontWeight: FontWeight.w900,
          //             ),
          //           ),
          //           firstDay: DateTime(1990),
          //           focusedDay: focusedDay,
          //           lastDay: DateTime(2100),
          //           calendarFormat: format,
          //           onFormatChanged: (CalendarFormat _format) {
          //             setState(() {
          //               format = _format;
          //             });
          //           },
          //           startingDayOfWeek: StartingDayOfWeek.monday,
          //           daysOfWeekVisible: true,
          //           onDaySelected: (selectDay, focusDay) {
          //             setState(() {
          //               selectedDay = selectDay;
          //               focusedDay = focusDay;
          //             });
          //             print(focusedDay);
          //           },
          //           selectedDayPredicate: (DateTime date) {
          //             return isSameDay(selectedDay, date);
          //           },

          //           eventLoader: _getSetoranFromDay,

          //           calendarStyle: CalendarStyle(
          //             isTodayHighlighted: true,
          //             selectedDecoration: BoxDecoration(
          //               // borderRadius: BorderRadius.circular(12),
          //               color: Colors.orange[200],
          //               shape: BoxShape.circle,
          //             ),
          //             selectedTextStyle: TextStyle(
          //                 color: Colors.white, fontFamily: 'Comfortaa'),
          //             todayTextStyle: TextStyle(
          //                 color: Colors.white, fontFamily: 'Comfortaa'),
          //             outsideTextStyle: TextStyle(
          //                 color: Colors.orange[200], fontFamily: 'Comfortaa'),
          //             defaultTextStyle: TextStyle(
          //                 color: Colors.orange[600], fontFamily: 'Comfortaa'),
          //             weekendTextStyle: TextStyle(
          //                 color: Colors.redAccent, fontFamily: 'Comfortaa'),
          //             todayDecoration: BoxDecoration(
          //               color: Colors.orange,
          //               shape: BoxShape.circle,
          //             ),
          //           ),
          //           calendarBuilders: CalendarBuilders(),
          //           headerStyle: HeaderStyle(
          //             decoration: BoxDecoration(
          //               color: Colors.orange,
          //             ),
          //             titleTextStyle: TextStyle(
          //               color: Colors.white,
          //               fontSize: 20,
          //               fontFamily: 'Comfortaa',
          //               fontWeight: FontWeight.w900,
          //             ),
          //             leftChevronIcon: Icon(
          //               Icons.chevron_left_rounded,
          //               color: Colors.white,
          //             ),
          //             rightChevronIcon: Icon(
          //               Icons.chevron_right_rounded,
          //               color: Colors.white,
          //             ),
          //             headerMargin: const EdgeInsets.only(bottom: 10),
          //             formatButtonVisible: false,
          //             titleCentered: true,
          //           ),
          //         ),
          //         ..._getSetoranFromDay(selectedDay).map(
          //           (Setoran setoran) => ListTile(
          //             title: Text(setoran.title),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(
              left: 50,
              right: 50,
            ),
            child: ElevatedButton(
              child: Text(
                "Select File",
                style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                selectfile();
              },
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Center(
              child: Text(
                fileName,
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(
              left: 50,
              right: 50,
            ),
            child: ElevatedButton(
              child: Text(
                "Upload File",
                style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                uploadFile();
              },
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Column(
              children: [
                task != null ? buildUploadStatus(task!) : Container(),
              ],
            ),
          ),
          SizedBox(height: 50),
        ],
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   label: Text("Upload File"),
      //   // onPressed: () => showDialog(
      //   //   context: context,
      //   //   builder: (context) => AlertDialog(
      //   //     title: Text("Add Event"),
      //   //     content: TextFormField(controller: _fileUploadController),
      //   //     actions: [
      //   //       TextButton(
      //   //         onPressed: () => Navigator.pop(context),
      //   //         child: Text("Cancel"),
      //   //       ),
      //   //       TextButton(
      //   //         child: Text("Ok"),
      //   //         onPressed: () {
      //   //           if (_fileUploadController.text.isEmpty) {
      //   //           } else {
      //   //             if (selectedFiles![selectedDay] != null) {
      //   //               selectedFiles![selectedDay]!.add(
      //   //                 Setoran(title: _fileUploadController.text),
      //   //               );
      //   //             } else {
      //   //               selectedFiles![selectedDay] = [
      //   //                 Setoran(title: _fileUploadController.text),
      //   //               ];
      //   //             }
      //   //           }
      //   //           Navigator.pop(context);
      //   //           _fileUploadController.clear();
      //   //           setState(() {});
      //   //           return;
      //   //         },
      //   //       ),
      //   //     ],
      //   //   ),
      //   // ),
      //   onPressed: () {
      //   },
      //   icon: Icon(Icons.add),
      // ),
    );
  }

  // void selectMultipleFile() async {
  //   result = await FilePicker.platform.pickFiles(allowMultiple: true);
  //   if (result == null) return;

  //   // PlatformFile? file = result!.files.first;
  //   // final path = result!.files.single.path;
  //   // setState(() => result = FilePickerResult(path));

  //   loadSelectedFiles(result!.files);
  // }

  // void loadSelectedFiles(List<PlatformFile> files) {
  //   Navigator.of(context).push(
  //     MaterialPageRoute(
  //       builder: (context) => FileList(
  //         files: files,
  //         onOpenedFile: openFile,
  //       ),
  //     ),
  //   );
  // }

  // void openFile(PlatformFile file) {
  //   OpenFile.open(file.path);
  // }

  Future selectfile() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: false);

    if (result == null) return;

    final path = result.files.single.path!;
    setState(() => file = File(path));
  }

  Future uploadFile() async {
    if (file == null) return;

    final fileName = basename(file!.path);
    final destination = 'files/$fileName';

    task = FirebaseApi.uploadFile(destination, file!);
    setState(() {});

    if (task == null) return;

    final snapshot = await task!.whenComplete(() {});
    final urlDownload = await snapshot.ref.getDownloadURL();

    print('Download-Link: $urlDownload');
  }

  Widget buildUploadStatus(UploadTask task) => StreamBuilder<TaskSnapshot>(
      stream: task.snapshotEvents,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final snap = snapshot.data;
          final prog = snap!.bytesTransferred / snap.totalBytes;
          final percentage = (prog * 100).toStringAsFixed(2);

          return Text(
            '$percentage %',
            style: TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          );
        } else {
          return Container();
        }
      });
}
