import 'package:flutter/material.dart';
import 'package:sauda/models/serviceList.dart';
import '../../global/images.dart';
import '../../global/app.dart';
import '../../global/colors.dart';
import '../../widgets/commonWidgets.dart';

class Design2 extends StatefulWidget {
  @override
  _Design2State createState() => _Design2State();
}

class _Design2State extends State<Design2> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  List serviceList = [
    Services(
      image: MyImage.WasteImage,
      subtitle: "Waste",
      title: AppString.WasteTxt,
      firstColor: 0xFFf093fb,
      secondColor: 0xFFf5576c,
    ),
    Services(
      image: MyImage.FireImage,
      subtitle: "Fire",
      title: AppString.FireTxt,
      firstColor: 0xFF667eea,
      secondColor: 0xFF764ba2,
    ),
    Services(
      image: MyImage.PlumberImage,
      subtitle: "Water",
      title: AppString.WaterTxt,
      firstColor: 0xFF0ba360,
      secondColor: 0xFF3cba92,
    ),
    Services(
      image: MyImage.PoliceImage,
      subtitle: "Police",
      title: AppString.PoliceTxt,
      firstColor: 0xFFc471f5,
      secondColor: 0xFF764ba2,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(title: Text(AppString.Design2)),
      body: getCategoryData(context),
    );
  }

  Widget getCategoryData(context) {
    return GridView.builder(
      scrollDirection: Axis.vertical,
      physics: ScrollPhysics(),
      itemCount: serviceList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 16, mainAxisSpacing: 16),
      itemBuilder: (BuildContext context, int index) {
        var myData = serviceList[index];
        return GestureDetector(
          onTap: () =>
              showSnackbar(_scaffoldKey.currentState, myData.title.toString()),
          child: Container(
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
            child: Stack(
              children: [
                Positioned(
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Container(
                        margin: EdgeInsets.all(10),
                        // height: 180,
                        child: Image.asset(
                          myData.image,
                          fit: BoxFit.cover,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                        gradient: LinearGradient(
                            colors: [
                              Color(myData.firstColor),
                              Color(myData.secondColor),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        color: ColorPlate.BlackColor.withOpacity(.5)),
                    child: myDataText(
                      maxLines: 1,
                      text: myData.title.toString(),
                      myTextStyle: TextStyle(
                          color: ColorPlate.WhiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
