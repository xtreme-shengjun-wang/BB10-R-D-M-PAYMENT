import bb.cascades 1.0

Page {
    property alias selectedItemTitle : indexlabel.text
    property alias selectedItemImage : imageContainer.imageSource
    
    content: Container{
        background : Color.Green  
        preferredWidth: 768      
        
        Container {                            
            bottomPadding: 20
            preferredWidth: 768
            background : Color.DarkGreen
            id: titlebar
            Label {
                horizontalAlignment: HorizontalAlignment.Center
                text: "TD Mobile PayPass"
                textStyle {
                    base: SystemDefaults.TextStyles.BigText
                    color: Color.White
                    fontWeight: FontWeight.Bold
                }
            }
        }
        
        Container {
            topPadding: 230
            bottomPadding: 30
            preferredWidth: 768
            Label {
                horizontalAlignment: HorizontalAlignment.Center
                text: "Please Fill In Card Info\nCurrent Balance: 2013"
                multiline: true
                textStyle {
                    base: SystemDefaults.TextStyles.BodyText
                    color: Color.Black
                    fontWeight: FontWeight.Bold
                }            
            }
        }
        
        Container {            
            preferredWidth: 768
            ImageView {
                id: imageContainer
                //imageSource: 
                preferredWidth: 640
                preferredHeight: 420
                horizontalAlignment: HorizontalAlignment.Center
            }
        }
        
        Container{    
            preferredWidth: 768
            Label { 
                id : indexlabel
                horizontalAlignment: HorizontalAlignment.Center
                //text:
                textStyle {
                    base: SystemDefaults.TextStyles.BigText
                    color: Color.White                    
                    fontWeight: FontWeight.Bold
                }
            }
        }
    }
    
    
    actions: [
        // Create the "Pop" action
        ActionItem {  
            title: "Logout"
            ActionBar.placement: ActionBarPlacement.OnBar
            
            // When this action is selected, pop the current Page off
            // of the stack
            onTriggered: { 
                navigationPane.pop()               
            }
        }
    ] // end of actions list

}
