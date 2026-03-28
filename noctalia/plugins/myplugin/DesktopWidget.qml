import QtQuick
import QtQuick.Layouts
import qs.Commons
import qs.Modules.DesktopWidgets
import qs.Widgets

DraggableDesktopWidget {
  id: root
  property real minScale: 1
  property real maxScale: 1


  // Plugin API (injected by PluginService)
  property var pluginApi: null

  // Widget dimensions
  implicitWidth: Style.barHeight
  implicitHeight: parent.height - Style.barHeight - 16

    ColumnLayout {
    id: row
    anchors.fill: parent
    anchors.margins: Style.marginL

    NText {
      text: "T"
      color: Color.mOnSurface
    }
    NText {
      text: "E"
      color: Color.mOnSurface
    }
    NText {
      text: "S"
      color: Color.mOnSurface
    }
    NText {
      text: "T"
      color: Color.mOnSurface
    }

  }
}
