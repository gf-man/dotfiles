import Quickshell
import QtQuick
import qs.Configs


Capsule {
  id: root
  property string capsuleText: ""
  property real fontSize: 10
  implicitWidth: text.contentWidth + (Config.margin * 2)
  Text {
    id: text
    text: root.capsuleText
    font.pointSize: root.fontSize
    color: Colors.text
    //anchors.horizontalCenter: parent.horizontalCenter
    //anchors.verticalCenter: parent.verticalCenter
    anchors.centerIn: parent
    anchors.alignWhenCentered: false
  }
}
