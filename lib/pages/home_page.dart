import 'package:app_la_comer/components/styles.dart';
import 'package:app_la_comer/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final HomeController wishlistCtrl = Get.put(HomeController());
  

  List<Item> productList = <Item>[
    const Item('assets/limon.jpg', 'Limón sin semilla', '\$25.90','kg'),
    const Item('assets/platano.jpg', 'Platano', '\$25.90','kg'),
    const Item('assets/granada_roja.jpg', 'Granada roja', '\$25.90','kg'),
    const Item('assets/naranja.jpg', 'Naranja', '\$25.90','kg'),
  ];
  

  late TabController _tabController;
  final List<String> _tabs = [
    "Todo",
    "Frutas y verduras",
    "Carnes",
    "Abarrotes",
  ];

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _tabs.length, vsync: this, initialIndex: 1);
  }

  
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,

      /// BARRA INFERIOR
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 10,
              offset: const Offset(5, -10),
            ),
          ],
          border: const Border(
            top: BorderSide(
              color: Colors.grey,
              width: 1,
            ),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: BottomNavigationBar(
            iconSize: size.width * 0.06,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: primaryColor,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/home.svg",
                  width: size.width * 0.06,
                  height: size.width * 0.06,
                  color: Colors.grey,
                ),
                activeIcon: SvgPicture.asset(
                  "assets/home.svg",
                  width: size.width * 0.06,
                  height: size.width * 0.06,
                  color: primaryColor,
                ),
                label: "Inicio",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/descuentos.svg',
                  width: size.width * 0.06,
                  height: size.width * 0.06,
                  color: primaryColor,
                ),
                activeIcon: SvgPicture.asset(
                  'assets/descuentos.svg',
                  width: size.width * 0.06,
                  height: size.width * 0.06,
                  color: Colors.grey,
                ),
                label: "Descuentos",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/carrito.svg',
                  width: size.width * 0.06,
                  height: size.width * 0.06,
                  colorFilter: ColorFilter.mode(
                      primaryColor,       // tu color
                      BlendMode.srcIn,    // modo de mezcla
                  ),
                ),
                activeIcon: SvgPicture.asset(
                  'assets/carrito.svg',
                  width: size.width * 0.06,
                  height: size.width * 0.06,
                  colorFilter: ColorFilter.mode(
                    Colors.grey,       // tu color
                    BlendMode.srcIn,    // modo de mezcla
                  ),
                ),
                label: "Carrito",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/corazon.png',
                  width: size.width * 0.06,
                  height: size.width * 0.06,
                ),
                activeIcon: Image.asset(
                  'assets/corazon.png',
                  width: size.width * 0.06,
                  height: size.width * 0.06,
                ),
                label: "Wishlist",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/usuario.png',
                  width: size.width * 0.06,
                  height: size.width * 0.06,
                ),
                activeIcon: Image.asset(
                  'assets/usuario.png',
                  width: size.width * 0.06,
                  height: size.width * 0.06,
                ),
                label: "Mi Cuenta",
              ),
            ],
          ),
        ),
      ),

      /// CONTENIDO PRINCIPAL
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.04, vertical: size.height * 0.02),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Selección de sucursal
                      Row(
                        children: [
                          OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              foregroundColor: secondaryColor,
                              side: BorderSide(color: secondaryColor),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Cambiar sucursal",
                                  style: TextStyle(fontSize: size.width * 0.035),
                                ),
                                SizedBox(width: size.width * 0.02),
                                Image.asset(
                                  'assets/sucursal.png',
                                  width: size.width * 0.04,
                                  height: size.width * 0.04,
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: size.width * 0.12,
                            width: size.width * 0.12,
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Icon(Icons.menu,
                                color: Colors.white, size: size.width * 0.06),
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * 0.015),

                      Row(
                        children: [
                          Icon(Icons.location_on, color: secondaryColor, size: size.width * 0.05),
                          SizedBox(width: size.width * 0.01),
                          Text(
                            "Sucursal Norte",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                                fontSize: size.width * 0.04),
                          ),
                          Spacer(),
                        ],
                      ),
                      SizedBox(height: size.height * 0.02),

                      /// Barra de búsqueda
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search,
                                    color: primaryColor, size: size.width * 0.06),
                                hintText: "Buscar productos...",
                                filled: true,
                                fillColor: primaryColor.withOpacity(0.2),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: size.height * 0.015),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: size.width * 0.03),
                          Container(
                            height: size.width * 0.14,
                            width: size.width * 0.14,
                            decoration: BoxDecoration(
                              color: primaryColor.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Image.asset(
                                "assets/filtro.png",
                                height: size.width * 0.07,
                                width: size.width * 0.07,
                                fit: BoxFit.contain,
                                color: primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * 0.02),

                      /// Banner promocional
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 20,
                              offset: Offset(-5, -5),
                            ),
                          ],
                        ),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          color: Colors.white,
                          elevation: 10,
                          child: SizedBox(
                            height: size.height * 0.2,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(16),
                                      bottomRight: Radius.circular(16),
                                    ),
                                    child: Image.asset(
                                      "assets/banner.png",
                                      width: size.width * 0.5,
                                      height: size.height * 0.15,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: size.width * 0.03),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Hasta 35% off en frutas y\nverduras seleccionadas",
                                        style: TextStyle(
                                          fontSize: size.width * 0.04,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: size.height * 0.02),
                                      OutlinedButton(
                                        onPressed: () {},
                                        style: OutlinedButton.styleFrom(
                                          foregroundColor: secondaryColor,
                                          side: const BorderSide(
                                              color: Color(0xFF94BE2C)),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: size.width * 0.03,
                                              vertical: size.height * 0.008),
                                          minimumSize: Size(0, 0),
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                        ),
                                        child: Text(
                                          "Ver oferta",
                                          style: TextStyle(
                                              fontSize: size.width * 0.035),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.02),

                      /// Tabs
                      TabBar(
                        controller: _tabController,
                        isScrollable: false,
                        labelColor: primaryColor,
                        unselectedLabelColor: Colors.grey,
                        indicatorColor: primaryColor,
                        tabs: _tabs
                            .map((e) => Tab(
                                  text: e,
                                ))
                            .toList(),
                      ),
                      SizedBox(height: size.height * 0.015),

                      SizedBox(
                        height: size.height * 0.5,
                        child: TabBarView(
                          controller: _tabController,
                          children: _tabs.map((tab) {
                            return GridView.count(
                              primary: false,
                              crossAxisSpacing: size.width * 0.03,
                              mainAxisSpacing: size.height * 0.02,
                              crossAxisCount: 2,
                              childAspectRatio: 0.80,
                              physics: const ScrollPhysics(),
                              shrinkWrap: true,
                              children:
                                  List.generate(productList.length, (index) {
                                return Container(
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(2, 2),
                                        blurRadius: 12,
                                        color: Color.fromRGBO(0, 0, 0, 0.16),
                                      )
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6)),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(height: size.height * 0.01),
                                      Container(
                                        height: size.height * 0.12,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(4)),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  productList[index].img),
                                              fit: BoxFit.fitHeight),
                                        ),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              top: 0,
                                              right: 0,
                                              child: GestureDetector(
                                                onTap: () =>
                                                    wishlistCtrl.toggleWishlist(),
                                                child: Obx(() => Container(
                                                      margin: EdgeInsets.only(
                                                          right: size.width * 0.02,
                                                          top: 0),
                                                      height: size.width * 0.08,
                                                      width: size.width * 0.08,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            const BorderRadius.all(
                                                                Radius.circular(4)),
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                            wishlistCtrl.isActive
                                                                    .value
                                                                ? 'assets/wishlist_activo.png'
                                                                : 'assets/wishlist.png',
                                                          ),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    )),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Divider(
                                          thickness: 5, color: backgroundColor),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: size.width * 0.03),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              flex: 8,
                                              child: Text(
                                                productList[index].name,
                                                style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: size.width * 0.035,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                            Expanded(
                                              flex: 2,
                                              child: Text(
                                                productList[index].precio,
                                                textAlign: TextAlign.end,
                                                style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: size.width * 0.035,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: GestureDetector(
                                          onTap: () =>
                                              wishlistCtrl.toggleWishlist(),
                                          child: SvgPicture.asset(
                                            'assets/mas.svg',
                                            height: size.width * 0.09,
                                            width: size.width * 0.09,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              }),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
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

/// Clase Item para categorías o productos
class Item {
  const Item(this.img, this.name, this.precio, this.unidad);
  final String img;
  final String name;
  final String precio;
  final String unidad;
}
