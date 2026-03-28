import Quickshell
import Quickshell.Io

import QtQuick
import QtQuick.Layouts

import qs.Components
import qs.Configs
import qs.Services

Scope {
  Variants {
    model: Quickshell.screens

    PanelWindow {
      id: bar
      required property var modelData
      screen: modelData
      color: "transparent"

      implicitHeight: Config.realBarHeight + Config.margin
      
      anchors {
        top: true
        left: true
        right: true
      }

      Rectangle {
        anchors.fill: parent
        radius: Config.rounded ? Config.realBarHeight / 2: 0
        color: Colors.background
        anchors.topMargin: Config.margin; anchors.leftMargin: Config.margin; anchors.rightMargin: Config.margin
        border.color: Colors.backgroundHighlight
        border.width: Config.borderWidth

        RowLayout {
          anchors.left: parent.left
          anchors.leftMargin: Config.margin
          anchors.verticalCenter: parent.verticalCenter
          CapsuleText {
            capsuleText: Time.date
          }
        }

        RowLayout {
          anchors.centerIn: parent

          ButtonCapsuleText {
            capsuleText: "\uea85"
            buttonProcess: ["kitty"]
            fontSize: 12
          }

          ButtonCapsuleText {
            capsuleText: "\ue745"
            buttonProcess: ["firefox"]
            fontSize: 12
          }

          ButtonCapsuleText {
            capsuleText: "\ue7c5"
            buttonProcess: ["kitty", "--hold", "nvim"]
            fontSize: 12
          }

          ButtonCapsuleText {
            capsuleText: "\uf4d4"
            buttonProcess: ["kitty", "--hold", "yazi"]
            fontSize: 12
          }

          ButtonCapsuleText {
            capsuleText: "\uf1bc"
            buttonProcess: ["spotify"]
            fontSize: 12
          }
        }

        RowLayout {
          anchors.right: parent.right
          anchors.rightMargin: Config.margin
          anchors.verticalCenter: parent.verticalCenter

          CapsuleText{
            capsuleText: Time.time
          }
        }

      }


    }
  }
}
