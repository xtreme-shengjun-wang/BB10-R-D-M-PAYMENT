// myPage.qml

import bb.cascades 1.0
import "Common"

Page {    
//    actions: [
//        // Create the "Push" action
//        ActionItem {  
//            title: "Ready"
//            ActionBar.placement: ActionBarPlacement.OnBar
//            
//            // When this action is selected, create an object that's based
//            // on the ComponentDefinition in main.qml, and then push it on to
//            // the stack to display it
//            onTriggered: {
//                var newPage = thirdPageDefinition.createObject();
//                navigationPane.push(newPage);
//            }
//        }
//    ] // end of actions list
    
    
    content: Container{
        background : Color.Green
        
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
                text: "Please Select The Card For Your Paypass"
                textStyle {
                    base: SystemDefaults.TextStyles.BodyText
                    color: Color.Black
                    fontWeight: FontWeight.Bold
                }
            }
        }
        
        Container {
            background: Color.Green
            ListView {
                layout: StackListLayout{                
                    orientation	: LayoutOrientation.LeftToRight
                }
                
                dataModel: XmlDataModel {
                    source: "models/dataModel.xml"
                }
                
                listItemComponents: [
                    ListItemComponent {
                        type: "listitem"
                        
                        Container {
                            id: itemRoot
                            preferredWidth: 768
                            
                            ImageView {
                                imageSource: ListItemData.image
                                preferredWidth: 640
                                preferredHeight: 420
                                horizontalAlignment: HorizontalAlignment.Center                            
                            }                            
                            
                            Label { 
                                horizontalAlignment: HorizontalAlignment.Center
                                text: ListItemData.title
                                textStyle {
                                    base: SystemDefaults.TextStyles.BigText
                                    color: Color.White
                                    
                                    fontWeight: FontWeight.Bold
                                }
                            }
                        }
                    }
                ]
                
                onTriggered: {                    
                    var chosenItem = dataModel.data(indexPath); 
                    var newPage = thirdPageDefinition.createObject();
                    newPage.selectedItemTitle = chosenItem.title
                    newPage.selectedItemImage = chosenItem.image                    
                    navigationPane.push(newPage);                    
                }
            }
        }
    } 
} // end of Page