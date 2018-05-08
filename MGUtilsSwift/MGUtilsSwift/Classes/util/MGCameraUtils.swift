//
//  MGCameraUtils.swift
//  MGUtilsSwift
//
//  Created by Magical Water on 2018/4/20.
//  Copyright © 2018年 Magical Water. All rights reserved.
//

import Foundation
//import AVFoundation

//2018.05.08: 相關物件需要ios10, 但此專案最低支援ios9, 因此暫時註解, 之後再慢慢改
class MGCameraUtils {

//    private var captureSession: AVCaptureSession?
//
//    private var frontCameraDevice: AVCaptureDevice?
//    private var backCameraDevice: AVCaptureDevice?
//
//    var currentCameraPosition: CameraPosition?
//    var frontCameraInput: AVCaptureDeviceInput?
//    var backCameraInput: AVCaptureDeviceInput?
//
//    enum CameraControllerError: Swift.Error {
//        case captureSessionAlreadyRunning
//        case captureSessionIsMissing
//        case inputsAreInvalid
//        case invalidOperation
//        case noCamerasAvailable
//        case unknown
//    }
//
//    public enum CameraPosition {
//        case front
//        case back
//    }
//
//    private func createCaptureSession() {
//        captureSession = AVCaptureSession()
//    }
//
//    //得到相機裝置, 通常分成前置/後置
//    private func configureCaptureDevices() throws {
//        let availableCameraDevice = AVCaptureDevice.DiscoverySession(deviceTypes: [AVCaptureDevice.DeviceType.builtInDualCamera],
//                                                                     mediaType: AVMediaType.video, position: .unspecified)
//
//        let devices = availableCameraDevice.devices
//
//        guard !devices.isEmpty else {
//            throw CameraControllerError.noCamerasAvailable
//        }
//
//        try devices.forEach {
//
//            switch $0.position {
//            case .front: //前置鏡頭
//                frontCameraDevice = $0
//                break
//            case .back: //後置鏡頭
//                backCameraDevice = $0
//
//                try $0.lockForConfiguration()
//                $0.focusMode = .continuousAutoFocus
//                $0.unlockForConfiguration()
//                break
//            case .unspecified: //未知
//                break
//            }
//
//        }
//    }
//
//    private func configureDeviceInputs() throws {
//        //1
//        guard let captureSession = self.captureSession else {
//            throw CameraControllerError.captureSessionIsMissing
//        }
//
//        //2
//        if let backCameraDevice = self.backCameraDevice {
//            self.backCameraInput = try AVCaptureDeviceInput(device: backCameraDevice)
//
//            if captureSession.canAddInput(self.backCameraInput!) {
//                captureSession.addInput(self.backCameraInput!)
//            }
//
//            self.currentCameraPosition = .back
//
//        } else if let frontCameraDevice = self.frontCameraDevice {
//            self.frontCameraInput = try AVCaptureDeviceInput(device: frontCameraDevice)
//
//            if captureSession.canAddInput(self.frontCameraInput!) { captureSession.addInput(self.frontCameraInput!) }
//            else { throw CameraControllerError.inputsAreInvalid }
//
//            self.currentCameraPosition = .front
//        }
//
//        else { throw CameraControllerError.noCamerasAvailable }
//    }
//
//    private func configurePhotoOutput() {}

}











