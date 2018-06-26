//
//  APIManager.swift
//  PPL
//
//  Created by cdn68 on 31/05/18.
//  Copyright © 2018 cdn. All rights reserved.
//

import Foundation
import Alamofire

private let InvalidAccessToken: Int = 2

class APIManager {
    
    func login(methodName:String, parameters: [String : Any], completion: @escaping ((DataResponse<Any>) -> Void),failure: @escaping ((NSError?)) -> Void) {
        self.callService(url: "\(kBaseUrl)\(methodName)", parameters: parameters, completion: { (responseData) in
            completion(responseData)
        }) { (error) in
            failure(error as NSError?)
        }
    }
    
    func registration(methodName:String, parameters: [String : Any], completion: @escaping ((DataResponse<Any>) -> Void),failure: @escaping ((NSError?)) -> Void) {
        self.callService(url: "\(kBaseUrl)\(methodName)", parameters: parameters, completion: { (responseData) in
            completion(responseData)
        }) { (error) in
            failure(error as NSError?)
        }
    }
    
    func forgotPassword(methodName:String, parameters: [String : Any], completion: @escaping (([String : Any]) -> Void),failure: @escaping ((NSError?)) -> Void) {
        self.callService(url: "\(kBaseUrl)\(methodName)", parameters: parameters, completion: { (responseData) in
            completion(responseData.result.value as! [String : Any])
        }) { (error) in
            failure(error as NSError?)
        }
    }
    
    func updateProfile(parameters: [String : Any], completion: @escaping (([String : Any]) -> Void),failure: @escaping ((NSError?)) -> Void) {
        self.callService(url: "\(kBaseUrl)\(kMethodProfile_Patient)", parameters: parameters, completion: { (responseData) in
            completion(responseData.result.value as! [String : Any])
        }) { (error) in
            failure(error as NSError?)
        }
    }
    
    func doctorList(parameters: [String : Any], completion: @escaping ((DataResponse<Any>) -> Void),failure: @escaping ((NSError?)) -> Void) {
        self.callService(url: "\(kBaseUrl)\(kMethodDoctor_List)", parameters: parameters, completion: { (responseData) in
            completion(responseData)
        }) { (error) in
            failure(error as NSError?)
        }
    }
    
    func changePassword(parameters: [String : Any], completion: @escaping (([String : Any]) -> Void),failure: @escaping ((NSError?)) -> Void) {
        self.callService(url: "\(kBaseUrl)\(kMethodPatient_ChangePassword)", parameters: parameters, completion: { (responseData) in
            completion(responseData.result.value as! [String : Any])
        }) { (error) in
            failure(error as NSError?)
        }
    }
    
    func addPilateSendRequest(parameters: [String : Any], completion: @escaping (([String : Any]) -> Void),failure: @escaping ((NSError?)) -> Void) {
        self.callService(url: "\(kBaseUrl)\(kMethodPatient_SendRequest)", parameters: parameters, completion: { (responseData) in
            completion(responseData.result.value as! [String : Any])
        }) { (error) in
            failure(error as NSError?)
        }
    }
    
    func myClients(methodName:String, parameters: [String : Any], completion: @escaping ((DataResponse<Any>) -> Void),failure: @escaping ((NSError?)) -> Void) {
        self.callService(url: "\(kBaseUrl)\(methodName)", parameters: parameters, completion: { (responseData) in
            completion(responseData)
        }) { (error) in
            failure(error as NSError?)
        }
    }
    
    func changePatientRequest(parameters: [String : Any], completion: @escaping (([String : Any]) -> Void),failure: @escaping ((NSError?)) -> Void) {
        self.callService(url: "\(kBaseUrl)\(kMethodPatient_RequestStatus)", parameters: parameters, completion: { (responseData) in
            completion(responseData.result.value as! [String : Any])
        }) { (error) in
            failure(error as NSError?)
        }
    }
    
    func createSchedule(parameters: [String : Any], completion: @escaping (([String : Any]) -> Void),failure: @escaping ((NSError?)) -> Void) {
        self.callService(url: "\(kBaseUrl)\(kMethodCreate_Schedule)", parameters: parameters, completion: { (responseData) in
            completion(responseData.result.value as! [String : Any])
        }) { (error) in
            failure(error as NSError?)
        }
    }
    
