import 'package:flutter/material.dart';
import 'package:flutter_moda_ui/model.dart';

class StoryPage extends StatelessWidget {
  late List<Model> tumModel;
  StoryPage() {
    tumModel = veriekle();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 80,
            width: 80,
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            tumModel[index].burcModelResim,
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    child: Text("Follow",
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    onPressed: null,
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.brown),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0),
                        ))),
                  ),
                )
              ],
            ),
          ),
        );
      },
      itemCount: 9,
      scrollDirection: Axis.horizontal,
    ));
  }

  List<Model> veriekle() {
    List<Model> gecici = [];

    for (int i = 0; i < 9; i++) {
      String name = "";
      String adres = "";
      name = i.toString();

      adres = "images/" + '${i + 0}.jpg';
      debugPrint(adres);

      Model eklenecekModel = Model(name, adres);
      gecici.add(eklenecekModel);
    }
    return gecici;
  }
}
