import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:openflutterecommerce/data/model/product_attribute.dart';
import 'package:openflutterecommerce/presentation/widgets/widgets.dart';

import '../wrapper.dart';
import 'product_bloc.dart';
import 'product_event.dart';
import 'product_state.dart';
import 'views/details.dart';

class ProductDetailsScreen extends StatefulWidget {
  final ProductDetailsParameters parameters;

  const ProductDetailsScreen(
    this.parameters, {
    Key key,
  }) : super(key: key);

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class ProductDetailsParameters {
  // final int productId;
  // final int categoryId;
  // final HashMap<ProductAttribute, String> selectedAttributes;

  // const ProductDetailsParameters(this.productId, this.categoryId, {this.selectedAttributes});
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    print('productId: 80');
    return SafeArea(
        child: OpenFlutterScaffold(
      background: null,
      title: null,
      body: BlocProvider<ProductBloc>(
          create: (context) {
            return ProductBloc(
                productId: 81/*widget.parameters.productId*/)
              ..add(ProductScreenLoadedEvent(
                productId: 82,//widget.parameters.productId,
                categoryId: 83,//widget.parameters.categoryId
              ));
          },
          child: ProductWrapper(),
      ),
      bottomMenuIndex: 1,
    ));
  }
}

class ProductWrapper extends StatefulWidget {
  @override
  _ProductWrapperState createState() => _ProductWrapperState();
}

class _ProductWrapperState extends OpenFlutterWrapperState<ProductWrapper> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
        bloc: BlocProvider.of<ProductBloc>(context),
        builder: (BuildContext context, ProductState state) {
          if (state is ProductLoadedState) {
            return ProductDetailsView(
              // product: state.product,
              // similarProducts: state.similarProducts,
              // changeView: changePage
            );
          }
          return Container();
        });
  }
}
