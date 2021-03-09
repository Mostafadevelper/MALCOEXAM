//
//

import Alamofire
import PromiseKit

class AuthApi: Api {
    enum APIRouter: Requestable {
        case login(AuthApi)
        case register(AuthApi)
        
        var header: [String : String]? {
            switch self {
            case .login:
                return ["Content-Type": "application/x-www-form-urlencoded"]
            default:
                return nil
            }
        }
        
        var isWWWFormUrlEncoded: Bool? {
            switch self {
            case .login:
                return true
            default:
                return false
            }
        }
        
        var path: String {
            switch self {
            case .login:
                return "/Login"
            case .register:
                return "/Register"
            }
        }
        
        var baseUrl: URL {
            return URL(string: "www.malco.com")!
        }
        
        var method: HTTPMethod {
            switch self {
            case .login:
                return .post
            case .register :
                return .post
            }
        }

        var parameters: Parameters? {
            switch self {
            case let .login(api):
                return api.params?.getParamsAsJson()
            case let .register(api):
                return api.params?.getParamsAsJson()
            }
        }
    }
}


extension AuthApi {
    func login() -> Promise<AuthResonse> {
        fireRequestWithSingleResponse(requestable: APIRouter.login(self))
    }
//
    func register() -> Promise<AuthResonse> {
        fireRequestWithSingleResponse(requestable: APIRouter.register(self))
    }

    
    
}
