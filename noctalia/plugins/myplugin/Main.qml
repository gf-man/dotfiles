import QtQuick
import Quickshell.Io
import qs.Services.UI

Item {
  property var pluginApi: null

  IpcHandler {
    target: "plugin:my-plugin"
    function yourCommand() {
      // Your handler logic here
    }
  }
}
