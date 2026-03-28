pragma Singleton

import QtQuick
import Quickshell

Singleton {
  id: root
  property int margin: 4
  property int borderWidth: 4
  property int barHeight: 20
  property int realBarHeight: barHeight + (borderWidth * 2)
  property bool rounded: true
}
