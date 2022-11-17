import 'package:get/get.dart';
import 'package:multiservices/clases/productos.dart';

class control_general extends GetxController{
  final _posicionMenu = 0.obs;
  final prod= <productos>[].obs;

  @override
  void onInit() {
    prod.add(productos(001, "Portatil", "https://www.lacomputienda.net/wp-content/uploads/2017/06/FRENTE-DIAGONAL-1.jpeg", 850000, 0));
    prod.add(productos(001, "PC Escritorio", "https://m.media-amazon.com/images/I/71qvwOcghiL._AC_SL1500_.jpg", 700000, 0));
    prod.add(productos(001, "Teclado", "https://www.intelec.co.cr/image/cache/catalog/catalogo/Teclado/31300005401-800x800w.jpg", 55000, 0));
    prod.add(productos(001, "Mouse", "https://cdn.thewirecutter.com/wp-content/media/2022/04/gaming-mouse-2048px-4690.jpg", 35000, 0));
    // TODO: implement onInit
    super.onInit();
  }



  void cambioMenu (int x){
    _posicionMenu.value = x;
  }
  int get posicionMenu => _posicionMenu.value;
}