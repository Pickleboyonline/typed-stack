//
// PetAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class PetAPI {

    /**
     Add a new pet to the store
     
     - parameter pet: (body) Pet object that needs to be added to the store 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func addPet(pet: Pet, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Pet?, _ error: Error?) -> Void)) -> RequestTask {
        return addPetWithRequestBuilder(pet: pet).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Add a new pet to the store
     - POST /pet
     - 
     - OAuth:
       - type: oauth2
       - name: petstore_auth
     - parameter pet: (body) Pet object that needs to be added to the store 
     - returns: RequestBuilder<Pet> 
     */
    open class func addPetWithRequestBuilder(pet: Pet) -> RequestBuilder<Pet> {
        let localVariablePath = "/pet"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: pet)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Pet>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Deletes a pet
     
     - parameter petId: (path) Pet id to delete 
     - parameter apiKey: (header)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func deletePet(petId: Int64, apiKey: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return deletePetWithRequestBuilder(petId: petId, apiKey: apiKey).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Deletes a pet
     - DELETE /pet/{petId}
     - 
     - OAuth:
       - type: oauth2
       - name: petstore_auth
     - parameter petId: (path) Pet id to delete 
     - parameter apiKey: (header)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func deletePetWithRequestBuilder(petId: Int64, apiKey: String? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/pet/{petId}"
        let petIdPreEscape = "\(APIHelper.mapValueToPathItem(petId))"
        let petIdPostEscape = petIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{petId}", with: petIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "api_key": apiKey?.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter status
     */
    public enum Status_findPetsByStatus: String, CaseIterable {
        case available = "available"
        case pending = "pending"
        case sold = "sold"
    }

    /**
     Finds Pets by status
     
     - parameter status: (query) Status values that need to be considered for filter 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func findPetsByStatus(status: [Status_findPetsByStatus], apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [Pet]?, _ error: Error?) -> Void)) -> RequestTask {
        return findPetsByStatusWithRequestBuilder(status: status).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Finds Pets by status
     - GET /pet/findByStatus
     - Multiple status values can be provided with comma separated strings
     - OAuth:
       - type: oauth2
       - name: petstore_auth
     - parameter status: (query) Status values that need to be considered for filter 
     - returns: RequestBuilder<[Pet]> 
     */
    open class func findPetsByStatusWithRequestBuilder(status: [Status_findPetsByStatus]) -> RequestBuilder<[Pet]> {
        let localVariablePath = "/pet/findByStatus"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "status": (wrappedValue: status.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[Pet]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Finds Pets by tags
     
     - parameter tags: (query) Tags to filter by 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @discardableResult
    open class func findPetsByTags(tags: [String], apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [Pet]?, _ error: Error?) -> Void)) -> RequestTask {
        return findPetsByTagsWithRequestBuilder(tags: tags).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Finds Pets by tags
     - GET /pet/findByTags
     - Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.
     - OAuth:
       - type: oauth2
       - name: petstore_auth
     - parameter tags: (query) Tags to filter by 
     - returns: RequestBuilder<[Pet]> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func findPetsByTagsWithRequestBuilder(tags: [String]) -> RequestBuilder<[Pet]> {
        let localVariablePath = "/pet/findByTags"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "tags": (wrappedValue: tags.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[Pet]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Find pet by ID
     
     - parameter petId: (path) ID of pet to return 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getPetById(petId: Int64, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Pet?, _ error: Error?) -> Void)) -> RequestTask {
        return getPetByIdWithRequestBuilder(petId: petId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Find pet by ID
     - GET /pet/{petId}
     - Returns a single pet
     - API Key:
       - type: apiKey api_key (HEADER)
       - name: api_key
     - parameter petId: (path) ID of pet to return 
     - returns: RequestBuilder<Pet> 
     */
    open class func getPetByIdWithRequestBuilder(petId: Int64) -> RequestBuilder<Pet> {
        var localVariablePath = "/pet/{petId}"
        let petIdPreEscape = "\(APIHelper.mapValueToPathItem(petId))"
        let petIdPostEscape = petIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{petId}", with: petIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Pet>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Update an existing pet
     
     - parameter pet: (body) Pet object that needs to be added to the store 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updatePet(pet: Pet, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Pet?, _ error: Error?) -> Void)) -> RequestTask {
        return updatePetWithRequestBuilder(pet: pet).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update an existing pet
     - PUT /pet
     - 
     - OAuth:
       - type: oauth2
       - name: petstore_auth
     - externalDocs: class ExternalDocumentation {
    description: API documentation for the updatePet operation
    url: http://petstore.swagger.io/v2/doc/updatePet
}
     - parameter pet: (body) Pet object that needs to be added to the store 
     - returns: RequestBuilder<Pet> 
     */
    open class func updatePetWithRequestBuilder(pet: Pet) -> RequestBuilder<Pet> {
        let localVariablePath = "/pet"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: pet)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Pet>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Updates a pet in the store with form data
     
     - parameter petId: (path) ID of pet that needs to be updated 
     - parameter name: (form) Updated name of the pet (optional)
     - parameter status: (form) Updated status of the pet (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updatePetWithForm(petId: Int64, name: String? = nil, status: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return updatePetWithFormWithRequestBuilder(petId: petId, name: name, status: status).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Updates a pet in the store with form data
     - POST /pet/{petId}
     - 
     - OAuth:
       - type: oauth2
       - name: petstore_auth
     - parameter petId: (path) ID of pet that needs to be updated 
     - parameter name: (form) Updated name of the pet (optional)
     - parameter status: (form) Updated status of the pet (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func updatePetWithFormWithRequestBuilder(petId: Int64, name: String? = nil, status: String? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/pet/{petId}"
        let petIdPreEscape = "\(APIHelper.mapValueToPathItem(petId))"
        let petIdPostEscape = petIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{petId}", with: petIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableFormParams: [String: Any?] = [
            "name": name?.encodeToJSON(),
            "status": status?.encodeToJSON(),
        ]

        let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
        let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/x-www-form-urlencoded",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     uploads an image
     
     - parameter petId: (path) ID of pet to update 
     - parameter additionalMetadata: (form) Additional data to pass to server (optional)
     - parameter file: (form) file to upload (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func uploadFile(petId: Int64, additionalMetadata: String? = nil, file: URL? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ApiResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return uploadFileWithRequestBuilder(petId: petId, additionalMetadata: additionalMetadata, file: file).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     uploads an image
     - POST /pet/{petId}/uploadImage
     - 
     - OAuth:
       - type: oauth2
       - name: petstore_auth
     - parameter petId: (path) ID of pet to update 
     - parameter additionalMetadata: (form) Additional data to pass to server (optional)
     - parameter file: (form) file to upload (optional)
     - returns: RequestBuilder<ApiResponse> 
     */
    open class func uploadFileWithRequestBuilder(petId: Int64, additionalMetadata: String? = nil, file: URL? = nil) -> RequestBuilder<ApiResponse> {
        var localVariablePath = "/pet/{petId}/uploadImage"
        let petIdPreEscape = "\(APIHelper.mapValueToPathItem(petId))"
        let petIdPostEscape = petIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{petId}", with: petIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableFormParams: [String: Any?] = [
            "additionalMetadata": additionalMetadata?.encodeToJSON(),
            "file": file?.encodeToJSON(),
        ]

        let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
        let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "multipart/form-data",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ApiResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}