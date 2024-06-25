import Foundation
import Cordova
import RoomPlan
import ARKit

@objc(cordova-lidar)
class cordova-lidar: CDVPlugin, RoomCaptureViewDelegate, RoomCaptureSessionDelegate{
    @objc(isLiDARAvailable:)
    func isLiDARAvailable(command: CDVInvokedUrlCommand) {
        let available = ARWorldTrackingConfiguration.supportsSceneReconstruction(.mesh)
        let pluginResult = CDVPluginResult(status: CDVCommandStatus_OK, messageAs: available)
        self.commandDelegate.send(pluginResult, callbackId: command.callbackId)
    }
}
 