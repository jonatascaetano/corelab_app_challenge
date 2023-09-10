import 'package:corelab_app_challenge/layers/data/models/category_model.dart';
import 'package:corelab_app_challenge/layers/data/models/product_model.dart';

class DataLocalMock {
  static List<String> categories = [
    'Anestésicos e Agulhas Gengival',
    'Biossegurança',
    'Descartáveis',
    'Dentística e Estética',
    'Ortodontia',
    'Endodontia',
    'Periféricos e Peças de Mão',
    'Moldagem',
    'Prótese',
    'Cimentos',
    'Instrumentos',
    'Cirurgia e Periodontia',
    'Radiologia',
  ];

  static List<ProductModel> products = [
    ProductModel(
      nameModel: 'Condicionador Ácido Fosfórico 37% - AllPrime',
      imageUrlModel: "assets/img/allprime.jpg",
      priceModel: 29.90,
      discountModel: 0,
      categoryModel: categories[3],
    ),
    ProductModel(
      nameModel: 'Dorflex Analgésico e Relaxante Muscular 36 comprimidos',
      imageUrlModel: "assets/img/dorflex.jpg",
      priceModel: 300.00,
      discountModel: 10,
      categoryModel: categories[4],
    ),
    ProductModel(
      nameModel: 'Protetor Solar Corporal Cenoura & Bronze FPS 30 com 200ml',
      imageUrlModel: "assets/img/protetor.jpg",
      priceModel: 42.99,
      discountModel: 10,
      categoryModel: categories[0],
    ),
    ProductModel(
      nameModel: 'Shampoo Antiqueda Vichy Dercos Energizante 400ml',
      imageUrlModel: "assets/img/energizante.jpg",
      priceModel: 159.90,
      discountModel: 0,
      categoryModel: categories[2],
    ),
    ProductModel(
      nameModel: 'Máscara Descartável KN95 Multilaser PFF2 HC124 1 Unidade',
      imageUrlModel: "assets/img/mascara.jpg",
      priceModel: 6.59,
      discountModel: 0,
      categoryModel: categories[2],
    ),
  ];

  static List<ProductModel> productsYesterday = [
    products[0],
    products[1],
  ];

  static List<ProductModel> productsToday = [
    products[2],
    products[3],
    products[4],
  ];

  static List<String> recentlySearchedProducts = [
    'Anestésicos e Agulhas Gengival',
    'Biossegurança',
    'Descartáveis',
  ];

  static List<CategoryModel> categoriesModel = [
    CategoryModel(
      nameModel: 'Anestésicos e Agulhas Gengival',
      productsModel: [
        products[0],
      ],
    ),
    CategoryModel(nameModel: 'Biossegurança', productsModel: []),
    CategoryModel(
      nameModel: 'Descartáveis',
      productsModel: [
        products[0],
        products[1],
        products[2],
        products[3],
        products[4],
      ],
    ),
    CategoryModel(
      nameModel: 'Dentística e Estética',
      productsModel: [],
    ),
    CategoryModel(
      nameModel: 'Ortodontia',
      productsModel: [],
    ),
    CategoryModel(
      nameModel: 'Endodontia',
      productsModel: [],
    ),
    CategoryModel(
      nameModel: 'Periféricos e Peças de Mão',
      productsModel: [],
    ),
    CategoryModel(
      nameModel: 'Moldagem',
      productsModel: [],
    ),
    CategoryModel(
      nameModel: 'Prótese',
      productsModel: [],
    ),
    CategoryModel(
      nameModel: 'Cimentos',
      productsModel: [],
    ),
    CategoryModel(
      nameModel: 'Instrumentos',
      productsModel: [],
    ),
    CategoryModel(
      nameModel: 'Cirurgia e Periodontia',
      productsModel: [],
    ),
    CategoryModel(
      nameModel: 'Radiologia',
      productsModel: [],
    ),
  ];
}
