
package com.example.flutter_app_caminhadas

import android.appwidget.AppWidgetManager
import android.content.Context
import android.content.SharedPreferences
import android.widget.RemoteViews
import es.antonborri.home_widget.HomeWidgetProvider

class MeuHomeWidget : HomeWidgetProvider() {

    override fun onUpdate(
        context: Context,
        appWidgetManager: AppWidgetManager,
        appWidgetIds: IntArray,
        widgetData: SharedPreferences
    ) {

        for (widgetId in appWidgetIds) {

            val distancia = widgetData.getString("distancia", "0,0")
            val caminhadas = widgetData.getString("caminhadas", "0")
            val calorias = widgetData.getString("calorias", "0")

            val views = RemoteViews(
                context.packageName,
                R.layout.meu_home_widget
            )

            views.setTextViewText(
                R.id.txtDistancia,
                "$distancia km"
            )

            views.setTextViewText(
                R.id.txtCaminhadas,
                "$caminhadas caminhadas"
            )

            views.setTextViewText(
                R.id.txtCalorias,
                "$calorias kcal"
            )

            appWidgetManager.updateAppWidget(widgetId, views)
        }
    }
}
