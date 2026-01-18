import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtCharts

Window {
    minimumWidth: 640
    maximumWidth: 640
    minimumHeight: 480
    maximumHeight: 480
    width: 640
    height: 480
    visible: true
    title: qsTr("Cipher Tools - Echo")


    ToolBar{
        RowLayout{
            anchors.verticalCenter: parent.verticalCenter
            spacing: 12
            TextField {
                id: domainAndIP_Target
                placeholderText: "目标域名或 IP"
                width: 380
                Keys.onReturnPressed: startPing()
                }
            ComboBox{
                id:protocol_list
                model: ["TCP","UDP","ICMP"]
                currentIndex: 0
            }
            Button{
                id:start_action
                text: qsTr("Start")
                //text: pingCtrl.running ? ""
            }

        }
    }
}
