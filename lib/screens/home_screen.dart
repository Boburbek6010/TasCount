import 'package:darsda/screens/second_screen.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  static const id = '/home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
   int count = 0;
class _HomeScreenState extends State<HomeScreen> {

  String? result;
  
  Future<void> openNext() async {
    String? value = await Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SecondScreen()));
    setState(() {
      result = value;
    });
    print(result ?? "No Data");
  }
  
  

  int increment(){
    setState(() {
      count++;
      if(count == 34){
        count = 0;
        openNext();
      }
    });
    return count;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/img_tas.jpg"),
                fit: BoxFit.cover
            )
        ),
        child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('$count', style: const TextStyle(fontSize: 100, height: 3.8, color: Colors.black,),),
                  Row(
                    children: [
                      Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 140),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 150),
                      ),
                      MaterialButton(
                        minWidth: 80,
                        height: 80,
                        shape: StadiumBorder(),
                        highlightColor: Colors.black,
                        onPressed: openNext,
                        child: Text(' --> Next '),
                        color: Colors.blue,
                      ),
                    ],
                  ),
                  MaterialButton(
                      color: Colors.cyan,
                      textColor: Colors.black,
                      shape: const StadiumBorder(),
                      height: 80,
                      minWidth: 120,
                      child:  Text("Click $result"),
                      onPressed: increment,
                      onLongPress: openNext,
                  ),
                ],
              ),
            )
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: increment,
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
