import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:appmenia/utils/data.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class bill extends StatefulWidget {
  const bill({super.key});

  @override
  State<bill> createState() => _billState();
}

class _billState extends State<bill> {
  final pw.Document pdf = pw.Document();
  @override
  void initState() {
    super.initState();

    pdf.addPage(pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) {
          return pw.Column(
            children: [
              pw.Expanded(
                flex: 2,
                child: pw.Center(
                  child: pw.Column(
                    mainAxisAlignment: pw.MainAxisAlignment.start,
                    children: [
                      pw.Text(
                        "Dmart",
                        style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      pw.Text(
                        "Bill:-2801474585555",
                        style: pw.TextStyle(fontSize: 17),
                      ),
                      pw.Text(
                        "GST:-27AACCA8432H1ZQ",
                        style: pw.TextStyle(fontSize: 17),
                      ),
                      pw.Divider(
                        color: PdfColor.fromInt(Colors.black.value),
                      ),
                      pw.Container(
                        width: 250,
                        child: pw.Text(
                            "Addrees:-dmart,narmada Mall,Vasant Sagar Complex,kalavd road,"),
                      ),
                    ],
                  ),
                ),
              ),
              pw.Expanded(
                flex: 6,
                child: pw.Column(
                  children: [
                    pw.Padding(
                      padding: pw.EdgeInsets.only(top: 5, left: 9, right: 9),
                      child: pw.Container(
                        width: double.infinity,
                        height: 50,
                        child: pw.Row(
                          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                          children: [
                            pw.Text(
                              "Items",
                              style: pw.TextStyle(
                                fontWeight: pw.FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            pw.Row(
                              children: [
                                pw.Padding(
                                  padding: pw.EdgeInsets.only(right: 28),
                                  child: pw.Text(
                                    "Rate",
                                    style: pw.TextStyle(
                                      fontWeight: pw.FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                pw.Padding(
                                  padding: pw.EdgeInsets.only(right: 28),
                                  child: pw.Text(
                                    "Qty",
                                    style: pw.TextStyle(
                                      fontWeight: pw.FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                pw.Padding(
                                  padding: pw.EdgeInsets.only(right: 28),
                                  child: pw.Text(
                                    "Dis.",
                                    style: pw.TextStyle(
                                      fontWeight: pw.FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                pw.Text(
                                  "Amt",
                                  style: pw.TextStyle(
                                    fontWeight: pw.FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    ...ProductData.cartProductData.map(
                      (e) => pw.Padding(
                        padding: pw.EdgeInsets.only(left: 9, right: 9),
                        child: pw.Container(
                          width: double.infinity,
                          height: 50,
                          child: pw.Row(
                            mainAxisAlignment:
                                pw.MainAxisAlignment.spaceBetween,
                            children: [
                              pw.Text(
                                "${e['title']}",
                                style: pw.TextStyle(
                                  fontWeight: pw.FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              pw.Row(
                                children: [
                                  pw.Padding(
                                    padding:
                                        const pw.EdgeInsets.only(right: 50),
                                    child: pw.Text(
                                      "${e['price']}",
                                      style: pw.TextStyle(
                                        fontWeight: pw.FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  pw.Padding(
                                    padding:
                                        const pw.EdgeInsets.only(right: 50),
                                    child: pw.Text(
                                      "${e['count']}",
                                      style: pw.TextStyle(
                                        fontWeight: pw.FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  pw.Padding(
                                    padding: pw.EdgeInsets.only(right: 50),
                                    child: pw.Text(
                                      "${e['discountPercentages']}",
                                      style: pw.TextStyle(
                                        fontWeight: pw.FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  pw.Text(
                                    "${e['total']}",
                                    style: pw.TextStyle(
                                      fontWeight: pw.FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              pw.Divider(
                color: PdfColor.fromInt(Colors.black.value),
              ),
              pw.Expanded(
                flex: 1,
                child: pw.Row(
                  crossAxisAlignment: pw.CrossAxisAlignment.center,
                  mainAxisAlignment: pw.MainAxisAlignment.end,
                  children: [
                    pw.Padding(
                      padding: const pw.EdgeInsets.only(right: 24.0),
                      child: pw.Text(
                        "\$${ProductData.dis()}",
                        style: pw.TextStyle(
                          fontSize: 19.5,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                    ),
                    pw.Padding(
                      padding: const pw.EdgeInsets.only(right: 9.0),
                      child: pw.Text(
                        "\$${ProductData.totalPrice()}",
                        style: pw.TextStyle(
                          fontSize: 20,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              pw.Expanded(
                flex: 2,
                child: pw.Column(
                  children: [
                    pw.Divider(
                      color: PdfColor.fromInt(Colors.black.value),
                    ),
                    pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: pw.CrossAxisAlignment.center,
                      children: [
                        pw.Padding(
                          padding: const pw.EdgeInsets.only(left: 10),
                          child: pw.Text(
                            "PAID",
                            style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                        ),
                        pw.Padding(
                          padding: const pw.EdgeInsets.only(right: 10),
                          child: pw.Text(
                            "Total:-${ProductData.grandTotal()}",
                            style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ],
                    ),
                    pw.Divider(
                      color: PdfColor.fromInt(Colors.black.value),
                    ),
                    pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.center,
                      crossAxisAlignment: pw.CrossAxisAlignment.center,
                      children: [
                        pw.Text(
                          "***Have A Nice Day***",
                          style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                    pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.center,
                      crossAxisAlignment: pw.CrossAxisAlignment.center,
                      children: [
                        pw.Text(
                          "Date:-25-04-2024",
                          style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold, fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Dmart",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      "Bill:-2801474585555",
                      style: TextStyle(fontSize: 17),
                    ),
                    Text(
                      "GST:-27AACCA8432H1ZQ",
                      style: TextStyle(fontSize: 17),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Container(
                      width: 250,
                      child: Text(
                          "Addrees:-dmart,narmada Mall,Vasant Sagar Complex,kalavd road,"),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5, left: 9, right: 9),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Items",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 28),
                                child: Text(
                                  "Rate",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 28),
                                child: Text(
                                  "Qty",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 28),
                                child: Text(
                                  "Dis.",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Text(
                                "Amt",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  ...ProductData.cartProductData.map(
                    (e) => Padding(
                      padding: EdgeInsets.only(left: 9, right: 9),
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${e['title']}",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Text(
                                    "${e['price']}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Text(
                                    "${e['count']}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 50),
                                  child: Text(
                                    "${e['discountPercentages']}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Text(
                                  "${e['total']}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 24.0),
                    child: Text(
                      "\$${ProductData.dis()}",
                      style: TextStyle(
                        fontSize: 19.5,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 9.0),
                    child: Text(
                      "\$${ProductData.totalPrice()}",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Divider(
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "PAID",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          "Total:-${ProductData.grandTotal()}",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "***Have A Nice Day***",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Date:-25-04-2024",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0, bottom: 2),
                  child: FloatingActionButton(
                    onPressed: () async {
                      final Directory? directory =
                          await getExternalStorageDirectory();
                      final File file =
                          File("${directory!.path}/${ProductData.pdfName}.pdf");
                      await file.writeAsBytes(await pdf.save());
                    },
                    child: Icon(Icons.download),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
