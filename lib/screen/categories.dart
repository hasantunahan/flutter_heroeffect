import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:hero_effect/base/baseview.dart';
import 'package:hero_effect/component/image/smallicon.dart';
import 'package:hero_effect/viewmodel/categories_viewmodel.dart';
import 'package:hero_effect/widget/travel_card.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BaseView<CategoriesViewModel>(
        viewModel: CategoriesViewModel(),
        onModelReady: (model) {
          model.init();
          model.setContext(context);
        },
        onPageBuilder: (BuildContext context, CategoriesViewModel viewModel) =>
            Scaffold(
          backgroundColor: Colors.white,
          appBar: newMethod(),
          body: newMethodBody(context, viewModel),
        ),
      );

  Column newMethodBody(BuildContext context, CategoriesViewModel viewModel) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: newMethodTop(context),
        ),
        Expanded(
          flex: 1,
          child: newMethodCategoriesListView(viewModel),
        ),
        Expanded(flex: 1, child: newMethodDiscover(viewModel)),
        Expanded(
          flex: 4,
          child: newMethodTravelCard(viewModel),
        ),
      ],
    );
  }

  ListView newMethodTravelCard(CategoriesViewModel viewModel) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: viewModel.travels.length,
      itemBuilder: (context, index) {
        return TravelCard(data: viewModel.travels[index]);
      },
    );
  }

  Padding newMethodDiscover(CategoriesViewModel viewModel) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Discover",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
          ),
          Flexible(
              child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: viewModel.popList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(viewModel.popList[index]),
              );
            },
          ))
        ],
      ),
    );
  }

  ListView newMethodCategoriesListView(CategoriesViewModel viewModel) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 12),
      shrinkWrap: true,
      itemCount: viewModel.categories.length,
      itemBuilder: (context, index) {
        return Observer(builder: (_) {
          return Row(
            children: [
              Container(
                width: 70,
                height: 70,
                padding: EdgeInsets.all(12.0),
                margin: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 0.7),
                          blurRadius: 12,
                          spreadRadius: 5,
                          color: Colors.grey.withOpacity(0.2))
                    ]),
                child: SmallIcon(
                    type: 0, image: viewModel.categories[index].image ?? ''),
              ),
            ],
          );
        });
      },
    );
  }

  Column newMethodTop(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Spacer(), newMethodTopTitle(context), newMethodTopTextfield()],
    );
  }

  Padding newMethodTopTextfield() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        autofocus: false,
        style: TextStyle(fontSize: 15.0, color: Color(0xFFbdc6cf)),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.withOpacity(0.1),
          prefixIcon: Icon(Icons.search),
          contentPadding:
              const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(16),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }

  Container newMethodTopTitle(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: MediaQuery.of(context).size.width * 0.85,
      child: Text(
        "If you are jokking due to you chooe our",
        textAlign: TextAlign.start,
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
      ),
    );
  }

  AppBar newMethod() => AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: newMethodLeading(),
        actions: [newMethodActions()],
      );

  Padding newMethodActions() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
        onPressed: () {},
        color: Colors.black54,
        icon: Icon(Icons.menu),
      ),
    );
  }

  Padding newMethodLeading() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: SmallIcon(
          type: 0,
          image: 'hasan',
        ),
      ),
    );
  }
}
