import 'package:AIChE/view.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BlogScreen extends StatefulWidget {
  @override
  _BlogScreenState createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.3), BlendMode.dstATop),
              image: AssetImage("assets/asset/blue.jpg"),
              fit: BoxFit.cover),
        ),
        child: ListView(
          padding: EdgeInsets.only(left: 15.0),
          children: <Widget>[
            SizedBox(height: 20.0),
            _categoryRow(
              categoryName1: "Spark ",
              categoryName2: "Magazine",
              width: 100.00,
            ),
            Container(
              height: 400.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _magazineCard(
                    img: "assets/asset/spark20.jpg",
                    width: 300.00,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Viewer(
                            url:
                                "https://online.anyflip.com/xrioh/qiyh/mobile/index.html",
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(width: 15.00),
                  _magazineCard(
                      width: 300.00,
                      img: "assets/asset/spark19.jpg",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Viewer(
                              url:
                                  "https://drive.google.com/file/d/1c4QDTRkomrl2EpXcS3BEwR0PuL57jA5b/preview",
                            ),
                          ),
                        );
                      }),
                  SizedBox(width: 15.00),
                  _magazineCard(
                      width: 300.00,
                      img: "assets/asset/spark16.jpg",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Viewer(
                              url:
                                  "https://drive.google.com/file/d/1YNxN9wTv5lniWJKS2UcIhpdAdIjDEh99/preview",
                            ),
                          ),
                        );
                      }),
                  SizedBox(width: 20.00),
                ],
              ),
            ),
            SizedBox(height: 20.00),
            _categoryRow(
              categoryName1: "TECHNICAL ",
              categoryName2: "Topic",
              width: 150.00,
            ),
            Container(
              height: 400.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _topicCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Viewer(
                            url:
                                "https://www.youtube.com/watch?v=D5e5pFPRis4&list=PLUtRFpyY1F_QwTrKK1fdqf0EsL8cktZ1X",
                          ),
                        ),
                      );
                    },
                    imgHeight: 100.00,
                    imgWidth: 100.00,
                    imgPath: "assets/asset/aspen.png",
                    topicName: "Hysys",
                    description:
                        "chemical process simulator used to mathematically model chemical processes, from unit operations to full chemical plants.",
                  ),
                  _topicCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Viewer(
                            url:
                                "https://www.youtube.com/watch?v=-tTNrgLUdYs&list=PLvfdyaivecUGuljfNKj0qcfITjTggsWAI",
                          ),
                        ),
                      );
                    },
                    imgHeight: 110.00,
                    imgWidth: 180.00,
                    imgPath: "assets/asset/corrosion.png",
                    topicName: "Corrosion",
                    description:
                        "a natural process that converts a refined metal into a more chemically stable form such as oxide, hydroxide, or sulfide.",
                  ),
                  _topicCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Viewer(
                            url:
                                "https://www.youtube.com/watch?v=lu3cthdVDqQ&list=PLXGHfCedMmsO0dIXuOgD7vwO-ISzGHJRx",
                          ),
                        ),
                      );
                    },
                    imgHeight: 100.00,
                    imgWidth: 120.00,
                    imgPath: "assets/asset/oil.png",
                    topicName: "Crude Oil",
                    description:
                        "a natural process that converts a refined metal into a more chemically stable form such as oxide, hydroxide, or sulfide.",
                  ),
                  _topicCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Viewer(
                            url:
                                "https://www.youtube.com/watch?v=AYmq-_cut6g&list=PLk_I1GyIyG8BKhAYy3uFsfhn7T5QrhMmb",
                          ),
                        ),
                      );
                    },
                    imgHeight: 100.00,
                    imgWidth: 300.00,
                    imgPath: "assets/asset/nh32.png",
                    topicName: "Ammonia\nFertilizer",
                    description:
                        "a natural process that converts a refined metal into a more chemically stable form such as oxide, hydroxide, or sulfide.",
                  ),
                  _topicCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Viewer(
                            url:
                                "https://www.youtube.com/watch?v=Bv8Wybi4I94&list=PLVLQRIUp6E5A6v3xCefE5gOKztLGsh1gT",
                          ),
                        ),
                      );
                    },
                    imgHeight: 115.00,
                    imgWidth: 170.00,
                    imgPath: "assets/asset/urea.png",
                    topicName: "Urea\nFertilizer",
                    description:
                        "a natural process that converts a refined metal into a more chemically stable form such as oxide, hydroxide, or sulfide.",
                  ),
                  _topicCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Viewer(
                            url:
                                "https://www.youtube.com/watch?v=Fqq4-SCeWTI&list=PLD9pq73a8huHl1ZuWKuxo9theiqs0OtBV",
                          ),
                        ),
                      );
                    },
                    imgHeight: 80.00,
                    imgWidth: 200.00,
                    imgPath: "assets/asset/fluidMechanics.png",
                    topicName: "Fluid\nMechanics",
                    description:
                        "a natural process that converts a refined metal into a more chemically stable form such as oxide, hydroxide, or sulfide.",
                  ),
                  _topicCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Viewer(
                            url:
                                "https://www.youtube.com/watch?v=cmf-2B3H_zA&list=PL7R01saoeOgHM3F87YBKoivBuP3dl1EQS",
                          ),
                        ),
                      );
                    },
                    imgHeight: 90.00,
                    imgWidth: 200.00,
                    imgPath: "assets/asset/furnaces.png",
                    topicName: "Furnaces",
                    description:
                        "a natural process that converts a refined metal into a more chemically stable form such as oxide, hydroxide, or sulfide.",
                  ),
                  _topicCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Viewer(
                            url:
                                "https://www.youtube.com/watch?v=PmAaGdEzfs0&list=PLz21YY8a3NK6w5Vf9xpGOhLC30J9ocLsx",
                          ),
                        ),
                      );
                    },
                    imgHeight: 120.00,
                    imgWidth: 120.00,
                    imgPath: "assets/asset/hazop.png",
                    topicName: "HAZOP",
                    description:
                        "a natural process that converts a refined metal into a more chemically stable form such as oxide, hydroxide, or sulfide.",
                  ),
                  _topicCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Viewer(
                            url:
                                "https://www.youtube.com/watch?v=-AdmxCJlWBk&list=PLFwsynB0PSxSVMGijPC-mQELFkjvXdlDI",
                          ),
                        ),
                      );
                    },
                    imgHeight: 120.00,
                    imgWidth: 120.00,
                    imgPath: "assets/asset/heatExchanger.png",
                    topicName: "Heat\nExchanger",
                    description:
                        "a natural process that converts a refined metal into a more chemically stable form such as oxide, hydroxide, or sulfide.",
                  ),
                  _topicCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Viewer(
                            url:
                                "https://www.youtube.com/watch?v=uoiD1VSHllI&list=PLWizASkkbIXiqO9L6PEGSRc0r_tK0p2rJ",
                          ),
                        ),
                      );
                    },
                    imgHeight: 120.00,
                    imgWidth: 120.00,
                    imgPath: "assets/asset/naturalGas.png",
                    topicName: "Gas\nprocessing",
                    description:
                        "a natural process that converts a refined metal into a more chemically stable form such as oxide, hydroxide, or sulfide.",
                  ),
                  _topicCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Viewer(
                            url:
                                "https://www.youtube.com/watch?v=YVoClr1Y5Js&list=PL25CBC8287575CFB4",
                          ),
                        ),
                      );
                    },
                    imgHeight: 120.00,
                    imgWidth: 120.00,
                    imgPath: "assets/asset/reactor.png",
                    topicName: "Reactor\nDesign",
                    description:
                        "a natural process that converts a refined metal into a more chemically stable form such as oxide, hydroxide, or sulfide.",
                  ),
                  _topicCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Viewer(
                            url:
                                "https://www.youtube.com/watch?v=wKsNQpffRJU&list=PLiVOJXxKgsZiejVJy9BInUsX3xkXUSgd3",
                          ),
                        ),
                      );
                    },
                    imgHeight: 120.00,
                    imgWidth: 120.00,
                    imgPath: "assets/asset/reactor.png",
                    topicName: "Pumps",
                    description:
                        "a natural process that converts a refined metal into a more chemically stable form such as oxide, hydroxide, or sulfide.",
                  ),
                  _topicCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Viewer(
                            url:
                                "https://www.youtube.com/watch?v=aDXBo0FtALA&list=PLwdnzlV3ogoVnCnIfjDHng_8biZSUEYtK",
                          ),
                        ),
                      );
                    },
                    imgHeight: 120.00,
                    imgWidth: 120.00,
                    imgPath: "assets/asset/reactor.png",
                    topicName: "Thermodynamics",
                    description:
                        "a natural process that converts a refined metal into a more chemically stable form such as oxide, hydroxide, or sulfide.",
                  ),
                  _topicCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Viewer(
                            url:
                                "https://www.youtube.com/watch?v=rwiXby6j3Io&list=PLbMMX_vdzydJjaLpAaASOY7nrzU7nFSHq",
                          ),
                        ),
                      );
                    },
                    imgHeight: 120.00,
                    imgWidth: 120.00,
                    imgPath: "assets/asset/reactor.png",
                    topicName: "Water\nTreatment",
                    description:
                        "a natural process that converts a refined metal into a more chemically stable form such as oxide, hydroxide, or sulfide.",
                  ),
                  _topicCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Viewer(
                            url:
                                "https://www.youtube.com/watch?v=G1_iQtvepIg&list=PL4xAk5aclnUjEuE_fvbyEts_oBpHYcwLY",
                          ),
                        ),
                      );
                    },
                    imgHeight: 120.00,
                    imgWidth: 120.00,
                    imgPath: "assets/asset/reactor.png",
                    topicName: "Process\nDesign",
                    description:
                        "a natural process that converts a refined metal into a more chemically stable form such as oxide, hydroxide, or sulfide.",
                  ),
                ],
              ),
            ),
            _categoryRow(
              categoryName1: "NON-TECHNICAL ",
              categoryName2: "TOPICS",
              width: 200.0,
            ),
            Container(
              height: 400.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _topicCard(
                    imgHeight: 100.00,
                    imgWidth: 200.00,
                    imgPath: "assets/asset/CV.png",
                    topicName: "CV Writing",
                    description:
                        "chemical process simulator used to mathematically model chemical processes, from unit operations to full chemical plants.",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Viewer(
                            url: "https://www.youtube.com/watch?v=_fP43gcBywU",
                          ),
                        ),
                      );
                    },
                  ),
                  _topicCard(
                    imgHeight: 100.00,
                    imgWidth: 120.00,
                    imgPath: "assets/asset/interview.png",
                    topicName: "Interview",
                    description:
                        "a natural process that converts a refined metal into a more chemically stable form such as oxide, hydroxide, or sulfide.",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Viewer(
                            url:
                                "https://www.youtube.com/watch?v=yXteVNe5Dqo&list=PLvby6pHU7GVYvjquXNfNjc8Sjoe1qxppK",
                          ),
                        ),
                      );
                    },
                  ),
                  _topicCard(
                    imgHeight: 110.00,
                    imgWidth: 300.00,
                    imgPath: "assets/asset/negotiation.png",
                    topicName: "Negotiation\nSkills",
                    description:
                        "a natural process that converts a refined metal into a more chemically stable form such as oxide, hydroxide, or sulfide.",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Viewer(
                            url: "https://www.youtube.com/watch?v=hev-00t2o3E",
                          ),
                        ),
                      );
                    },
                  ),
                  _topicCard(
                    imgHeight: 120.00,
                    imgWidth: 120.00,
                    imgPath: "assets/asset/time.png",
                    topicName: "Time\nManagement",
                    description:
                        "a natural process that converts a refined metal into a more chemically stable form such as oxide, hydroxide, or sulfide.",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Viewer(
                            url:
                                "https://www.youtube.com/watch?v=4ysyybi4068&list=PLvby6pHU7GVa0Zy0rRJUsax-J0UyrV8xv",
                          ),
                        ),
                      );
                    },
                  ),
                  _topicCard(
                    imgHeight: 100.00,
                    imgWidth: 120.00,
                    imgPath: "assets/asset/mic.png",
                    topicName: "Public\nSpeaking",
                    description:
                        "a natural process that converts a refined metal into a more chemically stable form such as oxide, hydroxide, or sulfide.",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Viewer(
                            url:
                                "https://www.youtube.com/watch?v=w82a1FT5o88&list=PL8EEC66CC5F02545C",
                          ),
                        ),
                      );
                    },
                  ),
                  _topicCard(
                    imgHeight: 120.00,
                    imgWidth: 120.00,
                    imgPath: "assets/asset/leadership.png",
                    topicName: "Leadership",
                    description:
                        "a natural process that converts a refined metal into a more chemically stable form such as oxide, hydroxide, or sulfide.",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Viewer(
                            url:
                                "https://www.youtube.com/watch?v=_z7AC8yJxRU&list=PLD26358825FD23EE1",
                          ),
                        ),
                      );
                    },
                  ),
                  _topicCard(
                    imgHeight: 120.00,
                    imgWidth: 120.00,
                    imgPath: "assets/asset/english.jpg",
                    topicName: "English",
                    description:
                        "a natural process that converts a refined metal into a more chemically stable form such as oxide, hydroxide, or sulfide.",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Viewer(
                            url:
                                "https://www.youtube.com/channel/UCHrD4qdeQc1BbpG6EPqDBcA",
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.00,
            )
          ],
        ),
      ),
    );
  }

  _magazineCard({
    @required double width,
    @required String img,
    @required Function onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 10.00),
        width: width,
        height: 400,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
          boxShadow: [
            BoxShadow(
              offset: Offset.zero,
              blurRadius: 8,
            )
          ],
          color: Color(0xFFffffff),
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
      ),
    );
  }

  _categoryRow({
    String categoryName1,
    String categoryName2,
    double width,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
            text: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: categoryName1,
              style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
                text: categoryName2,
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 20.0,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                )),
          ],
        )),
        Container(
          width: width,
          padding: EdgeInsets.only(left: 15.0),
          child: Divider(
            color: Colors.blue,
            thickness: 3.00,
          ),
        ),
      ],
    );
  }

  _topicCard({
    @required String imgPath,
    @required String topicName,
    @required String description,
    @required double imgWidth,
    @required double imgHeight,
    Function onTap,
  }) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Container(
            height: 400.0,
            width: 226.0,
            child: Column(
              children: <Widget>[
                Stack(
                  children: [
                    Container(height: 380.0),
                    Positioned(
                      top: 75.0,
                      child: GestureDetector(
                        onTap: onTap,
                        child: Container(
                          padding: EdgeInsets.only(left: 10.0, right: 20.0),
                          height: 300.0,
                          width: 225.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              gradient: SweepGradient(colors: [
                                Color(0xff1c92d2),
                                Color(0xff6DD5FA),
                                Color(0xff2980B9),
                                Color(0xff56CCF2),
                              ])),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(height: 70.0),
                              Center(
                                child: Text(
                                  topicName,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                description,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: (226.0 - imgWidth) / 2,
                      top: 40.0,
                      child: Container(
                        height: imgHeight,
                        width: imgWidth,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(imgPath), fit: BoxFit.contain),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )));
  }
}
