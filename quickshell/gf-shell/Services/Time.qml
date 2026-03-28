pragma Singleton

import Quickshell
import QtQuick

Singleton {
    id: root

    readonly property string date: {
      Qt.formatDateTime(clock.date, "ddd d MMM")
    }
    
    readonly property string time: {
      Qt.formatDateTime(clock.date, "h:mm:ss AP")
    }
  
  SystemClock {
      id: clock
      precision: SystemClock.Seconds
    }

  }
