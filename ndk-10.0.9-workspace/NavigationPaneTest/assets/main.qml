// main.qml

import bb.cascades 1.0

NavigationPane {
    id: navigationPane
    backButtonsVisible: false
    
    // Create the initial screen
    Page {
        content: Container {
            background : Color.Green
            Container
            {                            
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
                preferredWidth: 768
                Label {
                    horizontalAlignment: HorizontalAlignment.Center
                    text: "Welcome to TD Mobile PayPass"
                    textStyle {
                        base: SystemDefaults.TextStyles.BodyText
                        color: Color.Black
                        fontWeight: FontWeight.Bold
                    }
                
                }
                Label {
                    horizontalAlignment: HorizontalAlignment.Center
                    text: "Enter your password"
                    textStyle {
                        base: SystemDefaults.TextStyles.BodyText
                        color: Color.Grey
                    }
                
                }
            }
            
            Container {
                topPadding: 30
                preferredWidth: 200
                horizontalAlignment: HorizontalAlignment.Center
                TextField {
                    inputMode: TextFieldInputMode.Password   
                    id: inputField      
                    hintText : "password"
                    
                    
                    input {
                        onSubmitted: {
                            if("1234" != inputField.text)
                            {
                                label.text = "Invalid Password \nPlease re-enter your password."
                                
                            }
                            else
                            {
                                label.text = "Login successful"
                                var newPage = pageDefinition.createObject();
                                navigationPane.pop();
                                navigationPane.push(newPage);
                                
                            }
                            text =""
                        }
                    }
                       
                    onFocusedChanged: {
                            label.text = ""
                            
                    }
                
                }
                
           }
           Container {
               topPadding: 30
               preferredWidth: 600 
               horizontalAlignment: HorizontalAlignment.Center
               Label {
                   id: label
                   multiline : true
                   preferredWidth: 700
                   
                   text: ""
                   textStyle {
                       textAlign: TextAlign.Center
                       base: SystemDefaults.TextStyles.BodyText
                       color: Color.Red
                   }
               }
           
           }
           Container {
               topPadding: 200
               preferredWidth: 600 
               horizontalAlignment: HorizontalAlignment.Center
               
               Label {
                   id: forgetPasswordLabel
                   
                   preferredWidth: 700
                   
                   text: "Forgot your password? \nCall 1-800-983-8472 for assistance"
                   multiline : true
                   textStyle {
                       textAlign: TextAlign.Center
                       base: SystemDefaults.TextStyles.BodyText
                       color: Color.Black
                   }
               }
           
           }
        }
        
//        actions: [
//            // Create the "Push" action
//            ActionItem {
//                title: "Start"
//                imageSource: "asset:///images/picture1.png"
//                ActionBar.placement: ActionBarPlacement.OnBar
//                
//                // When this action is selected, create an object that's based
//                // on the ComponentDefinition below, and then push it on to
//                // the stack to display it
//                onTriggered: {
//                    var newPage = pageDefinition.createObject();
//                    navigationPane.push(newPage);
//                }
//            }
//        ]
        
        attachedObjects: [
            // Create the ComponentDefinition that represents the custom
            // component in myPage.qml
            ComponentDefinition {
                id: pageDefinition
                source: "myPage.qml"
            },
            ComponentDefinition {
                id: thirdPageDefinition
                source: "thirdPage.qml"
            }
        ]
    } // end of Page
} // end of NavigationPane
