import Quickshell
import QtQuick

import qs.Configs

Rectangle {
  id: root
  radius: Config.rounded ? Config.barHeight : 0
  color: "transparent"
  implicitHeight: Config.barHeight
}
