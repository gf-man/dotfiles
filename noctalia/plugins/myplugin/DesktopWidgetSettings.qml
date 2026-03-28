import QtQuick
import QtQuick.Layouts
import qs.Commons
import qs.Widgets

ColumnLayout {
  id: root
  spacing: Style.marginM

  // Plugin API (injected by the settings dialog system)
  property var pluginApi: null

  // Widget settings object (injected by the settings dialog system)
  property var widgetSettings: null

  // Local state - initialize from widgetSettings.data with metadata fallback
  property bool valueShowBackground:
    widgetSettings?.data?.showBackground ??
    widgetSettings?.metadata?.showBackground ??
    true

  // Your settings controls here

  NToggle {
    Layout.fillWidth: true
    label: "Show Background"
    description: "Display the widget background container"
    checked: root.valueShowBackground
    onToggled: checked => {
      root.valueShowBackground = checked;
      saveSettings();
    }
  }

  function saveSettings() {
    if (!widgetSettings) return;
    widgetSettings.data.showBackground = root.valueShowBackground;
    widgetSettings.save();
  }
}
