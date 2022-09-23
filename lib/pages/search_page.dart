import 'package:ecommerce_app/pages/cart_page.dart';
import 'package:ecommerce_app/pages/home_page.dart';
import 'package:ecommerce_app/widgets/product_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF030E22),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
             padding: const EdgeInsets.only(
                  top: 60,
                  left: 15,
                  right: 15,
              ),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xff2C3545),
                      borderRadius: BorderRadius.circular(13),
                    ),
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
                        'assets/left_arrow.png',
                      ),
                    ),
                  ),
                  SizedBox(
                      width: 8,
                  ),
                  Flexible(
                    child:Container(
                          width: 295,
                          height: 40,
                          child: TextFormField(
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(
                                top: 11,
                                bottom: 11,
                              ),
                              fillColor: Color(0xff2C3545),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21),
                                borderSide: BorderSide.none,
                              ),
                              hintText: "I'm searching for...",
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
                    InkWell(
                      onTap: (){
                        Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                pageBuilder: (
                                context, animation1, animation2) =>
                                  CartPage(),
                                transitionDuration: Duration(
                                    seconds: 0
                                  )
                                ),
                            );
                      },
                      child: Container(
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
                            'assets/checkout_icon.png'
                          ),
                        ]
                      ),
                                      ),
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only
              (
                top: 24.0,
                left: 15,
                right: 15,
                bottom: 100,
              ),
              child: Column(
                children: [
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
                            imageUrl: 'assets/product_seven.png',
                            name: 'Nike Air X-203F..',
                            ratings: 'assets/star_icon.png',
                            amount: '(16)',
                            price: 'Rp3.765.000',
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
                            name: 'Nike Yezzy T-20..',
                            ratings: 'assets/product_eight.png',
                            amount: '(16)',
                            price: 'Rp1.237.000',
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          ProductList(
                            imageUrl: 'assets/product_nine.png',
                            name: 'Nike P-Y671 Exc..',
                            ratings: 'assets/star_icon.png',
                            amount: '(16)',
                            price: 'Rp4.225.000',
                          ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                       ProductList(
                          imageUrl: 'assets/product_ten.png',
                          name: 'Nike Kenzy Nic..',
                           ratings: 'assets/star_icon.png',
                          amount: '(16)',
                            price: 'Rp650.000',
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          ProductList(
                            imageUrl: 'assets/product_eleven.png',
                            name: 'Nike Air Force X..',
                            ratings: 'assets/star_icon.png',
                            amount: '(16)',
                            price: 'Rp1.750.000',
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
    );
  }
}
