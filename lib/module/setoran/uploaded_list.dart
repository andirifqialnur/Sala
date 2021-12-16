import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class FileList extends StatefulWidget {
  final List<PlatformFile>? files;
  final ValueChanged<PlatformFile>? onOpenedFile;
  const FileList({
    Key? key,
    required this.onOpenedFile,
    required this.files,
  }) : super(key: key);

  @override
  _FileListState createState() => _FileListState();
}

class _FileListState extends State<FileList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Selected Files"),
      ),
      body: ListView.builder(
        itemCount: widget.files!.length,
        itemBuilder: (context, index) {
          final files = widget.files![index];
          return buildListFile(files);
        },
      ),
    );
  }

  Widget buildListFile(PlatformFile file) {
    final kb = file.size / 1024;
    final mb = kb / 1024;
    final size = (mb >= 1)
        ? '${mb.toStringAsFixed(2)}' ' MB'
        : '${mb.toStringAsFixed(2)}' ' KB';

    return InkWell(
      onTap: () {
        widget.onOpenedFile!(file);
      },
      child: ListTile(
        title: Text('${file.name}'),
        subtitle: Text('${size}'),
        trailing: Text('${file.extension}'),
      ),
    );
  }
}
