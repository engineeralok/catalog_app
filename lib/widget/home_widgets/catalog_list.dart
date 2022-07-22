import 'package:catalog_app/widget/home_widgets/catalog_image.dart';
import 'package:catalog_app/widget/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        // final catalog = CatalogModel.items?[index];
        return const CatalogItem();
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  const CatalogItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          const CatalogImage(
            image:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSd0JhwLvm_uLDLc-la7hK9WyVpe9naJFcebKfhcICiq2KtvXDePNAU_9QO06LPcQ0K0fLByc7m&usqp=CAc",
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "Iphone 12 Pro ".text.lg.bold.make(),
                "iPhone 12 Pro 12th Generation"
                    .text
                    .textStyle(context.captionStyle)
                    .make(),
                50.heightBox,
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: const EdgeInsets.all(0),
                  children: [
                    "\$699".text.xl.bold.make(),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(MyTheme.darkBluishColor),
                        shape: MaterialStateProperty.all(const StadiumBorder()),
                      ),
                      child: "Add to Cart".text.light.make(),
                    ),
                  ],
                ).pOnly(right: 6),
              ],
            ),
          )
        ],
      ),
    ).white.color(context.cardColor).rounded.square(150).make().py(16);
  }
}
