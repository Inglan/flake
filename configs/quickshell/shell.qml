import Quickshell // for ShellRoot and PanelWindow
import QtQuick // for Text

ShellRoot {
  PanelWindow {
    anchors {
      top: true
      bottom: true
      left: true
    }

    height: 30

    Text {
      // center the bar in its parent component (the window)
      anchors.centerIn: parent

      text: "hello world"
    }
  }
}
