import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'add_students.dart';
import 'database.dart';
import 'chart.dart';
import 'home.dart';
import 'dart:io';
import 'package:excel/excel.dart';
import 'package:file_picker/file_picker.dart';
final dbHelper = DatabaseHelper();
class firstp extends StatefulWidget {
  const firstp({Key? key}) : super(key: key);

  @override
  State<firstp> createState() => _firstpState();
}

class _firstpState extends State<firstp> {
  String? _filePath;
  String? _fileName;
  bool isLoad = false;

  void _pickFile() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: true);
    print(result);

    if (result == null) return;

    // we get the file from result object
    final file = result.files.first;
    setState(() {
      _fileName = file.name;
    });
    var bytes = File(file.path ?? "").readAsBytesSync();
    var excel = Excel.decodeBytes(bytes);
    final row = excel.tables[excel.tables.keys.first]!.rows
        .map((e) => e.map((e) => e!.value).toList())
        .toList();

    row.forEach((e) async {
      int index = row.indexOf(e);
      print(row[index][0]);
      Map<String, dynamic> rw = {
        DatabaseHelper.columnName: row[index][1].toString(),
        DatabaseHelper.columnReg: row[index][2].toString(),
        DatabaseHelper.columnEmail: row[index][3].toString(),
        DatabaseHelper.columnGender: row[index][6].toString(),
        DatabaseHelper.columnPhone: row[index][4].toString(),
        DatabaseHelper.columnStatus: row[index][7].toString(),
        DatabaseHelper.columnFee: row[index][5],
      };
      final id = await dbHelper.insert(rw);
      debugPrint('inserted row id: $id');

      if (id != null) {
        const snackBar = SnackBar(

          content: Text(' ROW INSERTED',style: TextStyle(color :Colors.amber),),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else {
        const snackBar = SnackBar(
          content: Text('Something Went wrong'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Party App',style: TextStyle(color: Colors.amber),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body:
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/ss.gif"),
                fit: BoxFit.cover),
          ),

        child: Column(
          children: [
            Container(
              height: 50,
              color: Colors.amber,
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
    ElevatedButton(
    child: Text('View Data', style: TextStyle(color: Colors.amber),),
    style: ElevatedButton.styleFrom(

    backgroundColor: Colors.black,
    ),
    onPressed:() {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        );
    }
        ),
        ElevatedButton(
            child: Text('Inspection', style: TextStyle(color: Colors.amber),),
            style: ElevatedButton.styleFrom(

              backgroundColor: Colors.black,
            ),
            onPressed:() {
              zee();

              PieChartSample2();
              setState(() {

                zee();
                PieChartSample2();
              });

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PieChartSample2()),
              );

            }
        ),

        ],
    ),


              ),

        SizedBox(
          height: 480,
        ),
        Row(
          children: [
            ElevatedButton(
              child: CircleAvatar(
                radius: 130,
                backgroundColor: Colors.transparent,

                child: ClipOval(
                  child: Image.asset("images/jj.png",
                  ),


                ),
              ),
              onPressed: () { Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddStudents()),
              );},
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(100, 100),
                shape: const CircleBorder(),
                backgroundColor: Colors.amber,
              ),
            ),
            Spacer(),
            ElevatedButton(
              child: CircleAvatar(
                radius: 130,
                backgroundColor: Colors.transparent,

                child: ClipOval(
                  child: Image.asset("images/kk.jpg",
                  ),


                ),
              ),
              onPressed: () {
                _pickFile();
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(100, 100),
                shape: const CircleBorder(),
                backgroundColor: Colors.amber,
              ),
            ),
          ],
        ),

            SizedBox(
              height: 20,
            ),




          ],

        ),
      ),


    );
  }
}
