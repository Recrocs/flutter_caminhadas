
import 'package:home_widget/home_widget.dart';

import '../models/caminhada.dart';

class WidgetService {

  static Future<void> atualizarWidget(
    List<Caminhada> caminhadas,
  ) async {

    double distanciaTotal = 0;
    double caloriasTotal = 0;

    for (var caminhada in caminhadas) {
      distanciaTotal += caminhada.distancia;
      caloriasTotal += caminhada.calorias;
    }

    int quantidadeCaminhadas = caminhadas.length;

    await HomeWidget.saveWidgetData<String>(
      'distancia',
      distanciaTotal.toStringAsFixed(1).replaceAll('.', ','),
    );

    await HomeWidget.saveWidgetData<String>(
      'caminhadas',
      quantidadeCaminhadas.toString(),
    );

    await HomeWidget.saveWidgetData<String>(
      'calorias',
      caloriasTotal.toStringAsFixed(0),
    );

    await HomeWidget.updateWidget(
      qualifiedAndroidName:
          'com.example.flutter_app_caminhadas.MeuHomeWidget',
    );
  }
}
