import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/custom_interceptor.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDetailsPage extends StatelessWidget {
  final Items catalogItem;

  const HomeDetailsPage({super.key, required this.catalogItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
          color: context.cardColor,
          child: ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
          "\$ ${catalogItem.price}"
              .text
              .color(context.accentColor)
              .xl
              .bold
              .make(),
          ElevatedButton(
              onPressed:() {

              },
          style: ButtonStyle(
              backgroundColor:
              MaterialStateProperty.all(context.theme.buttonColor),
              shape: MaterialStateProperty.all(const StadiumBorder())),
          child: "Add to cart"
              .text
              .lg
              .color(Colors.white)
              .makeCentered()
              .wh(100, 50))
      ],
    ).pOnly(right: 8.0).p32(),
    ),
    body: SafeArea(
    bottom: false,
    child: Column(
    children: [
    // Hero(
    //         tag: Key(catalogItem.id.toString()),
    //         child: Image.network(catalogItem.image).h32(context))
    //     .py32(),
    Image.network(catalogItem.image).h32(context),
    Expanded(
    child: VxArc(
    height: 30.0,
    arcType: VxArcType.CONVEY,
    edge: VxEdge.TOP,
    child: Container(
    width: context.screenWidth,
    color: context.cardColor,
    child: Column(
    children: [
    catalogItem.name.text.bold.xl3
        .color(context.accentColor)
        .make(),
    5.heightBox,
    catalogItem.desc.text
        .textStyle(context.captionStyle)
        .lg
        .make()
        .px16(),
    10.heightBox,
    "The iPhone is a smartphone made by Apple that combines a computer, iPod, digital camera and cellular phone into one device with a touchscreen interface. The iPhone runs the iOS operating system, and in 2021 when the iPhone 13 was introduced, it offered up to 1 TB of storage and a 12-megapixel camera."
        .text
        .textStyle(context.captionStyle)
        .make()
        .px16()
    ],
    ).py64(),
    ),
    ),
    )
    ]
    ,
    )
    )
    ,
    );
  }

  void callApi() async {
    Dio dio = Dio(
        BaseOptions(connectTimeout: const Duration(seconds: 5),
            receiveTimeout: const Duration(seconds: 3))
    )
      ..interceptors.add(CustomInterceptors());
    Response response = await dio.post(
        'http://3.12.153.63:8090/onboard-customer',
        data: {
          'firstName': 'Ani',
          'lastName': 'Sahoo',
          'mobile': '7978598054',
          'email': 'sahooanilkumar@gmail.com',
          'address1': 'string',
          'address2': 'string',
          'pincode': 751024,
        }
    );
    print(response.data);
    print(response.headers);
    print(response.requestOptions);
    print(response.statusCode);
  }
}
