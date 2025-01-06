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
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${index + 1}/${3}",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w900),
                            ),
                            InkWell(
                              onTap: () {
                                _controller.jumpToPage(list.length);
                              },
                              child: Text(
                                "Skip",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w900),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image(
                              height: 350,
                              image: AssetImage('${list[index]["image"]}'),
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "${list[index]["title"]}",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w900),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "${list[index]["text"]}",
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xFFA6AEBF)),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () => _controller.jumpToPage(index - 1),
                              child: Text(
                                index == 0 ? "" : "Prev",
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 133, 139, 152)),
                              ),
                            ),
                            SmoothPageIndicator(
                                controller: _controller, // PageController
                                count: list.length,
                                effect: ExpandingDotsEffect(
                                    radius: 50.0,
                                    dotHeight: 9,
                                    dotColor: Colors.grey,
                                    activeDotColor: const Color.fromARGB(
                                        255, 0, 0, 0)), // your preferred effect
                                onDotClicked: (index) {}),
                            InkWell(
                              onTap: () {
                                index != list.length - 1
                                    ? _controller.jumpToPage(index + 1)
                                    : Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Login(),
                                        ));
                              },
                              child: Text(
                                index != 2 ? "Next" : "Get Started",
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0XFFF83758)),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      )),
    );
  }
}
