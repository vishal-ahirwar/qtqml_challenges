import QtQuick
import QtQuick.Controls
ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    visibility: "FullScreen"

    Rectangle {
        id: content
        anchors.fill: parent
        color: "skyblue"
        anchors.margins: 50
        radius: 18
        opacity: 0  // Start from transparent

        OpacityAnimator {
            target: content
            from: 0
            to: 1
            duration: 1500
            running: true
            onStarted: console.log("Animation started")
        }
    }

    Text {
        id: name
        text: qsTr("Viuv Labs")
        anchors.centerIn: parent
        font.pixelSize: 75
        color: "black"
        font.bold: true
    }

}
