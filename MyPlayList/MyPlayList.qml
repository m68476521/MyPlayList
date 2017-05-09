import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick.XmlListModel 2.0
import "components" as CP

Window {
    visible: true
    width: 440
    height: 680
    title: qsTr("MyPlayList")

    XmlListModel {
        id: myXmlModel

        // adding source
        source: "SOURCE"
        query: "/feed/entry"

        namespaceDeclarations: "declare default element namespace 'http://www.w3.org/2005/Atom';"
        XmlRole { name: 'title'; query: 'title/string()' }
        XmlRole { name: 'rights'; query: 'rights/string()' }
        XmlRole { name: 'category'; query: 'category/@label/string()' }
        XmlRole { name: 'im:artist'; query: 'im:artist/string()' }
        //<im:artist href="https://itunes.apple.com/us/artist/luis-fonsi/id102834?uo=2">Luis Fonsi & Daddy Yankee</im:artist>

        //<im:name>Despacito (feat. Justin Bieber) [Remix]</im:name>
        XmlRole { name: 'name'; query: 'im:name/string()' }
        // XmlRole { name: "thumbnail"; query: 'media:thumbnail/@url/string()' }

        //<category im:id="14" term="Pop" scheme="https://itunes.apple.com/us/genre/music-pop/id14?uo=2" label="Pop"/>

        //<media:thumbnail url="http://farm5.static.flickr.com/4048/4362801851_b80289ca0e_s.jpg" height="75" width="75"/>
        //XmlRole { name: "thumbnail"; query: 'media:thumbnail/@url/string()' }


        //            XmlRole { name: 'im:duration'; query: 'im:duration/string()' }
        //            XmlRole { name: 'rights'; query: 'rights/string()' }
    }

    MouseArea {
        anchors.fill: parent

        onClicked: {
            console.log("MIKE call xml")
        }
    }

    CP.CustomListView {
        width: 300
        height:650

        anchors.centerIn: parent

        model: myXmlModel

        delegate: CP.CustomDelegateTrack {
            width: 400
            height: 150

            artist: model.title
            //                trackName: model.title
            category: model.category
            //                duration: model.title
            rights: model.rights
            // image: model.title
        }
    }
}

