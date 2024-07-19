import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class CustomStatusBar extends StatefulWidget {
  const CustomStatusBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomStatusBarState createState() => _CustomStatusBarState();
}

class _CustomStatusBarState extends State<CustomStatusBar> {
  String _wifiStatus = 'WiFi Durumu: Bilinmiyor'; // Bağlantı durumu başlangıç değeri

  @override
  void initState() {
    super.initState();
    _initConnectivity();
  }

  // Connectivity Plus paketini kullanarak Wi-Fi durumunu kontrol etme
  Future<void> _initConnectivity() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    // ignore: unrelated_type_equality_checks
    if (connectivityResult == ConnectivityResult.wifi) {
      setState(() {
        _wifiStatus = 'WiFi Durumu: Bağlı';
      });
    } else {
      setState(() {
        _wifiStatus = 'WiFi Durumu: Bağlı Değil';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
     
    return Container(
      color: Colors.blue,
      height: 50.0, // Durum çubuğunun yüksekliği
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(_wifiStatus, style: const TextStyle(color: Colors.white)),
          const Icon(Icons.settings, color: Colors.white),
        ],
      ),
       
    );
  
  }
}
