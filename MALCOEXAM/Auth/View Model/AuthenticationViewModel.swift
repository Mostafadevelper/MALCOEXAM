////
////
//
//import Foundation
//
//
class AuthenticationViewModel {

    func login(email: String, password: String , complition: @escaping (_ token: AuthResonse?, _ error: CustomError?) -> Void ) {
        let paramter = AuthRequestParameters(email: email, password: password)
        let authApi = AuthApi()
        authApi.params = paramter
        
        authApi.login().get {  userResponse in
//
            complition(userResponse, nil)
        }.catch { error in
            complition(nil, error as? CustomError)
        }
    }

    
    func register(email : String, password : String, complition: @escaping(_ response: AuthResonse?, _ error: CustomError?) -> Void) {

        let registerParameters = AuthRequestParameters(email: email, password: password)

        let authApi = AuthApi()
        authApi.params = registerParameters
        authApi.register().get { response in
            complition(response, nil)
        }.catch { error in
            complition(nil, error as? CustomError)
        }
    }

    
}
