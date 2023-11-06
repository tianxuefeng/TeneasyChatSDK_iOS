// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: api/common/c_chat.proto
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

public struct CommonChatDetail {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var chatID: Int64 = 0

  /// 入口id
  public var entranceID: UInt32 = 0

  /// 入口名称
  public var entranceName: String = String()

  /// 用户来源
  public var platform: String = String()

  /// IP
  public var ip: String = String()

  /// 分配客服时间
  public var createAt: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _createAt ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_createAt = newValue}
  }
  /// Returns true if `createAt` has been explicitly set.
  public var hasCreateAt: Bool {return self._createAt != nil}
  /// Clears the value of `createAt`. Subsequent reads from it will return its default value.
  public mutating func clearCreateAt() {self._createAt = nil}

  /// 最后一次上线时间
  public var updateAt: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _updateAt ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_updateAt = newValue}
  }
  /// Returns true if `updateAt` has been explicitly set.
  public var hasUpdateAt: Bool {return self._updateAt != nil}
  /// Clears the value of `updateAt`. Subsequent reads from it will return its default value.
  public mutating func clearUpdateAt() {self._updateAt = nil}

  /// 用户名
  public var name: String = String()

  /// 用户头像
  public var avatar: String = String()

  /// 用户称呼(备注)
  public var nick: String = String()

  /// 用户诉求
  public var appeal: String = String()

  /// 重新打开会话时间
  public var resetAt: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _resetAt ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_resetAt = newValue}
  }
  /// Returns true if `resetAt` has been explicitly set.
  public var hasResetAt: Bool {return self._resetAt != nil}
  /// Clears the value of `resetAt`. Subsequent reads from it will return its default value.
  public mutating func clearResetAt() {self._resetAt = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _createAt: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _updateAt: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _resetAt: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

public struct CommonChatItem {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var chatID: Int64 {
    get {return _storage._chatID}
    set {_uniqueStorage()._chatID = newValue}
  }

  public var state: CommonChatState {
    get {return _storage._state}
    set {_uniqueStorage()._state = newValue}
  }

  public var unread: Int32 {
    get {return _storage._unread}
    set {_uniqueStorage()._unread = newValue}
  }

  public var latestMsg: CommonMessage {
    get {return _storage._latestMsg ?? CommonMessage()}
    set {_uniqueStorage()._latestMsg = newValue}
  }
  /// Returns true if `latestMsg` has been explicitly set.
  public var hasLatestMsg: Bool {return _storage._latestMsg != nil}
  /// Clears the value of `latestMsg`. Subsequent reads from it will return its default value.
  public mutating func clearLatestMsg() {_uniqueStorage()._latestMsg = nil}

  /// 分配客服时间
  public var createAt: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _storage._createAt ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_uniqueStorage()._createAt = newValue}
  }
  /// Returns true if `createAt` has been explicitly set.
  public var hasCreateAt: Bool {return _storage._createAt != nil}
  /// Clears the value of `createAt`. Subsequent reads from it will return its default value.
  public mutating func clearCreateAt() {_uniqueStorage()._createAt = nil}

  /// 第一次服务时间
  public var serviceAt: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _storage._serviceAt ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_uniqueStorage()._serviceAt = newValue}
  }
  /// Returns true if `serviceAt` has been explicitly set.
  public var hasServiceAt: Bool {return _storage._serviceAt != nil}
  /// Clears the value of `serviceAt`. Subsequent reads from it will return its default value.
  public mutating func clearServiceAt() {_uniqueStorage()._serviceAt = nil}

  /// 会话详情
  public var detail: CommonChatDetail {
    get {return _storage._detail ?? CommonChatDetail()}
    set {_uniqueStorage()._detail = newValue}
  }
  /// Returns true if `detail` has been explicitly set.
  public var hasDetail: Bool {return _storage._detail != nil}
  /// Clears the value of `detail`. Subsequent reads from it will return its default value.
  public mutating func clearDetail() {_uniqueStorage()._detail = nil}

  /// 重新打开会话时间
  public var resetAt: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _storage._resetAt ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_uniqueStorage()._resetAt = newValue}
  }
  /// Returns true if `resetAt` has been explicitly set.
  public var hasResetAt: Bool {return _storage._resetAt != nil}
  /// Clears the value of `resetAt`. Subsequent reads from it will return its default value.
  public mutating func clearResetAt() {_uniqueStorage()._resetAt = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

#if swift(>=5.5) && canImport(_Concurrency)
extension CommonChatDetail: @unchecked Sendable {}
extension CommonChatItem: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "api.common"

extension CommonChatDetail: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ChatDetail"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "chat_id"),
    2: .standard(proto: "entrance_id"),
    3: .standard(proto: "entrance_name"),
    4: .same(proto: "platform"),
    5: .same(proto: "ip"),
    6: .standard(proto: "create_at"),
    7: .standard(proto: "update_at"),
    8: .same(proto: "name"),
    9: .same(proto: "avatar"),
    10: .same(proto: "nick"),
    11: .same(proto: "appeal"),
    12: .standard(proto: "reset_at"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.chatID) }()
      case 2: try { try decoder.decodeSingularUInt32Field(value: &self.entranceID) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.entranceName) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.platform) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.ip) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._createAt) }()
      case 7: try { try decoder.decodeSingularMessageField(value: &self._updateAt) }()
      case 8: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 9: try { try decoder.decodeSingularStringField(value: &self.avatar) }()
      case 10: try { try decoder.decodeSingularStringField(value: &self.nick) }()
      case 11: try { try decoder.decodeSingularStringField(value: &self.appeal) }()
      case 12: try { try decoder.decodeSingularMessageField(value: &self._resetAt) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.chatID != 0 {
      try visitor.visitSingularInt64Field(value: self.chatID, fieldNumber: 1)
    }
    if self.entranceID != 0 {
      try visitor.visitSingularUInt32Field(value: self.entranceID, fieldNumber: 2)
    }
    if !self.entranceName.isEmpty {
      try visitor.visitSingularStringField(value: self.entranceName, fieldNumber: 3)
    }
    if !self.platform.isEmpty {
      try visitor.visitSingularStringField(value: self.platform, fieldNumber: 4)
    }
    if !self.ip.isEmpty {
      try visitor.visitSingularStringField(value: self.ip, fieldNumber: 5)
    }
    try { if let v = self._createAt {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    } }()
    try { if let v = self._updateAt {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    } }()
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 8)
    }
    if !self.avatar.isEmpty {
      try visitor.visitSingularStringField(value: self.avatar, fieldNumber: 9)
    }
    if !self.nick.isEmpty {
      try visitor.visitSingularStringField(value: self.nick, fieldNumber: 10)
    }
    if !self.appeal.isEmpty {
      try visitor.visitSingularStringField(value: self.appeal, fieldNumber: 11)
    }
    try { if let v = self._resetAt {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 12)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: CommonChatDetail, rhs: CommonChatDetail) -> Bool {
    if lhs.chatID != rhs.chatID {return false}
    if lhs.entranceID != rhs.entranceID {return false}
    if lhs.entranceName != rhs.entranceName {return false}
    if lhs.platform != rhs.platform {return false}
    if lhs.ip != rhs.ip {return false}
    if lhs._createAt != rhs._createAt {return false}
    if lhs._updateAt != rhs._updateAt {return false}
    if lhs.name != rhs.name {return false}
    if lhs.avatar != rhs.avatar {return false}
    if lhs.nick != rhs.nick {return false}
    if lhs.appeal != rhs.appeal {return false}
    if lhs._resetAt != rhs._resetAt {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CommonChatItem: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ChatItem"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "chat_id"),
    2: .same(proto: "state"),
    3: .same(proto: "unread"),
    4: .standard(proto: "latest_msg"),
    5: .standard(proto: "create_at"),
    6: .standard(proto: "service_at"),
    7: .same(proto: "detail"),
    8: .standard(proto: "reset_at"),
  ]

  fileprivate class _StorageClass {
    var _chatID: Int64 = 0
    var _state: CommonChatState = .common
    var _unread: Int32 = 0
    var _latestMsg: CommonMessage? = nil
    var _createAt: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
    var _serviceAt: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
    var _detail: CommonChatDetail? = nil
    var _resetAt: SwiftProtobuf.Google_Protobuf_Timestamp? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _chatID = source._chatID
      _state = source._state
      _unread = source._unread
      _latestMsg = source._latestMsg
      _createAt = source._createAt
      _serviceAt = source._serviceAt
      _detail = source._detail
      _resetAt = source._resetAt
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularInt64Field(value: &_storage._chatID) }()
        case 2: try { try decoder.decodeSingularEnumField(value: &_storage._state) }()
        case 3: try { try decoder.decodeSingularInt32Field(value: &_storage._unread) }()
        case 4: try { try decoder.decodeSingularMessageField(value: &_storage._latestMsg) }()
        case 5: try { try decoder.decodeSingularMessageField(value: &_storage._createAt) }()
        case 6: try { try decoder.decodeSingularMessageField(value: &_storage._serviceAt) }()
        case 7: try { try decoder.decodeSingularMessageField(value: &_storage._detail) }()
        case 8: try { try decoder.decodeSingularMessageField(value: &_storage._resetAt) }()
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every if/case branch local when no optimizations
      // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
      // https://github.com/apple/swift-protobuf/issues/1182
      if _storage._chatID != 0 {
        try visitor.visitSingularInt64Field(value: _storage._chatID, fieldNumber: 1)
      }
      if _storage._state != .common {
        try visitor.visitSingularEnumField(value: _storage._state, fieldNumber: 2)
      }
      if _storage._unread != 0 {
        try visitor.visitSingularInt32Field(value: _storage._unread, fieldNumber: 3)
      }
      try { if let v = _storage._latestMsg {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      } }()
      try { if let v = _storage._createAt {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      } }()
      try { if let v = _storage._serviceAt {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      } }()
      try { if let v = _storage._detail {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
      } }()
      try { if let v = _storage._resetAt {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
      } }()
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: CommonChatItem, rhs: CommonChatItem) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._chatID != rhs_storage._chatID {return false}
        if _storage._state != rhs_storage._state {return false}
        if _storage._unread != rhs_storage._unread {return false}
        if _storage._latestMsg != rhs_storage._latestMsg {return false}
        if _storage._createAt != rhs_storage._createAt {return false}
        if _storage._serviceAt != rhs_storage._serviceAt {return false}
        if _storage._detail != rhs_storage._detail {return false}
        if _storage._resetAt != rhs_storage._resetAt {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
