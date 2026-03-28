pragma Singleton

import QtQuick
import Quickshell

Singleton {
  id: root
  property color background: Qt.alpha("#1e1e1e", 0.8)
  property color backgroundHighlight: Qt.alpha("#242424", 0.8)
  property color foreground: Qt.alpha("#5e5c64", 0.8)
  property color foregroundHighlight: Qt.alpha("#c0bfbc", 0.8)
  property color foregroundActive: Qt.alpha("#3584e4", 0.8)
  property color text: Qt.alpha("#ffffff", 0.8)
}
