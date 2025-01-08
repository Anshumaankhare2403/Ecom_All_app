import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import './log_page.dart';

class MyPageView extends StatefulWidget {
  const MyPageView({super.key});

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  final _controller = PageController();
  bool isval = true;
  final List<Map<String, String>> list = [
    {
      "image": "assets/images/img1.png",
      "title": "Choose Products",
      "text":
          "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit."
    },
    {
      "image": "assets/images/img2.png",
      "title": "Make Payment",
      "text":
          "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit."
    },
    {
      "image": "assets/images/img3.png",
      "title": "Get Your Order",
      "text":
          "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit."
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${index + 1}/${list.length}",
                              style: TextStyle(
                                fontSize: screenWidth * 0.06,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                _controller.jumpToPage(list.length - 1);
                              },
                              child: Text(
                                "Skip",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.06,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              list[index]["image"]!,
                              height: screenHeight * 0.4,
                              width: screenWidth * 0.8,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: screenHeight * 0.02),
                            Text(
                              list[index]["title"]!,
                              style: TextStyle(
                                fontSize: screenWidth * 0.08,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: screenHeight * 0.01),
                            Text(
                              list[index]["text"]!,
                              style: TextStyle(
                                fontSize: screenWidth * 0.045,
                                color: Color(0xFFA6AEBF),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                if (index > 0) {
                                  _controller.previousPage(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.easeInOut,
                                  );
                                }
                              },
                              child: Text(
                                index == 0 ? "" : "Prev",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.05,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 133, 139, 152),
                                ),
                              ),
                            ),
                            SmoothPageIndicator(
                              controller: _controller,
                              count: list.length,
                              effect: ExpandingDotsEffect(
                                radius: 10.0,
                                dotHeight: screenHeight * 0.01,
                                dotWidth: screenWidth * 0.02,
                                dotColor: Colors.grey,
                                activeDotColor:
                                    const Color.fromARGB(255, 0, 0, 0),
                              ),
                              onDotClicked: (index) {
                                _controller.animateToPage(
                                  index,
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              },
                            ),
                            InkWell(
                              onTap: () {
                                if (index < list.length - 1) {
                                  _controller.nextPage(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.easeInOut,
                                  );
                                } else {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Login(),
                                    ),
                                  );
                                }
                              },
                              child: Text(
                                index != list.length - 1
                                    ? "Next"
                                    : "Get Started",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.05,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFFF83758),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
