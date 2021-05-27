import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import 'controller/controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeController()),
      ],
      child: Scaffold(
        backgroundColor: MyApp.gray,

        appBar: AppBar(
          leadingWidth: 106,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text("Configuración", style: TextStyle(fontSize: 20)),
          ),
          actions: [
            IconButton(
                icon: Icon(Icons.search, color: Colors.white),
                onPressed: () {}),
          ],
        ),
        //
        body: _BuilderBody(),
      ),
    );
  }
}

class _BuilderBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        child: Column(
          children: [
            _BuildSuggestions(),
            _BuildSuggestionsAlert(),
            SizedBox(height: 8),
            _BuildConnections(),
            SizedBox(height: 2),
            _BuildConnections(),
          ],
        ),
      ),
    );
  }
}

class _BuildSuggestions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.only(top: 4, bottom: 4, left: 24, right: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Sugerencias (2)",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: MyApp.accentColor)),
            Consumer<HomeController>(
                builder: (_, controller, __) => IconButton(
                    icon: Icon(
                        controller.isVisible
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                        color: Colors.black),
                    onPressed: () => controller.chageVisibility())),
          ],
        ),
      ),
    );
  }
}

class _BuildSuggestionsAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
        builder: (_, controller, __) => Visibility(
              visible: controller.isVisible,
              child: Material(
                color: Colors.white,
                elevation: 4,
                child: Padding(
                    padding: const EdgeInsets.only(
                        top: 2, bottom: 8, left: 24, right: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8),
                        Divider(),
                        _BuilderItemSuggestionsAlert(
                          onTap: () {},
                          iconData: Icons.mail,
                          title: "Agregar otra cuenta de..",
                          subTitle: "Configura tu correo electrónico..",
                        ),
                        Divider(),
                        _BuilderItemSuggestionsAlert(
                          onTap: () {},
                          iconData: Icons.notifications,
                          title: "Programar modo No molestar",
                          subTitle: "Silenciar en ciertos momentos",
                        ),
                      ],
                    )),
              ),
            ));
  }
}

class _BuilderItemSuggestionsAlert extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String subTitle;
  final Function() onTap;

  const _BuilderItemSuggestionsAlert(
      {Key? key,
      required this.iconData,
      required this.title,
      required this.subTitle,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 8),
        child: Row(
          children: [
            Icon(this.iconData, size: 28, color: MyApp.accentColor),
            SizedBox(width: 32),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(this.title,
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                SizedBox(height: 4),
                this.subTitle.isEmpty ? Container() : Text(this.subTitle),
              ],
            ),
            Expanded(child: Container()),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ],
        ),
      ),
    );
  }
}

class _BuildConnections extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 4,
      child: Container(
        width: double.infinity,
        child: Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, left: 24, right: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8),
                Text("Conexiones inalámbricas y redes",
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: Colors.black54)),
                _BuilderItemConnections(
                  onTap: () {},
                  iconData: Icons.signal_wifi_4_bar,
                  title: "Wi-Fi",
                  subTitle: "inhabilitada",
                ),
                _BuilderItemConnections(
                  onTap: () {},
                  iconData: Icons.bluetooth,
                  title: "Bluetooth",
                  subTitle: "inhabilitado",
                ),
                _BuilderItemConnections(
                  onTap: () {},
                  iconData: Icons.sim_card,
                  title: "Targetas SIM",
                  subTitle: "",
                ),
                _BuilderItemConnections(
                  onTap: () {},
                  iconData: Icons.data_usage,
                  title: "Uso de datos",
                  subTitle: "35.50 MB de datos usados",
                ),
                _BuilderItemConnections(
                  onTap: () {},
                  iconData: Icons.more_horiz,
                  title: "Mas",
                  subTitle: "",
                ),
              ],
            )),
      ),
    );
  }
}

class _BuilderItemConnections extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String subTitle;
  final Function() onTap;

  const _BuilderItemConnections(
      {Key? key,
      required this.iconData,
      required this.title,
      required this.subTitle,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 24, bottom: 24),
        child: Row(
          children: [
            Icon(this.iconData, size: 28, color: MyApp.accentColor),
            SizedBox(width: 32),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(this.title,
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                SizedBox(height: 4),
                this.subTitle.isEmpty ? Container() : Text(this.subTitle),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
