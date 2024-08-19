import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:rootally/theme/color.dart';
import 'package:rootally/views/entry.dart';

class AssessmentScreen extends StatefulWidget {
  const AssessmentScreen({super.key});

  @override
  State<AssessmentScreen> createState() => _AssessmentScreenState();
}

class _AssessmentScreenState extends State<AssessmentScreen> with TickerProviderStateMixin {
  final List<Map<String, dynamic>> items = [
    {
      'image1': 'assets/images/image 54.png',
      'image2': 'assets/images/sd 1.png',
      'image3': 'assets/images/Group 1171274967.png'
    },
    {
      'image1': 'assets/images/image 54.png',
      'image2': 'assets/images/sd 1.png',
      'image3': 'assets/images/Group 1171274967.png'
    },
    {
      'image1': 'assets/images/image 54.png',
      'image2': 'assets/images/sd 1.png',
      'image3': 'assets/images/Group 1171274967.png'
    },
    // Add more items as needed
  ];
  late Future<DocumentSnapshot<Map<String, dynamic>>> assessmentData;

  @override
  void initState() {
    super.initState();
    assessmentData = fetchAssessmentData();
  }

  Future<DocumentSnapshot<Map<String, dynamic>>> fetchAssessmentData() async {
    return FirebaseFirestore.instance.collection('assessments').doc('4jYAz2B42LAtdqzTNNKn').get();
  }


  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.white,),
          Positioned(
            top: 59.h,
            left: 35.w,
            child: Text(
              'Hello Jane',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textColor1,
              ),
            ),
          ),
          Positioned(
            top: 61.h,
            left: 320.w,
            child: SizedBox(
              height: 24.h,
              width: 24.w,
              child: Image.asset('assets/images/Group 7073.png'),
            ),
          ),
          Positioned(
            top: 97.h,
            left: 18.w,
            child: Container(
              width: 338.w,
              height: 47.h,
              decoration: BoxDecoration(
                color: const Color(0xffF1F1F9),
                borderRadius: BorderRadius.circular(23.5),
              ),
              child: TabBar(
                controller: tabController,
                indicatorSize: TabBarIndicatorSize.tab,indicatorPadding:const EdgeInsets.all(4),unselectedLabelColor: AppColors.textColor2,dividerHeight: 0,labelColor: AppColors.textColor1,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(23.5),
                  color: Colors.white,
                ),

                tabs: [
                  Tab(
                    child: Text(
                      'My Assessments',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,

                      ),


                    ),
                  ),
                  Tab(
                    child: Text(
                      'My Appointments',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,

                      ),


                    ),
                  ),
                ],
              ),
            ),
          ),
              Positioned(
              top: 156.h,
    left: 18.w,
    right: 18.w,
     // Ensure the TabBarView fills the remaining space
    child: SizedBox(
    width: 338.w,height: 303.h,
    child: TabBarView(
    controller: tabController,
    children: [
      FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
        future: assessmentData,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (!snapshot.hasData || snapshot.hasError) {
            return Center(child: Text("Failed to load data"));
          }
          final data = snapshot.data!.data();
          final title = data?['title'] ?? 'Default Title';
          final description = data?['description'] ?? 'Default Description';
          final title1 = data?['title1'] ?? 'Default Title';
          final description1 = data?['description1'] ?? 'Default Description';
          return Container(
            decoration: BoxDecoration(
              color: const Color(0xffF6F6FB),
              borderRadius: BorderRadius.circular(21),
            ),
            child: Column(
              children: [
                SizedBox(height: 10.h),
                Container(
                  height: 116.h,
                  width: 315.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(11),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 133.w,
                        height: 116.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(21.w),
                            topLeft: Radius.circular(21.w),
                          ),
                        ),
                        child: Image.asset(
                          'assets/images/Group 6935.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 18.w, top: 5.h),
                              child: Text(
                                title,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 18.w, top: 5.h),
                              child: Text(
                                description,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  color: Colors.grey,
                                  fontSize: 10.sp,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 18.w, top: 5.h),
                              child: Image.asset('assets/images/Group 6308.png'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h,),
                Container(height: 131.h,width: 315.w,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(11)),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 133.w,height: 131.h,child: Stack(children: [
                        Positioned.fill(child: Image.asset('assets/images/Rectangle 2682.png',fit: BoxFit.fill,)),
                        Positioned(top: 2.h,left: 20.w,bottom: 2.h,
                            child: Image.asset('assets/images/image 56.png',width: 99.w,height: 126.h,)),]),)
                      ,Expanded(
                        child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Padding(
                              padding: EdgeInsets.only(left: 18.w,top: 5.h),
                              child: Text(title1, style: TextStyle(
                                fontWeight: FontWeight.w600,fontFamily: 'Poppins',color: AppColors.textColor2,
                                fontSize: 14.sp,)),
                            ),Padding(
                              padding: EdgeInsets.only(left: 18.w,top: 5.h,right: 20.w),
                              child: Text(description1, style: TextStyle(
                                fontWeight: FontWeight.w500,fontFamily: 'Poppins',color: AppColors.textColor2,
                                fontSize: 10.sp,),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: 18.w,top: 5.h),
                              child: GestureDetector(
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => EntryScreen()),
                                    );
                                  },
                                  child: Image.asset('assets/images/Group 6308.png')),
                            )
                          ],
                        ),
                      )
                    ],),
                ),
                SizedBox(height: 5.h,),
                SizedBox(
                  width: 90.w,
                  height: 22.h,
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(AppColors.textColor2),
                      padding: WidgetStateProperty.all(EdgeInsets.zero), // Remove default padding
                    ),
                    child: Center(
                      child: Text(
                        'View all',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                )


                // Add more widgets as needed
              ],
            ),
          );
        },
      ),
      Container(decoration:BoxDecoration(
          color: const Color(0xffF6F6FB),borderRadius: BorderRadius.circular(21)
      ),
        height: 338.h,
        width: 303.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:  EdgeInsets.only(left:16.w,top:16.h),
                child: SizedBox(width: 147.w,height: 113.h,
                  child: Image.asset('assets/images/Group 1171274977.png',),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(right:16.w,top:16.h),
                child: SizedBox(width: 147.w,height: 113.h,
                  child: Image.asset('assets/images/Group 1171274978.png'),
                ),
              )
            ],
          ),
            Padding(
              padding:  EdgeInsets.only(left:16.w,top:16.h),
              child: SizedBox(width: 147.w,height: 113.h,
                child: Image.asset('assets/images/Group 1171274979.png'),
              ),
            ),
            SizedBox(height: 10.h,),
            Padding(
              padding: EdgeInsets.only(left: 124.w),
              child: SizedBox(
                width: 90.w,
                height: 22.h,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(AppColors.textColor2),
                    padding: WidgetStateProperty.all(EdgeInsets.zero), // Remove default padding
                  ),
                  child: Center(
                    child: Text(
                      'View all',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ]
          ,
        ),

      ),
    ],
    )
    ),
              ),
          Positioned(top: 477.h,left: 36.w,
              child: Text('Challenges',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14.sp,fontFamily: 'Poppins',color: AppColors.textColor3),)),
          Positioned(top: 477.h,left: 261.w,
              child: Column(
                children: [
                  Text('View All',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12.sp,fontFamily: 'Poppins',color: AppColors.textColor3),),
                  Container( // Adjust the space between text and line
                    height: .5.h, // Thickness of the line
                    width: 50.w, // Length of the line
                    color: Colors.black, // Color of the line
                  ),

                ],
              )
          )