    func scheduleList(parameters: [String : Any], completion: @escaping ((DataResponse<Any>) -> Void),failure: @escaping ((NSError?)) -> Void) {
        self.callService(url: "\(kBaseUrl)\(kMethodGet_Schedule)", parameters: parameters, completion: { (responseData) in
            completion(responseData)
        }) { (error) in
            failure(error as NSError?)
        }
    }
    
    func sessionList(parameters: [String : Any], completion: @escaping ((DataResponse<Any>) -> Void),failure: @escaping ((NSError?)) -> Void) {
        self.callService(url: "\(kBaseUrl)\(kMethodGet_Sessions)", parameters: parameters, completion: { (responseData) in
            completion(responseData)
        }) { (error) in
            failure(error as NSError?)
        }
    }
    
    func schedules_AppointmentsList(parameters: [String : Any], completion: @escaping ((DataResponse<Any>) -> Void),failure: @escaping ((NSError?)) -> Void) {
        self.callService(url: "\(kBaseUrl)\(kMethodGet_Patient_Schedules)", parameters: parameters, completion: { (responseData) in
            completion(responseData)
        }) { (error) in
            failure(error as NSError?)
        }
    }
    
    func setPushNotification(parameters: [String : Any], completion: @escaping (([String : Any]) -> Void),failure: @escaping ((NSError?)) -> Void) {
        self.callService(url: "\(kBaseUrl)\(kMethod_Push_Notifications)", parameters: parameters, completion: { (responseData) in
            completion(responseData.result.value as! [String : Any])
        }) { (error) in
            failure(error as NSError?)
        }
    }
    
    func logout(parameters: [String : Any], completion: @escaping (([String : Any]) -> Void),failure: @escaping ((NSError?)) -> Void) {
        self.callService(url: "\(kBaseUrl)\(kMethod_Logout)", parameters: parameters, completion: { (responseData) in
            completion(responseData.result.value as! [String : Any])
        }) { (error) in
            failure(error as NSError?)
        }
    }
    
    func getImages(parameters: [String : Any], completion: @escaping ((DataResponse<Any>) -> Void),failure: @escaping ((NSError?)) -> Void) {
        self.callService(url: "\(kBaseUrl)\(kMethodGet_Images)", parameters: parameters, completion: { (responseData) in
            completion(responseData)
        }) { (error) in
            failure(error as NSError?)
        }
    }
    
    func getVideos(parameters: [String : Any], completion: @escaping ((DataResponse<Any>) -> Void),failure: @escaping ((NSError?)) -> Void) {
        self.callService(url: "\(kBaseUrl)\(kMethodGet_Video)", parameters: parameters, completion: { (responseData) in
            completion(responseData)
        }) { (error) in
            failure(error as NSError?)
        }
    }
    
    func addReview(parameters: [String : Any], completion: @escaping (([String : Any]) -> Void),failure: @escaping ((NSError?)) -> Void) {
        self.callService(url: "\(kBaseUrl)\(kMethodAdd_Review)", parameters: parameters, completion: { (responseData) in
            completion(responseData.result.value as! [String : Any])
        }) { (error) in
            failure(error as NSError?)
        }
    }
    
    func assignImageVideo(parameters: [String : Any], completion: @escaping (([String : Any]) -> Void),failure: @escaping ((NSError?)) -> Void) {
        self.callService(url: "\(kBaseUrl)\(kMethodAssignVideoImage)", parameters: parameters, completion: { (responseData) in
            completion(responseData.result.value as! [String : Any])
        }) { (error) in
            failure(error as NSError?)
        }
    }
    
    func getMyClass(parameters: [String : Any], completion: @escaping ((DataResponse<Any>) -> Void),failure: @escaping ((NSError?)) -> Void) {
        self.callService(url: "\(kBaseUrl)\(kMethodMyClass)", parameters: parameters, completion: { (responseData) in
            completion(responseData)
        }) { (error) in
            failure(error as NSError?)
        }
    }
    
    func addAppointments(parameters: [String : Any], completion: @escaping (([String : Any]) -> Void),failure: @escaping ((NSError?)) -> Void) {
        self.callService(url: "\(kBaseUrl)\(kMethodPatient_AddAppointments)", parameters: parameters, completion: { (responseData) in
            completion(responseData.result.value as! [String : Any])
        }) { (error) in
            failure(error as NSError?)
        }
    }
    
    func addVideo(parameters: [String: Any] , completion: @escaping (([String : Any]) -> Void),failure: @escaping ((NSError?)) -> Void) {
        self.callService(url: "\(kBaseUrl)\(kMethodVideo_Upload)", parameters: parameters, completion: { (responseData) in
            completion(responseData.result.value as! [String : Any])
        }) { (error) in
            failure(error as NSError?)
        }
    }
    
