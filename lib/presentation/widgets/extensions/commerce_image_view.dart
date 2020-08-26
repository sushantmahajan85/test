import 'package:flutter/material.dart';
// import 'package:openflutterecommerce/data/model/commerce_image.dart';

// extension View on CommerceImage {
  ImageProvider getView() {
    if (false) {
      return AssetImage(
        'https://images-na.ssl-images-amazon.com/images/I/31RMexpPDvL._AA260_.jpg',
      );
    } else {
      return NetworkImage(
        'https://images-na.ssl-images-amazon.com/images/I/31RMexpPDvL._AA260_.jpg',
      );
    }
  }
// }
