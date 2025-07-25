import QtQuick
import QtQuick.Controls
ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    visibility: "FullScreen"

    property bool showAdvanedInfo: false
        Rectangle
        {
            anchors.fill: parent
            anchors.margins: 25
            color: "#111111ff"
            radius: 18

            Text {
                id: name
                text: qsTr("Vishal Ahirwar")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.margins: 25
                font.pixelSize: 45
                font.bold: true
            }
            Text {
                id: socialMediaProfile
                text: qsTr("Vicked Knight")
                font.pixelSize: 22
                font.bold: false
                color: "#AA111111"
                anchors.left:name.left
                anchors.top: name.bottom
                anchors.topMargin: 10
            }
            Text {
                id: address
                visible: showAdvanedInfo
                text: qsTr("Bhopal Madhya Pradesh India.")
                font.pixelSize: 22
                font.bold: false
                color: "#BB111111"
                anchors.left:name.left
                anchors.top: socialMediaProfile.bottom
                anchors.topMargin: 2
            }
            Text {
                id: phoneNumber
                visible: showAdvanedInfo
                text: qsTr("+91 2345678945")
                font.pixelSize: 16
                font.bold: false
                color: "#BA111111"
                anchors.left:name.left
                anchors.top: address.bottom
                anchors.topMargin: 2
            }
            Text {
                id: email
                visible: showAdvanedInfo
                text: qsTr("thisisnotmymail@gmail.com")
                font.pixelSize: 18
                font.bold: false
                color: "#BA111111"
                anchors.left:name.left
                anchors.top: phoneNumber.bottom
                anchors.topMargin: 2
            }
            Text {
                id: website
                visible: showAdvanedInfo
                text: qsTr("www.viuvlabs.com")
                font.pixelSize: 18
                font.bold: false
                color: "#BA111111"
                anchors.left:name.left
                anchors.top: email.bottom
                anchors.topMargin: 2
            }

            Image {
                id: userProfilePhoto
                source: "qrc:/user.png"
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.margins: 25
                width: 128
                height: width
            }

            Rectangle
            {
                width: 124
                height: 32
                color: showAdvanedInfo?"black":"transparent"
                border.width: 2
                border.color: "black"
                anchors.left: parent.left
                anchors.bottom: parent.bottom
                anchors.margins: 25
                radius: 18
                Text {

                    text: qsTr("Details")
                    anchors.centerIn: parent
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    color: showAdvanedInfo?"white":"black"
                }
                MouseArea
                {
                    anchors.fill: parent
                    onClicked: (mouse)=>{
                                   if(mouse.button==Qt.LeftButton){
                                       showAdvanedInfo=!showAdvanedInfo
                                   }
                               }
                }
            }
        }

}
