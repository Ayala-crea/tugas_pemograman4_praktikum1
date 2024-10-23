import 'package:flutter/material.dart';

// Halaman baru untuk menampilkan data penjualan
class DataPenjualanPage extends StatelessWidget {
  final List<Map<String, dynamic>> dataPenjualan;

  const DataPenjualanPage({Key? key, required this.dataPenjualan})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Penjualan'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: const [
            DataColumn(label: Text('No Faktur')),
            DataColumn(label: Text('Tanggal Penjualan')),
            DataColumn(label: Text('Nama Customer')),
            DataColumn(label: Text('Jumlah Barang')),
            DataColumn(label: Text('Total Penjualan')),
          ],
          rows: dataPenjualan.map((penjualan) {
            return DataRow(cells: [
              DataCell(Text(penjualan['noFaktur'])),
              DataCell(Text(penjualan['tanggalPenjualan'])),
              DataCell(Text(penjualan['namaCustomer'])),
              DataCell(Text(penjualan['jumlahBarang'].toString())),
              DataCell(Text(penjualan['totalPenjualan'].toString())),
            ]);
          }).toList(),
        ),
      ),
    );
  }
}
