import 'package:flutter/material.dart';
import 'package:traincourse/CustomWidget/Container.dart';
import 'package:traincourse/CustomWidget/CustomCircleAveter.dart';
import 'package:traincourse/CustomWidget/Text.dart';
import 'package:traincourse/CustomWidget/sizedBox.dart';
class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
List<String> Students=["Ahmed","Rania","Mona","Koko","Kity","Tom","Nada","Maged"];
List<Color>  ColText=[Colors.red,Colors.blue,Colors.yellow,Colors.orange,Colors.pink,Colors.purple,Colors.green,Colors.indigo];
List<Color>  ColCont=[Colors.black54,Colors.pinkAccent,Colors.grey,Colors.black54,Colors.cyan,Colors.amberAccent,Colors.white12,Colors.red];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextCustom(
          text: "Your App",
          fsize: 30,
          fweight: FontWeight.bold,
          color: Colors.deepPurple,
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: sizedBoxCustom(height: 20,weight: 0,)),
          SliverToBoxAdapter(
            child: Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                 const CustomCircleAvater(path: "assets/images.png"),
                 const sizedBoxCustom(height: 0, weight: 5),
                 const CustomCircleAvater(path: "assets/images__1.png"),
                 const sizedBoxCustom(height: 0, weight: 5),
                 const CustomCircleAvater(path: "assets/images (2).png"),
                 const sizedBoxCustom(height: 0, weight: 5),
                 const CustomCircleAvater(path: "assets/images__11.png"),
                 const sizedBoxCustom(height: 0, weight: 5),
                 const CustomCircleAvater(path: "assets/images__1.png"),
                 const sizedBoxCustom(height: 0, weight: 5),
                 const CustomCircleAvater(path: "assets/images__6.png"),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(child: sizedBoxCustom(height: 20,weight: 0,)),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.0,

            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int i) {
                return  CustomContainer(
                  im: false,
                 colcontainer: ColCont[i] ,
                  text: Students[i],
                  color: ColText[i],
                  fweight:FontWeight.bold ,
                  fsize: 40,
                );
              },
              childCount: Students.length,
            ),
          ),
        ],
      ),
    );
  }
}
