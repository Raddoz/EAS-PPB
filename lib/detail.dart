import 'package:flutter/material.dart';
import 'package:project_pbb/dashboard.dart';
import 'package:project_pbb/home.dart';

class DetailProduct extends StatefulWidget {
  const DetailProduct({super.key});

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back_ios),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset('images/detail.png'),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Coffe',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Raleway',
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Chocolate Frappuccino',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Image.asset('images/rate.png'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at mi vitae augue feugiat scelerisque in a eros.'),
            SizedBox(
              height: 20,
            ),
            Image.asset('images/pick it.png'),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                showOrderConfirmationDialog(context);
              },
              child: Container(
                height: 55,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFF00623B),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    'Masukkan Keranjang',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

void showOrderConfirmationDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(
          padding: EdgeInsets.all(15),
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Konfirmasi Pesanan',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Image.asset(
                    'images/frappuccino.png', // Ensure you have this image asset
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Chocolate Frappuccino'),
                      Text('1x'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 100),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('IDR 30.000'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop(); // Close the dialog
                    },
                    child: Container(
                      width: 122,
                      height: 27,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Color(0xFF00623B),
                          )),
                      child: Center(
                        child: Text('Batalkan'),
                      ),
                    ),
                  ),
                  // TextButton(
                  //   onPressed: () {
                  //     Navigator.of(context).pop(); // Close the dialog
                  //   },
                  //   child: Text('Batalkan'),
                  // ),
                  InkWell(
                    onTap: () {
                      showSuksesToPoint(context); // Close the dialog
                    },
                    child: Container(
                      width: 122,
                      height: 27,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xFF00623B),
                      ),
                      child: Center(
                        child: Text(
                          'Konfirmasi',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}

void showSuksesToPoint(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false, // Mencegah dialog ditutup dengan tap di luar
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Container(
          padding: EdgeInsets.all(15),
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Pembelian Berhasil',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 20),
              FutureBuilder<void>(
                future: Future.delayed(Duration(seconds: 2)),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    // Menampilkan informasi poin setelah konfirmasi pembelian
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'Selamat! Anda Mendapatkan Poin',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Anda mendapatkan 50 poin dari pembelian ini.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Home())), // Tutup dialog
                          child: Text('OK'),
                        ),
                      ],
                    );
                  } else {
                    // Tampilkan indikator loading saat menunggu
                    return CircularProgressIndicator();
                  }
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}
