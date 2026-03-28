import Quickshell
import Quickshell.Io

import QtQuick
import QtQuick.Layouts

import qs.Components
import qs.Configs
import qs.Services

CapsuleText {
  id: root
  property list <string> buttonProcess: [""]
  color: Colors.foreground
  MouseArea {
    id: mouseArea
    anchors.fill: root
    acceptedButtons: Qt.LeftButton
    hoverEnabled: true
    cursorShape: Qt.PointingHandCursor
    onClicked: {
      process.startDetached()
      root.color = Colors.foregroundActive
      //root.color = containsMouse ? Colors.foregroundActive : Colors.foreground
    }
    onPressed: root.color = Colors.foregroundHighlight
    onEntered: root.color = Colors.foregroundActive
    onExited: root.color = Colors.foreground
    Process {
      id: process
      command: buttonProcess
    }
  }
}

