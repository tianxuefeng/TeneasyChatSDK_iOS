// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: api/common/c_worker.proto
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

/// 老用户分配机制
public enum Api_Common_DistributionType: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// 空闲
  case distributionLeisure // = 0

  /// 繁忙
  case distributionBusy // = 1

  /// 离线
  case distributionOffline // = 2

  /// 未登录
  case distributionNotLogin // = 3
  case UNRECOGNIZED(Int)

  public init() {
    self = .distributionLeisure
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .distributionLeisure
    case 1: self = .distributionBusy
    case 2: self = .distributionOffline
    case 3: self = .distributionNotLogin
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .distributionLeisure: return 0
    case .distributionBusy: return 1
    case .distributionOffline: return 2
    case .distributionNotLogin: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Api_Common_DistributionType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Api_Common_DistributionType] = [
    .distributionLeisure,
    .distributionBusy,
    .distributionOffline,
    .distributionNotLogin,
  ]
}

#endif  // swift(>=4.2)

/// 客服权限
public enum Api_Common_WorkerPermission: SwiftProtobuf.Enum {
  public typealias RawValue = Int
  case workerPermNone // = 0

  /// 商户顶级账户, 创建商户时设置, 只读
  case workerPermTop // = 1

  /// 管理员
  case workerPermAdmin // = 2

  /// 主管
  case workerPermLeader // = 4

  /// 一线客服
  case workerPermFronter // = 8

  /// 转接客服
  case workerPermTransfer // = 16

  /// 可搜索
  case workerPermSearcher // = 32

  /// 可拉黑名单
  case workerPermBlacker // = 64
  case UNRECOGNIZED(Int)

  public init() {
    self = .workerPermNone
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .workerPermNone
    case 1: self = .workerPermTop
    case 2: self = .workerPermAdmin
    case 4: self = .workerPermLeader
    case 8: self = .workerPermFronter
    case 16: self = .workerPermTransfer
    case 32: self = .workerPermSearcher
    case 64: self = .workerPermBlacker
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .workerPermNone: return 0
    case .workerPermTop: return 1
    case .workerPermAdmin: return 2
    case .workerPermLeader: return 4
    case .workerPermFronter: return 8
    case .workerPermTransfer: return 16
    case .workerPermSearcher: return 32
    case .workerPermBlacker: return 64
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Api_Common_WorkerPermission: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Api_Common_WorkerPermission] = [
    .workerPermNone,
    .workerPermTop,
    .workerPermAdmin,
    .workerPermLeader,
    .workerPermFronter,
    .workerPermTransfer,
    .workerPermSearcher,
    .workerPermBlacker,
  ]
}

#endif  // swift(>=4.2)

public enum Api_Common_ConnectState: SwiftProtobuf.Enum {
  public typealias RawValue = Int
  case offline // = 0
  case online // = 1
  case UNRECOGNIZED(Int)

  public init() {
    self = .offline
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .offline
    case 1: self = .online
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .offline: return 0
    case .online: return 1
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Api_Common_ConnectState: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Api_Common_ConnectState] = [
    .offline,
    .online,
  ]
}

#endif  // swift(>=4.2)

public enum Api_Common_OnlineState: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// 空闲
  case idle // = 0

  /// 忙碌
  case busy // = 1

  /// away from keyboard
  case afk // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .idle
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .idle
    case 1: self = .busy
    case 2: self = .afk
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .idle: return 0
    case .busy: return 1
    case .afk: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Api_Common_OnlineState: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Api_Common_OnlineState] = [
    .idle,
    .busy,
    .afk,
  ]
}

#endif  // swift(>=4.2)

public struct Api_Common_Worker {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var workerID: Int32 = 0

  public var account: String = String()

  /// 所在的组
  public var group: [Api_Common_WorkerGroup] = []

  /// 权限掩码, 前端理解有困难的话 随时可调
  public var permMask: Int32 = 0

  /// 客服名
  public var name: String = String()

  /// 头像url
  public var avatar: String = String()

  /// 在线状态
  public var onlineState: Api_Common_OnlineState = .idle

  /// 密码
  public var password: String = String()

  /// 登录/未登录
  public var connectState: Api_Common_ConnectState = .offline

  /// 商户ID
  public var tenantID: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Api_Common_WorkerGroup {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: Int64 = 0

  public var name: String = String()

  public var priority: Int32 = 0

  public var count: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Api_Common_Distribution {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: Int64 = 0

  public var name: String = String()

  public var priority: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Api_Common_TenantClique {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: Int32 = 0

  public var name: String = String()

  public var priority: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Api_Common_DistributionType: @unchecked Sendable {}
extension Api_Common_WorkerPermission: @unchecked Sendable {}
extension Api_Common_ConnectState: @unchecked Sendable {}
extension Api_Common_OnlineState: @unchecked Sendable {}
extension Api_Common_Worker: @unchecked Sendable {}
extension Api_Common_WorkerGroup: @unchecked Sendable {}
extension Api_Common_Distribution: @unchecked Sendable {}
extension Api_Common_TenantClique: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "api.common"

extension Api_Common_DistributionType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "DISTRIBUTION_LEISURE"),
    1: .same(proto: "DISTRIBUTION_BUSY"),
    2: .same(proto: "DISTRIBUTION_OFFLINE"),
    3: .same(proto: "DISTRIBUTION_NOT_LOGIN"),
  ]
}

extension Api_Common_WorkerPermission: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "WORKER_PERM_NONE"),
    1: .same(proto: "WORKER_PERM_TOP"),
    2: .same(proto: "WORKER_PERM_ADMIN"),
    4: .same(proto: "WORKER_PERM_LEADER"),
    8: .same(proto: "WORKER_PERM_FRONTER"),
    16: .same(proto: "WORKER_PERM_TRANSFER"),
    32: .same(proto: "WORKER_PERM_SEARCHER"),
    64: .same(proto: "WORKER_PERM_BLACKER"),
  ]
}