, Positioned(top: 473.h,left: 319.w,
    child:Container(height:24.h,width:24.w,child:const Icon(Icons.arrow_forward,color: Colors.white,size: 16,) ,decoration: BoxDecoration(color: AppColors.textColor2,borderRadius: BorderRadius.circular(50)),) ),
          Positioned(left:18.w ,top:502.h ,
              child: Container(width: 338.w,height:129.h,decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),  color: const Color(0xffC1EAD1)),
          )),
          Positioned(top: 510.h,left: 35.w,
              child: Text('Today’s Challenge!',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12.sp,fontFamily: 'Poppins',color: const Color(0xff2B7A71),)),
          ),
          Positioned(top: 530.h,left: 35.w,
              child:Container(height:18.h,width:84.w ,child:Center(child: Text('Push Up 20x',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10.sp,fontFamily: 'Poppins',color: Colors.white))),decoration: BoxDecoration(color: const Color(0xff2B7A71) ,borderRadius: BorderRadius.circular(50)),) ),
          Positioned(top: 556.h,left: 35.w,
            child:  new LinearPercentIndicator(
            width: 161.w,
            lineHeight: 9.h,
            percent: 0.5,backgroundColor: Colors.white,
            barRadius: Radius.circular(50),
            progressColor: Color(0xffFF88A5),
          ),),
          Positioned(top: 569.h,left: 35.w,
            child: Text('10/20 Complete',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 10.sp,fontFamily: 'Poppins',color: const Color(0xff323232),)),
          ),
          Positioned(top: 591.h,left: 35.w,
              child:Container(height:27.h,width:98.w,child:Image.asset('assets/images/Group 630.png') ,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(15)),) ),
          Positioned(top: 524.h,left: 204.w,
              child:Image.asset('assets/images/image 53.png',height: 85.h,width: 152.w,fit: BoxFit.fitWidth,) ),
          Positioned(top: 650.h,left: 36.w,
              child: Text('Workout Routines',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14.sp,fontFamily: 'Poppins',color: AppColors.textColor3),)),
          Positioned(top: 650.h,left: 261.w,
              child: Column(
                children: [
                  Text('View All',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12.sp,fontFamily: 'Poppins',color: AppColors.textColor3),),
                  Container( // Adjust the space between text and line
                    height: .5.h, // Thickness of the line
                    width: 50.w, // Length of the line
                    color: Colors.black, // Color of the line
                  ),

                ],
              )
          ),
          Positioned(top: 645.h,left: 319.w,
              child:Container(height:24.h,width:24.w,child:const Icon(Icons.arrow_forward,color: Colors.white,size: 16,) ,decoration: BoxDecoration(color: AppColors.textColor2,borderRadius: BorderRadius.circular(50)),) ),
