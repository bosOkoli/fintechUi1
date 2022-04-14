import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tweet_fintech/my_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 230, 230),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(top: 80.h, right: 20.h, left: 20.h, bottom: 40.h),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                Container(
                  height: 28.h,
                  width: 28.w,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorSelect.purpleMainColor),
                  child: const Center(
                      child: Image(
                    image: AssetImage('assets/images/cartonhead.png'),
                    fit: BoxFit.contain,
                  )),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'Hello SAPA',
                  style: GoogleFonts.dmSans(fontSize: 17.sp),
                ),
                const Spacer(),
                const Icon(Icons.notifications_active_rounded,
                    color: ColorSelect.purpleMainColor)
              ],
            ),
            SizedBox(
              height: 80.h,
            ),
            Container(
              decoration: BoxDecoration(
                  boxShadow: const [
                    //background color of box
                    BoxShadow(
                      color: Color.fromARGB(255, 148, 175, 243),
                      blurRadius: 10.0, // soften the shadow
                      spreadRadius: 0.0, //extend the shadow
                      offset: Offset(
                        0.0, // Move to right 10  horizontally
                        10.0, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                  gradient: const LinearGradient(colors: [
                    ColorSelect.purpleMainColor,
                    Color.fromARGB(255, 2, 21, 58),
                    Color.fromARGB(255, 32, 87, 226)
                  ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                  borderRadius: BorderRadius.circular(15.r),
                  color: ColorSelect.purpleMainColor),
              child: Padding(
                padding: EdgeInsets.only(
                    top: 30.h, bottom: 30.h, right: 20.w, left: 25.w),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Available Balance',
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 45.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('\u0024390,000.00',
                              style: GoogleFonts.dmSans(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white)),
                          const Icon(Icons.visibility, color: Colors.white)
                        ],
                      )
                    ]),
              ),
            ),
            SizedBox(
              height: 23.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: ColorSelect.purpleMainColor, width: 2)),
                    child: Center(
                      child: Container(
                          height: 10,
                          width: 10,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorSelect.purpleMainColor)),
                    )),
                SizedBox(
                  width: 5.w,
                ),
                Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorSelect.purpleMainColor)),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Qick Access',
              style: GoogleFonts.dmSans(
                  fontSize: 16.sp, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 80.h,
                    width: 80.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        color: Color.fromARGB(255, 186, 201, 251)),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.h, bottom: 2.h),
                        child: Column(
                          children: [
                            Icon(
                              Icons.near_me,
                              color: Color.fromARGB(255, 64, 98, 234),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text('Transfer',
                                style: GoogleFonts.dmSans(
                                    color: Color.fromARGB(255, 64, 98, 234),
                                    fontSize: 15.sp))
                          ],
                        ),
                      ),
                    )),
                Container(
                    height: 80.h,
                    width: 80.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        color: Color.fromARGB(255, 245, 220, 183)),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.h, bottom: 2.h),
                        child: Column(
                          children: [
                            Icon(
                              Icons.currency_exchange,
                              color: Colors.orange,
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text('Convert',
                                style: GoogleFonts.dmSans(
                                    color: Colors.orange, fontSize: 15.sp))
                          ],
                        ),
                      ),
                    )),
                Container(
                    height: 80.h,
                    width: 80.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        color: Color.fromARGB(255, 198, 228, 199)),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.h, bottom: 2.h),
                        child: Column(
                          children: [
                            Icon(
                              Icons.bolt_outlined,
                              color: Colors.green,
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text('Electricity',
                                style: GoogleFonts.dmSans(
                                    color: Colors.green, fontSize: 15.sp))
                          ],
                        ),
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 80.h,
                    width: 80.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        color: Color.fromARGB(255, 250, 226, 255)),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.h, bottom: 2.h),
                        child: Column(
                          children: [
                            Icon(
                              Icons.phone_android_outlined,
                              color: Colors.purple,
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text('Airtime',
                                style: GoogleFonts.dmSans(
                                    color: Colors.purple, fontSize: 15.sp))
                          ],
                        ),
                      ),
                    )),
                Container(
                    height: 80.h,
                    width: 80.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        color: Color.fromARGB(255, 251, 197, 193)),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.h, bottom: 2.h),
                        child: Column(
                          children: [
                            Icon(
                              Icons.laptop,
                              color: Colors.red,
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text('Cable TV',
                                style: GoogleFonts.dmSans(
                                    color: Colors.red, fontSize: 15.sp))
                          ],
                        ),
                      ),
                    )),
                Container(
                    height: 80.h,
                    width: 80.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        color: Color.fromARGB(255, 199, 228, 251)),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.h, bottom: 2.h),
                        child: Column(
                          children: [
                            Icon(
                              Icons.wifi,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text('Internet',
                                style: GoogleFonts.dmSans(
                                    color: Colors.blue, fontSize: 15.sp))
                          ],
                        ),
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 17.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Transactions',
                  style: GoogleFonts.dmSans(
                      fontSize: 15.sp, fontWeight: FontWeight.w700),
                ),
                Text(
                  'View all',
                  style: GoogleFonts.dmSans(
                      color: Color.fromARGB(255, 0, 95, 219)),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.white),
              child: Padding(
                padding: EdgeInsets.only(
                    top: 5.h, right: 10.h, left: 10.h, bottom: 5.h),
                child: Column(children: [
                  Row(
                    children: [
                      Container(
                        height: 40.h,
                        width: 40.h,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 251, 197, 193)),
                        child: Icon(
                          Icons.laptop,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Cable Tv Subcription',
                              style: GoogleFonts.dmSans(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w700)),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                            '11 April 2021',
                            style: GoogleFonts.dmSans(fontSize: 12.sp),
                          )
                        ],
                      ),
                      Spacer(),
                      Text(
                        '-\u0024250.00',
                        style: GoogleFonts.dmSans(
                            color: Colors.red, fontSize: 12.sp),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 40.h,
                        width: 40.h,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 198, 228, 199)),
                        child: Icon(
                          Icons.square_foot,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Payday',
                              style: GoogleFonts.dmSans(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w700)),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                            '31 March 2022',
                            style: GoogleFonts.dmSans(fontSize: 12.sp),
                          )
                        ],
                      ),
                      Spacer(),
                      Text(
                        '+\u00243500.00',
                        style: GoogleFonts.dmSans(
                            color: Colors.green, fontSize: 12.sp),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 40.h,
                        width: 40.h,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 251, 197, 193)),
                        child: Icon(
                          Icons.near_me,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Transfer to Adeyini Eniola',
                              style: GoogleFonts.dmSans(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w700)),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                            '30 March 2022',
                            style: GoogleFonts.dmSans(fontSize: 12.sp),
                          )
                        ],
                      ),
                      Spacer(),
                      Text(
                        '-\u00241000.00',
                        style: GoogleFonts.dmSans(
                            color: Colors.red, fontSize: 12.sp),
                      )
                    ],
                  )
                ]),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