extension Api_Common_ConnectState: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "CONNECT_STATE_OFFLINE"),
    1: .same(proto: "CONNECT_STATE_ONLINE"),
  ]
}

extension Api_Common_OnlineState: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ONLINE_STATE_IDLE"),
    1: .same(proto: "ONLINE_STATE_BUSY"),
    2: .same(proto: "ONLINE_STATE_AFK"),
  ]
}

extension Api_Common_Worker: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Worker"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "worker_id"),
    2: .same(proto: "account"),
    3: .same(proto: "group"),
    4: .standard(proto: "perm_mask"),
    5: .same(proto: "name"),
    6: .same(proto: "avatar"),
    7: .standard(proto: "online_state"),
    8: .same(proto: "password"),
    9: .standard(proto: "connect_state"),
    10: .standard(proto: "tenant_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.workerID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.account) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.group) }()
      case 4: try { try decoder.decodeSingularInt32Field(value: &self.permMask) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.avatar) }()
      case 7: try { try decoder.decodeSingularEnumField(value: &self.onlineState) }()
      case 8: try { try decoder.decodeSingularStringField(value: &self.password) }()
      case 9: try { try decoder.decodeSingularEnumField(value: &self.connectState) }()
      case 10: try { try decoder.decodeSingularInt32Field(value: &self.tenantID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.workerID != 0 {
      try visitor.visitSingularInt32Field(value: self.workerID, fieldNumber: 1)
    }
    if !self.account.isEmpty {
      try visitor.visitSingularStringField(value: self.account, fieldNumber: 2)
    }
    if !self.group.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.group, fieldNumber: 3)
    }
    if self.permMask != 0 {
      try visitor.visitSingularInt32Field(value: self.permMask, fieldNumber: 4)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 5)
    }
    if !self.avatar.isEmpty {
      try visitor.visitSingularStringField(value: self.avatar, fieldNumber: 6)
    }
    if self.onlineState != .idle {
      try visitor.visitSingularEnumField(value: self.onlineState, fieldNumber: 7)
    }
    if !self.password.isEmpty {
      try visitor.visitSingularStringField(value: self.password, fieldNumber: 8)
    }
    if self.connectState != .offline {
      try visitor.visitSingularEnumField(value: self.connectState, fieldNumber: 9)
    }
    if self.tenantID != 0 {
      try visitor.visitSingularInt32Field(value: self.tenantID, fieldNumber: 10)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Api_Common_Worker, rhs: Api_Common_Worker) -> Bool {
    if lhs.workerID != rhs.workerID {return false}
    if lhs.account != rhs.account {return false}
    if lhs.group != rhs.group {return false}
    if lhs.permMask != rhs.permMask {return false}
    if lhs.name != rhs.name {return false}
    if lhs.avatar != rhs.avatar {return false}
    if lhs.onlineState != rhs.onlineState {return false}
    if lhs.password != rhs.password {return false}
    if lhs.connectState != rhs.connectState {return false}
    if lhs.tenantID != rhs.tenantID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Api_Common_WorkerGroup: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".WorkerGroup"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "name"),
    3: .same(proto: "priority"),
    4: .same(proto: "count"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 3: try { try decoder.decodeSingularInt32Field(value: &self.priority) }()
      case 4: try { try decoder.decodeSingularInt32Field(value: &self.count) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.id != 0 {
      try visitor.visitSingularInt64Field(value: self.id, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    if self.priority != 0 {
      try visitor.visitSingularInt32Field(value: self.priority, fieldNumber: 3)
    }
    if self.count != 0 {
      try visitor.visitSingularInt32Field(value: self.count, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Api_Common_WorkerGroup, rhs: Api_Common_WorkerGroup) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.name != rhs.name {return false}
    if lhs.priority != rhs.priority {return false}
    if lhs.count != rhs.count {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Api_Common_Distribution: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Distribution"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "name"),
    3: .same(proto: "priority"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 3: try { try decoder.decodeSingularInt32Field(value: &self.priority) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.id != 0 {
      try visitor.visitSingularInt64Field(value: self.id, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    if self.priority != 0 {
      try visitor.visitSingularInt32Field(value: self.priority, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Api_Common_Distribution, rhs: Api_Common_Distribution) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.name != rhs.name {return false}
    if lhs.priority != rhs.priority {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Api_Common_TenantClique: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TenantClique"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "name"),
    3: .same(proto: "priority"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 3: try { try decoder.decodeSingularInt32Field(value: &self.priority) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.id != 0 {
      try visitor.visitSingularInt32Field(value: self.id, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    if self.priority != 0 {
      try visitor.visitSingularInt32Field(value: self.priority, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Api_Common_TenantClique, rhs: Api_Common_TenantClique) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.name != rhs.name {return false}
    if lhs.priority != rhs.priority {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
