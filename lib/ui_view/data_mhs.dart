import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Data Mahasiswa',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      
      home: Mahasiswa(),
      
    );

    
    
  }
}
class Mahasiswa extends StatefulWidget {
  @override
  _myMahasiswa createState() => _myMahasiswa();
}

class _myMahasiswa extends State<Mahasiswa> {


  @override
  
  Widget build(BuildContext context) {
  
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Data Mahasiswa"),
        backgroundColor: Colors.deepPurple,
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        
        child: DataTable(
          
          columns: <DataColumn>[
            
            DataColumn(label: Text("Nama")),
            DataColumn(label: Text("NPM")),
            DataColumn(label: Text("Kelas")),
            DataColumn(label: Text("Jurusan")),
          ],
          rows: <DataRow>[
            DataRow(
                cells: <DataCell>[
                  DataCell(Text("Arya Wiguna")),
                  DataCell(Text("21552011432")),
                  DataCell(Text("TIF Purwakarta")),
                  DataCell(Text("Teknik Informatika")),
                ],
            ),
            DataRow(
                cells: <DataCell>[
                  DataCell(Text("Novi Sulistiani")),
                  DataCell(Text("21552011464")),
                  DataCell(Text("TIF Purwakarta")),
                  DataCell(Text("Teknik Informatika")),
                ],
            ),
            DataRow(
                cells: <DataCell>[
                  DataCell(Text("Linda Amelia")),
                  DataCell(Text("21552011465")),
                  DataCell(Text("TIF Purwakarta")),
                  DataCell(Text("Teknik Informatika")),
                ],
            ),
          ],
        ),
      ),
    );

    
  }
}