    func chatGroupList(parameters: [String : Any], completion: @escaping ((DataResponse<Any>) -> Void),failure: @escaping ((NSError?)) -> Void) {
        self.callService(url: "\(kBaseUrl)\(kMethodGet_Group)", parameters: parameters, completion: { (responseData) in
            completion(responseData)
        }) { (error) in
            failure(error as NSError?)
        }
    }
    
    func chatHistoryList(parameters: [String : Any], completion: @escaping ((DataResponse<Any>) -> Void),failure: @escaping ((NSError?)) -> Void) {
        self.callService(url: "\(kBaseUrl)\(kMethodGet_ChatHistory)", parameters: parameters, completion: { (responseData) in
            completion(responseData)
        }) { (error) in
            failure(error as NSError?)
        }
    }
    
    func callService(url: String, parameters: [String : Any], completion: @escaping ((DataResponse<Any>) -> Void), failure: @escaping ((NSError?) -> Void))
    {
        NetworkManager.isUnreachable { _ in
            CommonUtility.showErrorCRNotifications(title: "No Internet Connection", message: "Connect your device with Internet")
            return
        }
        var finalParameters = parameters
        finalParameters["device_type"] = "iOS"
        finalParameters["device_token"] = "12345678"
        finalParameters["app_version"] = CommonUtility.appVersion()
        finalParameters["user_type"] = CommonUtility.userType()
        if let user_access_token = UserDefaults.standard.value(forKey: UserdefaultsKey.accessToken.rawValue) {
            finalParameters["access_token"] = user_access_token
        }
        CommonUtility.startLoader()
        
        Alamofire.request(url, method: .post , parameters: finalParameters, encoding: URLEncoding.default , headers: nil).responseJSON {response in
            print(response)
            if response.result.error == nil {
                if let jsonObject : [String : Any] = response.result.value as? [String : Any]{
                    if jsonObject["result_code"]! as! Int == InvalidAccessToken {
                        NotificationCenter.default.post(name: .notificationForUserTypeView, object: nil)
                        return
                    }
                }
                completion(response)
                CommonUtility.stopLoader()
            }else {
                failure(response.result.error as NSError?)
                CommonUtility.stopLoader()
            }
        }
    }
    
    func uploadImageWithParameters(url: String, parameters: [String : Any], image: UIImage, completion: @escaping ((DataResponse<Any>) -> Void), failure: @escaping ((NSError?) -> Void)) {
        
        NetworkManager.isUnreachable { _ in
            CommonUtility.showErrorCRNotifications(title: "No Internet Connection", message: "Connect your device with Internet")
            return
        }
        var finalParameters = parameters
        finalParameters["device_type"] = "iOS"
        finalParameters["device_token"] = "12345678"
        finalParameters["app_version"] = CommonUtility.appVersion()
        finalParameters["user_type"] = CommonUtility.userType()
        
        if let user_access_token = UserDefaults.standard.value(forKey: UserdefaultsKey.accessToken.rawValue) {
            finalParameters["access_token"] = user_access_token
        }
        CommonUtility.startLoader()
        let imgData = UIImageJPEGRepresentation(image, 0.2)!
        Alamofire.upload(multipartFormData: { multipartFormData in
            multipartFormData.append(imgData, withName: "profile_image",fileName: "file.jpg", mimeType: "image/jpg")
            for (key, value) in finalParameters {
                multipartFormData.append((value as AnyObject).data(using: String.Encoding.utf8.rawValue)!, withName: key)
            } //Optional for extra parameters
        },
                         to:url)
        { (result) in
            switch result {
            case .success(let upload, _, _):
                
                upload.uploadProgress(closure: { (progress) in
                    print("Upload Progress: \(progress.fractionCompleted)")
                })
                
                upload.responseJSON { response in
                    if let jsonObject : [String : Any] = response.result.value as? [String : Any]{
                        if jsonObject["result_code"]! as! Int == InvalidAccessToken {
                            NotificationCenter.default.post(name: .notificationForUserTypeView, object: nil)
                            return
                        }
                    }
                    completion(response)
                    CommonUtility.stopLoader()
                }
                
            case .failure(let encodingError):
                print(encodingError)
                failure(encodingError as NSError)
                CommonUtility.stopLoader()
            }
        }
    }
    
