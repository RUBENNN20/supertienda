import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mi_super_tienda/screens2/supermercado5_screen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/product.dart';
import '../providers/cart_provider.dart';

class DeportesaraScreen extends StatefulWidget {
  const DeportesaraScreen({super.key});

  @override
  _DeportesaraScreenState createState() => _DeportesaraScreenState();
}

class _DeportesaraScreenState extends State<DeportesaraScreen> {
  List<Product> products = [];
  final ImagePicker _picker = ImagePicker();
  String storeName = "Deportes Ara"; // Store name can be dynamic if needed
  String categoryName = "Deportes"; // Category name can also be dynamic

  @override
  void initState() {
    super.initState();
    _loadProducts();
  }

  // Cargar los productos de una tienda y categoría específica
  Future<void> _loadProducts() async {
  final prefs = await SharedPreferences.getInstance();
  final productListString = prefs.getString('$storeName-$categoryName') ?? '[]';
  final List<dynamic> productListJson = jsonDecode(productListString);

  setState(() {
    products = productListJson.map((json) => Product.fromJson(json)).toList();
  });
}

  // Guardar los productos de una tienda y categoría específica
  Future<void> _saveProducts() async {
    final prefs = await SharedPreferences.getInstance();
    final List<Map<String, dynamic>> jsonList =
        products.map((product) => product.toJson()).toList();
    await prefs.setString('$storeName-$categoryName', jsonEncode(jsonList));
  }

  void _addProduct(String title, String imageUrl, double price) {
  setState(() {
    // Agrega el producto con store y category
    products.add(Product(
      id: DateTime.now().toString(),
      title: title,
      image: imageUrl,
      price: price,
      store: storeName,  // Asocia el producto con la tienda
      category: categoryName,  // Asocia el producto con la categoría
    ));
  });
  _saveProducts(); // Guarda los productos después de agregar uno nuevo
}

  Future<void> _showAddProductDialog() async {
    final _titleController = TextEditingController();
    final _priceController = TextEditingController();
    final _imageUrlController = TextEditingController();
    String? _selectedImage;

    await showDialog(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            title: const Text('Agregar Producto'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: _titleController,
                  decoration:
                      const InputDecoration(labelText: 'Nombre del producto'),
                ),
                TextField(
                  controller: _priceController,
                  decoration: const InputDecoration(labelText: 'Precio'),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: _imageUrlController,
                  decoration: const InputDecoration(
                      labelText: 'URL de la imagen (opcional)'),
                ),
                const SizedBox(height: 10),
                _selectedImage == null
                    ? TextButton.icon(
                        onPressed: () async {
                          final pickedFile = await _picker.pickImage(
                            source: ImageSource.gallery,
                          );
                          if (pickedFile != null) {
                            setState(() {
                              _selectedImage = pickedFile.path;
                            });
                          }
                        },
                        icon: const Icon(Icons.image),
                        label: const Text('Seleccionar imagen'),
                      )
                    : Image.network(
                        _selectedImage!,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(ctx).pop();
                },
                child: const Text('Cancelar'),
              ),
              ElevatedButton(
                onPressed: () {
                  final title = _titleController.text;
                  final price = double.tryParse(_priceController.text) ?? 0.0;
                  final imageUrl = _imageUrlController.text.isNotEmpty
                      ? _imageUrlController.text
                      : _selectedImage;

                  if (title.isNotEmpty && price > 0 && imageUrl != null) {
                    _addProduct(title, imageUrl, price);
                    Navigator.of(ctx).pop();
                  }
                },
                child: const Text('Guardar'),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Deportes ARA'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              itemCount: products.length + 1,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 8,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
                childAspectRatio: 2 / 2.5,
              ),
              itemBuilder: (context, index) {
                if (index == products.length) {
                  return InkWell(
                    onTap: _showAddProductDialog,
                    child: Card(
                      color: Colors.grey[300],
                      child: const Center(
                        child: Text(
                          'Agregar Producto',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  );
                }
                final product = products[index];
                return ProductCard(product: product);
              },
            ),
          ),
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: FloatingActionButton(
              backgroundColor: Colors.lightBlueAccent,
              child: const Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context, listen: false);

    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(12.0)),
              child: Image.network(
                product.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              product.title,
              style: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              '\$${product.price.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 13.0,
                color: Colors.green,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                cart.addItem(product);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${product.title} agregado al carrito'),
                    duration: const Duration(seconds: 2),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
              ),
              child: const Text('Agregar al carrito'),
            ),
          ),
        ],
      ),
    );
  }
}
