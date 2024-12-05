import 'package:flutter/material.dart';
import '../../models/product.dart';
import '../widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  // Lista de produtos simulada
  final List<Product> products = [
    Product(
      id: '1',
      title: 'Produto 1',
      price: 'R\$ 990,90',
      imagePath: 'assets/images/products/product_1.png',
    ),
    Product(
      id: '2',
      title: 'Produto 2',
      price: 'R\$ 2799,90',
      imagePath: 'assets/images/products/product_2.png',
    ),
    Product(
      id: '3',
      title: 'Produto 3',
      price: 'R\$ 450,00',
      imagePath: 'assets/images/products/product_3.png',
    ),
    Product(
      id: '4',
      title: 'Produto 4',
      price: 'R\$ 300,00',
      imagePath: 'assets/images/products/product_4.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minimal E-Commerce'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: products.length, // Usa a quantidade de produtos da lista
        itemBuilder: (context, index) {
          final product = products[index];
          return GestureDetector(
            onTap: () {
              // Navega para a tela de detalhes passando o objeto do produto como argumento
              Navigator.pushNamed(
                context,
                '/productDetails',
                arguments: product,
              );
            },
            child: ProductCard(
              title: product.title,
              price: product.price,
              imagePath: product.imagePath,
            ),
          );
        },
      ),
    );
  }
}
