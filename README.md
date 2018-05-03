# cordova-plugin-swift-camera
camera plugin by swift


## add this plugin

when you want to add this plugin in your cordova project, you excute the following a command.

`cordova plugin add cordova-plugin-swift-camera --variable CAMERA_USAGE_DESCRIPTION="this app will use your camera"`


## edit config.xml in your cordova project

after add this plugin, you edit the following config.xml

`<preference name="UseSwiftLanguageVersion" value="4" />`

> cordova-plugin-add-swift-support  
> https://github.com/akofman/cordova-plugin-add-swift-support  
> Or it is possible to specify the version as following, inside the project's config.xml, within the <platform name="ios"> section:  
> `<preference name="UseSwiftLanguageVersion" value="4" />`


## change deployment target

you chenge deployment target in your project and target from 9.0 to 11.0 in your xcode.


## Swift 3 @objc Inference

you cahange value of Swift 3 @objc Inference from default to on.


## License
MIT
