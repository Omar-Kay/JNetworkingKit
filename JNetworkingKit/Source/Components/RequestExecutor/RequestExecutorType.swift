import Foundation

public protocol RequestExecutorType {
    var client: RequestClientType { get }
    func perform(request: Request, onSuccess: @escaping (Response) -> Void, onError: @escaping (Error) -> Void)
}

extension RequestExecutorType {
    public func perform(request: Request, onSuccess: @escaping (Response) -> Void, onError: @escaping (Error) -> Void) {
        client.perform(request: request, onSuccess: onSuccess, onError: onError)
    }
}
