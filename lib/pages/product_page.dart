import 'package:ecommerce_app/pages/home_page.dart';
import 'package:ecommerce_app/pages/notification_page.dart';
import 'package:ecommerce_app/pages/profile_page.dart';
import 'package:ecommerce_app/widgets/product_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030E22),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 68, left: 15, right: 15),
              child: Row(
                children: [
                  Flexible(
                    child: Container(
                      width: 295,
                      height: 40,
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                            top: 11,
                            bottom: 11,
                          ),
                          fillColor: Color(0xff2C3545),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(21),
                          ),
                          hintText: "I'm searching for..",
                          hintStyle: GoogleFonts.montserrat(
                            color: Color(0xff68687A),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xff68687A),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xff2C3545),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/checkout_icon.png',
                          width: 28,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 24,
                left: 15,
                right: 15,
                bottom: 100,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      ProductList(
                        imageUrl: 'assets/product_five.png',
                        name: 'Rexus Headphon..',
                        ratings: 'assets/star_icon.png',
                        amount: '(16)',
                        price: 'Rp1.650.000',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      ProductList(
                        imageUrl: 'assets/product_six.png',
                        name: 'Airpods',
                        ratings: 'assets/star_icon.png',
                        amount: '(16)',
                        price: 'Rp4.500.000',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      ProductList(
                        imageUrl: 'assets/product_three.png',
                        name: 'Philips LED Wi-F..',
                        ratings: 'assets/star_icon.png',
                        amount: '(16)',
                        price: 'Rp85.000',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      ProductList(
                        imageUrl: 'assets/product_four.png',
                        name: 'Garnier Pure Act..',
                        ratings: 'assets/star_icon.png',
                        amount: '(16)',
                        price: 'Rp27.839',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      ProductList(
                        imageUrl: 'assets/product_two.png',
                        name: 'Nike Air Force X',
                        ratings: 'assets/star_icon.png',
                        amount: '(16)',
                        price: 'Rp1.650.000',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      ProductList(
                        imageUrl: 'assets/watch.png',
                        name: 'Smartwatch 2.0',
                        ratings: 'assets/star_icon.png',
                        amount: '(16)',
                        price: 'Rp4.500.000',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    "You've reached the end",
                    style: GoogleFonts.montserrat(
                      color: Color(0xfFF8F7FD),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: GoogleFonts.montserrat(
          color: Color(0xffF8F7FD),
          fontSize: 10,
        ),
        unselectedLabelStyle: GoogleFonts.montserrat(
          color: Color(0xffCFCFCF),
          fontSize: 10,
        ),
        selectedItemColor: Color(0xffFFFFFF),
        unselectedItemColor: Color(0xffCFCFCF),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff030E22),
        currentIndex: 1,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                      pageBuilder: (
                      context, animation1, animation2) =>
                        HomePage(),
                        transitionDuration: Duration(
                          seconds: 0
                        )
                      ),
                  );
                },
                child: Image.asset(
                  'assets/navbar_home.png',
                  width: 16,
                ),
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
              child: InkWell(
                onTap: (){
                   Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                      pageBuilder: (
                      context, animation1, animation2) =>
                        ProductPage(),
                        transitionDuration: Duration(
                          seconds: 0
                        )
                      ),
                  );
                },
                child: Image.asset(
                  'assets/navbar_producton.png',
                  width: 16,
                ),
              ),
            ),
            label: 'Product',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
              child: InkWell(
                onTap: () {
                     Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                      pageBuilder: (
                      context, animation1, animation2) =>
                        NotificationPage(),
                        transitionDuration: Duration(
                          seconds: 0
                        )
                      ),
                  );
                },
                child: Image.asset(
                  'assets/navbar_notification.png',
                  width: 16,
                ),
              ),
            ),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
              child: InkWell(
                onTap: (){
                   Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                      pageBuilder: (
                      context, animation1, animation2) =>
                        ProfilePage(),
                        transitionDuration: Duration(
                          seconds: 0
                        )
                      ),
                  );
                },
                child: Image.asset(
                  'assets/navbar_profile.png',
                  width: 16,
                ),
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