Positioned(top:681.h,left:18.w,child:SizedBox(height: 112.h,width: 357.w,child:
ListView.builder(
  scrollDirection: Axis.horizontal, // Set the scroll direction to horizontal
  itemCount: 3, // Adjust this to your desired number of items
  itemBuilder: (context, index) {
    return Container(
      width: 250.w, // Set the width of each item
      margin: EdgeInsets.only(right: 18.w), // Set the gap between items
      decoration: BoxDecoration(
        border: Border.all(color:Color(0xffCDCDCD) ,
        ),
         borderRadius: BorderRadius.circular(21.5),

        color: Colors.grey.withOpacity(0), // Set opacity of the container to 0
      ),
      child:Stack(children: [
        if (items[index]['image1'] != null) // Check if image1 is not null
          Positioned(
            child: Image.asset(
              items[index]['image1'],
              fit: BoxFit.fill,
            ),
          ),
        if (items[index]['image2'] != null) // Check if image2 is not null
          Positioned(
            top: 2.h,
            left: 2.w,
            child: Image.asset(
              items[index]['image2'],
              height: 109.h,
              width: 107.w,

            ),
          ),
        if (items[index]['image3'] != null) // Check if image3 is not null
          Positioned(
            top: 15.h,
            left: 115.w,
            child: Image.asset(
              items[index]['image3'],
              height: 83.h,
              width: 95.w,
            ),
          ),
      ]
      )
    );
  },
),) )


        ],



      ),
    );
  }
}
