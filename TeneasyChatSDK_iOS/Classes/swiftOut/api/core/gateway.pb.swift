// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: api/core/gateway.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct Api_Core_GatewayNodeRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// 网关节点id
  public var gatewayID: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Api_Core_GatewayRegisterRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// 网关节点id
  public var gatewayID: Int32 = 0

  /// 客户端来源
  public var clientType: Api_Common_ClientType = .unknown

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Api_Core_GatewayRegisterResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// 链接id
  public var websocketID: UInt64 = 0

  /// 链接创建时间
  public var websocketTime: Int64 = 0

  /// 链接标记
  public var websocketFlag: Bool = false

  /// 上次链接id
  public var lastSocketID: UInt64 = 0

  /// 上次链接时间
  public var lastSocketTime: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Api_Core_OnlineTenantWorkers {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// 商户id
  public var tenant: Int32 = 0

  /// 客服id
  public var workers: [Int32] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Api_Core_GatewayBeaconRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// 网关节点id
  public var gatewayID: Int32 = 0

  /// 心跳间隔时间
  public var duration: Int32 = 0

  /// 根据客服心跳汇总的在线客服, 按商户分组
  public var tenants: [Api_Core_OnlineTenantWorkers] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Api_Core_GatewayTeardownRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// 网关节点id
  public var gatewayID: Int32 = 0

  /// 网关离线
  public var gatewayOffline: Bool = false

  /// 链接时间
  public var websocketTime: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Api_Core_NewWorkerConnectRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var gatewayID: Int32 = 0

  public var query: String = String()

  public var ip: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Api_Core_NewWorkerConnectResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var clientID: Int64 = 0

  public var token: String = String()

  public var websocketID: UInt64 = 0

  public var websocketTime: Int64 = 0

  public var websocketFlag: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Api_Core_NewUserConnectRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var gatewayID: Int32 = 0

  public var query: String = String()

  public var ip: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Api_Core_NewUserConnectResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var clientID: Int64 = 0

  public var token: String = String()

  public var workerID: Int32 = 0

  public var websocketID: UInt64 = 0

  public var websocketTime: Int64 = 0

  public var websocketFlag: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Api_Core_NewDisconnectRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var clientID: [Int64] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Api_Core_GatewayNodeRequest: @unchecked Sendable {}
extension Api_Core_GatewayRegisterRequest: @unchecked Sendable {}
extension Api_Core_GatewayRegisterResponse: @unchecked Sendable {}
extension Api_Core_OnlineTenantWorkers: @unchecked Sendable {}
extension Api_Core_GatewayBeaconRequest: @unchecked Sendable {}
extension Api_Core_GatewayTeardownRequest: @unchecked Sendable {}
extension Api_Core_NewWorkerConnectRequest: @unchecked Sendable {}
extension Api_Core_NewWorkerConnectResponse: @unchecked Sendable {}
extension Api_Core_NewUserConnectRequest: @unchecked Sendable {}
extension Api_Core_NewUserConnectResponse: @unchecked Sendable {}
extension Api_Core_NewDisconnectRequest: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "api.core"

extension Api_Core_GatewayNodeRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GatewayNodeRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "gateway_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.gatewayID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.gatewayID != 0 {
      try visitor.visitSingularInt32Field(value: self.gatewayID, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Api_Core_GatewayNodeRequest, rhs: Api_Core_GatewayNodeRequest) -> Bool {
    if lhs.gatewayID != rhs.gatewayID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Api_Core_GatewayRegisterRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GatewayRegisterRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "gateway_id"),
    2: .standard(proto: "client_type"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.gatewayID) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.clientType) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.gatewayID != 0 {
      try visitor.visitSingularInt32Field(value: self.gatewayID, fieldNumber: 1)
    }
    if self.clientType != .unknown {
      try visitor.visitSingularEnumField(value: self.clientType, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Api_Core_GatewayRegisterRequest, rhs: Api_Core_GatewayRegisterRequest) -> Bool {
    if lhs.gatewayID != rhs.gatewayID {return false}
    if lhs.clientType != rhs.clientType {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Api_Core_GatewayRegisterResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GatewayRegisterResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "websocket_id"),
    2: .standard(proto: "websocket_time"),
    3: .standard(proto: "websocket_flag"),
    4: .standard(proto: "last_socket_id"),
    5: .standard(proto: "last_socket_time"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.websocketID) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.websocketTime) }()
      case 3: try { try decoder.decodeSingularBoolField(value: &self.websocketFlag) }()
      case 4: try { try decoder.decodeSingularUInt64Field(value: &self.lastSocketID) }()
      case 5: try { try decoder.decodeSingularInt64Field(value: &self.lastSocketTime) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.websocketID != 0 {
      try visitor.visitSingularUInt64Field(value: self.websocketID, fieldNumber: 1)
    }
    if self.websocketTime != 0 {
      try visitor.visitSingularInt64Field(value: self.websocketTime, fieldNumber: 2)
    }
    if self.websocketFlag != false {
      try visitor.visitSingularBoolField(value: self.websocketFlag, fieldNumber: 3)
    }
    if self.lastSocketID != 0 {
      try visitor.visitSingularUInt64Field(value: self.lastSocketID, fieldNumber: 4)
    }
    if self.lastSocketTime != 0 {
      try visitor.visitSingularInt64Field(value: self.lastSocketTime, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Api_Core_GatewayRegisterResponse, rhs: Api_Core_GatewayRegisterResponse) -> Bool {
    if lhs.websocketID != rhs.websocketID {return false}
    if lhs.websocketTime != rhs.websocketTime {return false}
    if lhs.websocketFlag != rhs.websocketFlag {return false}
    if lhs.lastSocketID != rhs.lastSocketID {return false}
    if lhs.lastSocketTime != rhs.lastSocketTime {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Api_Core_OnlineTenantWorkers: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".OnlineTenantWorkers"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "tenant"),
    2: .same(proto: "workers"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.tenant) }()
      case 2: try { try decoder.decodeRepeatedInt32Field(value: &self.workers) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.tenant != 0 {
      try visitor.visitSingularInt32Field(value: self.tenant, fieldNumber: 1)
    }
    if !self.workers.isEmpty {
      try visitor.visitPackedInt32Field(value: self.workers, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Api_Core_OnlineTenantWorkers, rhs: Api_Core_OnlineTenantWorkers) -> Bool {
    if lhs.tenant != rhs.tenant {return false}
    if lhs.workers != rhs.workers {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Api_Core_GatewayBeaconRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GatewayBeaconRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "gateway_id"),
    2: .same(proto: "duration"),
    3: .same(proto: "tenants"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.gatewayID) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.duration) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.tenants) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.gatewayID != 0 {
      try visitor.visitSingularInt32Field(value: self.gatewayID, fieldNumber: 1)
    }
    if self.duration != 0 {
      try visitor.visitSingularInt32Field(value: self.duration, fieldNumber: 2)
    }
    if !self.tenants.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.tenants, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Api_Core_GatewayBeaconRequest, rhs: Api_Core_GatewayBeaconRequest) -> Bool {
    if lhs.gatewayID != rhs.gatewayID {return false}
    if lhs.duration != rhs.duration {return false}
    if lhs.tenants != rhs.tenants {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Api_Core_GatewayTeardownRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GatewayTeardownRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "gateway_id"),
    2: .standard(proto: "gateway_offline"),
    3: .standard(proto: "websocket_time"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.gatewayID) }()
      case 2: try { try decoder.decodeSingularBoolField(value: &self.gatewayOffline) }()
      case 3: try { try decoder.decodeSingularInt64Field(value: &self.websocketTime) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.gatewayID != 0 {
      try visitor.visitSingularInt32Field(value: self.gatewayID, fieldNumber: 1)
    }
    if self.gatewayOffline != false {
      try visitor.visitSingularBoolField(value: self.gatewayOffline, fieldNumber: 2)
    }
    if self.websocketTime != 0 {
      try visitor.visitSingularInt64Field(value: self.websocketTime, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Api_Core_GatewayTeardownRequest, rhs: Api_Core_GatewayTeardownRequest) -> Bool {
    if lhs.gatewayID != rhs.gatewayID {return false}
    if lhs.gatewayOffline != rhs.gatewayOffline {return false}
    if lhs.websocketTime != rhs.websocketTime {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Api_Core_NewWorkerConnectRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".NewWorkerConnectRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "gateway_id"),
    2: .same(proto: "query"),
    3: .same(proto: "ip"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.gatewayID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.query) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.ip) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.gatewayID != 0 {
      try visitor.visitSingularInt32Field(value: self.gatewayID, fieldNumber: 1)
    }
    if !self.query.isEmpty {
      try visitor.visitSingularStringField(value: self.query, fieldNumber: 2)
    }
    if !self.ip.isEmpty {
      try visitor.visitSingularStringField(value: self.ip, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Api_Core_NewWorkerConnectRequest, rhs: Api_Core_NewWorkerConnectRequest) -> Bool {
    if lhs.gatewayID != rhs.gatewayID {return false}
    if lhs.query != rhs.query {return false}
    if lhs.ip != rhs.ip {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Api_Core_NewWorkerConnectResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".NewWorkerConnectResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "client_id"),
    2: .same(proto: "token"),
    3: .standard(proto: "websocket_id"),
    4: .standard(proto: "websocket_time"),
    5: .standard(proto: "websocket_flag"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.clientID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.token) }()
      case 3: try { try decoder.decodeSingularUInt64Field(value: &self.websocketID) }()
      case 4: try { try decoder.decodeSingularInt64Field(value: &self.websocketTime) }()
      case 5: try { try decoder.decodeSingularBoolField(value: &self.websocketFlag) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.clientID != 0 {
      try visitor.visitSingularInt64Field(value: self.clientID, fieldNumber: 1)
    }
    if !self.token.isEmpty {
      try visitor.visitSingularStringField(value: self.token, fieldNumber: 2)
    }
    if self.websocketID != 0 {
      try visitor.visitSingularUInt64Field(value: self.websocketID, fieldNumber: 3)
    }
    if self.websocketTime != 0 {
      try visitor.visitSingularInt64Field(value: self.websocketTime, fieldNumber: 4)
    }
    if self.websocketFlag != false {
      try visitor.visitSingularBoolField(value: self.websocketFlag, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Api_Core_NewWorkerConnectResponse, rhs: Api_Core_NewWorkerConnectResponse) -> Bool {
    if lhs.clientID != rhs.clientID {return false}
    if lhs.token != rhs.token {return false}
    if lhs.websocketID != rhs.websocketID {return false}
    if lhs.websocketTime != rhs.websocketTime {return false}
    if lhs.websocketFlag != rhs.websocketFlag {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Api_Core_NewUserConnectRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".NewUserConnectRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "gateway_id"),
    2: .same(proto: "query"),
    3: .same(proto: "ip"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.gatewayID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.query) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.ip) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.gatewayID != 0 {
      try visitor.visitSingularInt32Field(value: self.gatewayID, fieldNumber: 1)
    }
    if !self.query.isEmpty {
      try visitor.visitSingularStringField(value: self.query, fieldNumber: 2)
    }
    if !self.ip.isEmpty {
      try visitor.visitSingularStringField(value: self.ip, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Api_Core_NewUserConnectRequest, rhs: Api_Core_NewUserConnectRequest) -> Bool {
    if lhs.gatewayID != rhs.gatewayID {return false}
    if lhs.query != rhs.query {return false}
    if lhs.ip != rhs.ip {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Api_Core_NewUserConnectResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".NewUserConnectResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "client_id"),
    2: .same(proto: "token"),
    3: .standard(proto: "worker_id"),
    4: .standard(proto: "websocket_id"),
    5: .standard(proto: "websocket_time"),
    6: .standard(proto: "websocket_flag"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.clientID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.token) }()
      case 3: try { try decoder.decodeSingularInt32Field(value: &self.workerID) }()
      case 4: try { try decoder.decodeSingularUInt64Field(value: &self.websocketID) }()
      case 5: try { try decoder.decodeSingularInt64Field(value: &self.websocketTime) }()
      case 6: try { try decoder.decodeSingularBoolField(value: &self.websocketFlag) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.clientID != 0 {
      try visitor.visitSingularInt64Field(value: self.clientID, fieldNumber: 1)
    }
    if !self.token.isEmpty {
      try visitor.visitSingularStringField(value: self.token, fieldNumber: 2)
    }
    if self.workerID != 0 {
      try visitor.visitSingularInt32Field(value: self.workerID, fieldNumber: 3)
    }
    if self.websocketID != 0 {
      try visitor.visitSingularUInt64Field(value: self.websocketID, fieldNumber: 4)
    }
    if self.websocketTime != 0 {
      try visitor.visitSingularInt64Field(value: self.websocketTime, fieldNumber: 5)
    }
    if self.websocketFlag != false {
      try visitor.visitSingularBoolField(value: self.websocketFlag, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Api_Core_NewUserConnectResponse, rhs: Api_Core_NewUserConnectResponse) -> Bool {
    if lhs.clientID != rhs.clientID {return false}
    if lhs.token != rhs.token {return false}
    if lhs.workerID != rhs.workerID {return false}
    if lhs.websocketID != rhs.websocketID {return false}
    if lhs.websocketTime != rhs.websocketTime {return false}
    if lhs.websocketFlag != rhs.websocketFlag {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Api_Core_NewDisconnectRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".NewDisconnectRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "client_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedInt64Field(value: &self.clientID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.clientID.isEmpty {
      try visitor.visitPackedInt64Field(value: self.clientID, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Api_Core_NewDisconnectRequest, rhs: Api_Core_NewDisconnectRequest) -> Bool {
    if lhs.clientID != rhs.clientID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
