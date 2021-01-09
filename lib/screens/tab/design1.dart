import 'package:flutter/material.dart';
import '../../global/app.dart';
import '../../global/colors.dart';
import '../../global/images.dart';
import '../../utils/screenUtils.dart';
import '../../widgets/commonWidgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Design1 extends StatefulWidget {
  @override
  _Design1State createState() => _Design1State();
}

class _Design1State extends State<Design1> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(AppString.Design1),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            getCategory(
              AppString.WasteTxt,
              "FireTxt",
              MyImage.WasteImage,
              context,
              0xFFf093fb,
              0xFFf5576c,
            ),
            getCategory(
              AppString.FireTxt,
              "WasteImage",
              MyImage.FireImage,
              context,
              0xFF667eea,
              0xFF764ba2,
            ),
            getCategory(
              AppString.WaterTxt,
              "WasteImage",
              MyImage.PlumberImage,
              context,
              0xFFc471f5,
              0xFF764ba2,
            ),
            getCategory(
              AppString.PoliceTxt,
              "WasteImage",
              MyImage.PoliceImage,
              context,
              0xFF0ba360,
              0xFF3cba92,
            ),
          ],
        ),
      ),
    );
  }

  Container getCategory(
      title, description, image, context, colorOne, colorTwo) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => showSnackbar(_scaffoldKey.currentState, title.toString()),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(colors: [
              Color(colorOne ?? 0XFF209cff),
              Color(colorTwo ?? 0XFF68e0cf),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          height: 100,
          width: getScreenWidth(context, 1.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              mySizedBox(myHeight: 0, myWidth: 5),
              Center(
                child: Container(
                  height: 90,
                  width: 90,
                  child: Image.asset(
                    image,
                    color: ColorPlate.WhiteColor
                  ),
                ),
              ),
              mySizedBox(myHeight: 0, myWidth: 5),
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    myDataText(
                        maxLines: 1,
                        text: title ?? "Data",
                        myTextStyle: GoogleFonts.poppins(
                          color: ColorPlate.WhiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )),
                    mySizedBox(myHeight: 7, myWidth: 0),
                    myDataText(
                      maxLines: 1,
                      text: description ?? "",
                      myTextStyle: GoogleFonts.caveat(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: ColorPlate.WhiteColor),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: ImageIcon(
                      AssetImage(MyImage.ArrowImage),
                      color: ColorPlate.WhiteColor,
                      size: 40,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
