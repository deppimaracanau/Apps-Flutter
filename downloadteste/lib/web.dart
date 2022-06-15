import 'package:downloadteste/servico.dart';
import 'package:universal_html/html.dart' as html;



class WebDownloadService implements DownloadService {
  @override
  Future<void> download({required String url}) async {
    html.window.open(url, '_blank');
  }
}