    func addSession(methodName:String, parameters: [String : Any], completion: @escaping ((DataResponse<Any>) -> Void),failure: @escaping ((NSError?)) -> Void) {
        self.callService(url: "\(kBaseUrl)\(methodName)", parameters: parameters, completion: { (responseData) in
            completion(responseData)
        }) { (error) in
            failure(error as NSError?)
        }
    }
    
    func getSessionList(methodName:String, parameters: [String : Any], completion: @escaping ((DataResponse<Any>) -> Void),failure: @escaping ((NSError?)) -> Void) {
        self.callService(url: "\(kBaseUrl)\(methodName)", parameters: parameters, completion: { (responseData) in
            completion(responseData)
        }) { (error) in
            failure(error as NSError?)
        }
    }
    
    func uploadImages(parameters: [String : Any], imageFiles: [Data], completion: @escaping ((DataResponse<Any>) -> Void),failure: @escaping ((NSError?)) -> Void) {
//        self.uploadMultipleFilesWithParameters(url: "\(kBaseUrl)\(kMethodImages_Upload)", parameters: parameters, fileName: "images[]", files: imageFiles, completion: { (responseData) in
//            completion(responseData.result.value as! [String : Any])
//        }) { (error) in
//            failure(error as NSError?)
//        }
        self.uploadMultipleFilesWithParameters(url: "\(kBaseUrl)\(kMethodImages_Upload)", parameters: parameters, fileName: "images[]", files: imageFiles,fileExtension:"jpg", mimeType: "image/jpg",  completion: { (responseData) in
            completion(responseData)
        }) { (error) in
            failure(error as NSError?)
        }
    }
    
    func uploadVideos(parameters: [String : Any], imageFiles: [Data], completion: @escaping ((DataResponse<Any>) -> Void),failure: @escaping ((NSError?)) -> Void) {
        self.uploadMultipleFilesWithParameters(url: "\(kBaseUrl)\(kMethodVideo_Upload)", parameters: parameters, fileName: "video[]", files: imageFiles,fileExtension:"mp4", mimeType: "video/mp4",  completion: { (responseData) in
            completion(responseData)
        }) { (error) in
            failure(error as NSError?)
        }
    }
    
    func uploadMultipleFilesWithParameters(url: String, parameters: [String : Any], fileName: String, files: [Data], fileExtension: String, mimeType: String, completion: @escaping ((DataResponse<Any>) -> Void), failure: @escaping ((NSError?) -> Void)) {
        
        NetworkManager.isUnreachable { _ in
            CommonUtility.showErrorCRNotifications(title: "No Internet Connection", message: "Connect your device with Internet")
            return
        }
        var finalParameters = parameters
        finalParameters["device_type"] = "iOS"
        finalParameters["device_token"] = "12345678"
        finalParameters["app_version"] = CommonUtility.appVersion()
        finalParameters["user_type"] = CommonUtility.userType()
        
        if let user_access_token = UserDefaults.standard.value(forKey: UserdefaultsKey.accessToken.rawValue) {
            finalParameters["access_token"] = user_access_token
        }
        CommonUtility.startLoader()
        //   let imgData = UIImageJPEGRepresentation(image, 0.2)!
        Alamofire.upload(multipartFormData: { multipartFormData in
            //images[]
            for imageData in files {
                multipartFormData.append(imageData, withName: fileName, fileName: "\(Date().timeIntervalSince1970).\(fileExtension)", mimeType: "\(mimeType)")
            }
            //     multipartFormData.append(imgData, withName: "profile_image",fileName: "file.jpg", mimeType: "image/jpg")
            for (key, value) in finalParameters {
                multipartFormData.append((value as AnyObject).data(using: String.Encoding.utf8.rawValue)!, withName: key)
            } //Optional for extra parameters
        },
                         to:url)
        { (result) in
            switch result {
            case .success(let upload, _, _):
                
                upload.uploadProgress(closure: { (progress) in
                    print("Upload Progress: \(progress.fractionCompleted)")
                })
                
                upload.responseJSON { response in
                    if let jsonObject : [String : Any] = response.result.value as? [String : Any]{
                        if jsonObject["result_code"]! as! Int == InvalidAccessToken {
                            NotificationCenter.default.post(name: .notificationForUserTypeView, object: nil)
                            return
                        }
                    }
                    completion(response)
                    CommonUtility.stopLoader()
                }
                
            case .failure(let encodingError):
                print(encodingError)
                failure(encodingError as NSError)
                CommonUtility.stopLoader()
            }
        }
    }
}
