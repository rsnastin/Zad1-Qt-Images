import QtQuick 2.12
import QtQuick.Window 2.12

Window
{
    visible: true
    width: 640
    height: 480
    title: qsTr("Image")

    Image
    {
        id: pierwszy
        x: 100
        y: 100
        width: 100
        height: 100
        visible: true
        source: "images/cat.png"

        MouseArea
        {
            width: 100
            height: 100
            enabled: true
            anchors.fill: parent
            onClicked:
            {
                parent.source = "images/dog.png"
                drugi.source = "images/cat.png"
            }
        }
    }


    Image
    {
        id: drugi
        x: 300
        y: 100
        width: 100
        height: 100
        source: "images/dog.png"

        MouseArea
        {
            width: 100
            height: 100
            anchors.fill: parent
            onClicked:
            {
                parent.source = "images/dog.png"
                pierwszy.source = "images/cat.png"
            }
        }
    }

}
