import 'package:downloadteste/servico.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:downloadteste/dataJson.dart';

//var link = ListDados.getData;

class Botao extends StatelessWidget {

  String url;
  String data;

   Botao(this.data,this.url, {Key? key} ) : super(key: key);

  Future<void> download() async {
    DownloadService downloadService =
    kIsWeb ? WebDownloadService() : MobileDownloadService();
    await downloadService.download(url: url);
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        primary: Colors.red,
        onSurface: Colors.black,
        elevation: 20,
        shadowColor: Colors.red,
      ),
      onPressed: download,
      icon: const Icon(Icons.download),
      label: const Text('Download do documento'),
    );
  }

}
