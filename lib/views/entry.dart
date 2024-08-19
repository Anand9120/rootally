import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rootally/views/assessment_screen.dart';

class EntryScreen extends StatelessWidget {
  const EntryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: 1000.h, // Adjust the height to accommodate the content
          child: Stack(
            children: [
              Container(
                color: Colors.white,
              ),
              SizedBox(
                height: 322.h,
                width: 375.w,
                child: Image.asset(
                  'assets/images/Rectangle 2746.png',
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: 62.h,
                left: 35.w,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => AssessmentScreen()),
                    );
                  },
                  child: SizedBox(
                    width: 14,
                    height: 14,
                    child: Icon(Icons.arrow_back),
                  ),
                ),
              ),
              Positioned(
                top: 52.h,
                left: 199.w,
                child: Image.asset(
                  'assets/images/image 216.png',
                  width: 145.w,
                  height: 202.h,
                ),
              ),
              Positioned(
                top: 116.h,
                left: 36.w,
                child: Text(
                  'Health Risk\nAssessment',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24.sp,
                    fontFamily: 'Poppins',
                    color: const Color(0xff222E58),
                  ),
                ),
              ),
              Positioned(
                top: 195.h,
                left: 36.w,
                child: Image.asset(
                  'assets/images/Group 7198.png',
                  width: 62.w,
                  height: 20.h,
                ),
              ),
              Positioned(
                top: 254.h,
                child: Container(
                  width: 375.w,
                  height: 561.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26),
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 278.h,
                left: 19.w,
                child: Text(
                  'What do you get ?',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15.sp,
                    fontFamily: 'Poppins',
                    color: const Color(0xff222E58),
                  ),
                ),
              ),
              Positioned(
                top: 312.h,
                left: 27.w,
                child: Image.asset(
                  'assets/images/Group 1171275012.png',
                  width: 320.w,
                  height: 96.h,
                ),
              ),
              Positioned(
                top: 460.h,
                left: 27.w,
                child: Text(
                  'How we do it?',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15.sp,
                    fontFamily: 'Poppins',
                    color: const Color(0xff222E58),
                  ),
                ),
              ),
              Positioned(
                top: 415.h,
                left: 180.w,
                child: Image.asset(
                  'assets/images/Group 1171275252.png',
                  width: 139.w,
                  height: 139.h,
                ),
              ),
              Positioned(
                top: 499.h,
                left: 19.w,
                child: Container(
                  width: 337.w,
                  height: 350.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: const Color(0xffFAFCFF),
                    border: Border.all(color: const Color(0xffE6E6E6)),
                  ),
                ),
              ),
              Positioned(
                top: 463.h,
                left: 44.w,
                child: Image.asset(
                  'assets/images/Untitled-1 3.png',
                  width: 290.w,
                  height: 182.h,
                ),
              ),
              Positioned(
                top: 477.h,
                left: 46.5.w,
                child: Image.asset(
                  'assets/images/Vector 999.png',
                  width: 232.5.w,
                  height: 137.h,
                ),
              ),
              Positioned(
                top: 494.h,
                left: 72.w,
                child: Image.asset(
                  'assets/images/Group 1171275254.png',
                  width: 185.w,
                  height: 108.h,
                ),
              ),
              Positioned(
                top: 654.h,
                left: 27.w,
                child: Image.asset(
                  'assets/images/Group 1171275250.png',
                  width: 321.w,
                  height: 185.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
