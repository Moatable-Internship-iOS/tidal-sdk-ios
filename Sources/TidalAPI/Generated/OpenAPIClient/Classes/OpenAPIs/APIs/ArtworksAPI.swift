//
// ArtworksAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

internal class ArtworksAPI {

    /**
     Get multiple artworks.
     
     - parameter countryCode: (query) ISO 3166-1 alpha-2 country code 
     - parameter filterId: (query) Artwork id (optional)
     - returns: ArtworksMultiDataDocument
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    internal class func artworksGet(countryCode: String, filterId: [String]? = nil) async throws -> ArtworksMultiDataDocument {
        return try await artworksGetWithRequestBuilder(countryCode: countryCode, filterId: filterId).execute().body
    }

    /**
     Get multiple artworks.
     - GET /artworks
     - Retrieves multiple artworks by available filters, or without if applicable.
     - OAuth:
       - type: oauth2
       - name: Authorization_Code_PKCE
     - OAuth:
       - type: oauth2
       - name: Client_Credentials
     - parameter countryCode: (query) ISO 3166-1 alpha-2 country code 
     - parameter filterId: (query) Artwork id (optional)
     - returns: RequestBuilder<ArtworksMultiDataDocument> 
     */
    internal class func artworksGetWithRequestBuilder(countryCode: String, filterId: [String]? = nil) -> RequestBuilder<ArtworksMultiDataDocument> {
        let localVariablePath = "/artworks"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "countryCode": (wrappedValue: countryCode.encodeToJSON(), isExplode: true),
            "filter[id]": (wrappedValue: filterId?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ArtworksMultiDataDocument>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get single artwork.
     
     - parameter id: (path) Artwork id 
     - parameter countryCode: (query) ISO 3166-1 alpha-2 country code 
     - returns: ArtworksSingleDataDocument
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    internal class func artworksIdGet(id: String, countryCode: String) async throws -> ArtworksSingleDataDocument {
        return try await artworksIdGetWithRequestBuilder(id: id, countryCode: countryCode).execute().body
    }

    /**
     Get single artwork.
     - GET /artworks/{id}
     - Retrieves single artwork by id.
     - OAuth:
       - type: oauth2
       - name: Authorization_Code_PKCE
     - OAuth:
       - type: oauth2
       - name: Client_Credentials
     - parameter id: (path) Artwork id 
     - parameter countryCode: (query) ISO 3166-1 alpha-2 country code 
     - returns: RequestBuilder<ArtworksSingleDataDocument> 
     */
    internal class func artworksIdGetWithRequestBuilder(id: String, countryCode: String) -> RequestBuilder<ArtworksSingleDataDocument> {
        var localVariablePath = "/artworks/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "countryCode": (wrappedValue: countryCode.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ArtworksSingleDataDocument>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Create single artwork.
     
     - parameter artworkCreateOperationPayload: (body)  (optional)
     - returns: ArtworksSingleDataDocument
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    internal class func artworksPost(artworkCreateOperationPayload: ArtworkCreateOperationPayload? = nil) async throws -> ArtworksSingleDataDocument {
        return try await artworksPostWithRequestBuilder(artworkCreateOperationPayload: artworkCreateOperationPayload).execute().body
    }

    /**
     Create single artwork.
     - POST /artworks
     - Creates a new artwork.
     - OAuth:
       - type: oauth2
       - name: Authorization_Code_PKCE
     - parameter artworkCreateOperationPayload: (body)  (optional)
     - returns: RequestBuilder<ArtworksSingleDataDocument> 
     */
    internal class func artworksPostWithRequestBuilder(artworkCreateOperationPayload: ArtworkCreateOperationPayload? = nil) -> RequestBuilder<ArtworksSingleDataDocument> {
        let localVariablePath = "/artworks"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: artworkCreateOperationPayload)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/vnd.api+json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ArtworksSingleDataDocument>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
