// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: api/core/quick_reply.proto
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

/// 针对前端cooked的便签组
/// 避免前端摸不透结构
public struct Api_Core_QuickReplyGroupItem {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var name: String = String()

  public var priority: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// 查询便签组
public struct Api_Core_QuickReplyGroupQueryResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var items: [Api_Core_QuickReplyGroupItem] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// 创建便签组
public struct Api_Core_QuickReplyGroupCreateRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var name: String = String()

  public var priority: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// 更新便签组(全量更新)
public struct Api_Core_QuickReplyGroupUpdateRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// 旧群名
  public var oldName: String = String()

  /// 新群名 如未调整 则与旧群名一致
  public var newName: String = String()

  public var priority: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// 删除便签组
public struct Api_Core_QuickReplyGroupDeleteRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// 针对前端cooked的便签
/// 避免前端摸不透结构
public struct Api_Core_QuickReplyItem {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// 创建时不需要填
  public var id: Int64 = 0

  /// 便签 名称
  public var name: String = String()

  /// 便签分组名称
  public var groupName: String = String()

  /// 便签 展示优先级
  public var priority: Int32 = 0

  /// 便签内容
  public var content: String = String()

  /// 回复消息 图片 + 文字
  public var items: [CommonMessage] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// 查询便签
public struct Api_Core_QuickReplyQueryResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var items: [Api_Core_QuickReplyItem] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// 创建便签
public struct Api_Core_CreateQuickReplyRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var reply: Api_Core_QuickReplyItem {
    get {return _reply ?? Api_Core_QuickReplyItem()}
    set {_reply = newValue}
  }
  /// Returns true if `reply` has been explicitly set.
  public var hasReply: Bool {return self._reply != nil}
  /// Clears the value of `reply`. Subsequent reads from it will return its default value.
  public mutating func clearReply() {self._reply = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _reply: Api_Core_QuickReplyItem? = nil
}

public struct Api_Core_CreateQuickReplyResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var reply: Api_Core_QuickReplyItem {
    get {return _reply ?? Api_Core_QuickReplyItem()}
    set {_reply = newValue}
  }
  /// Returns true if `reply` has been explicitly set.
  public var hasReply: Bool {return self._reply != nil}
  /// Clears the value of `reply`. Subsequent reads from it will return its default value.
  public mutating func clearReply() {self._reply = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _reply: Api_Core_QuickReplyItem? = nil
}

/// 更新标签(全量更新)
public struct Api_Core_UpdateQuickReplyRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var reply: Api_Core_QuickReplyItem {
    get {return _reply ?? Api_Core_QuickReplyItem()}
    set {_reply = newValue}
  }
  /// Returns true if `reply` has been explicitly set.
  public var hasReply: Bool {return self._reply != nil}
  /// Clears the value of `reply`. Subsequent reads from it will return its default value.
  public mutating func clearReply() {self._reply = nil}

  /// 旧的群名
  public var oldGroupName: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _reply: Api_Core_QuickReplyItem? = nil
}

/// 删除标签
public struct Api_Core_DeleteQuickReplyRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var quickReplyID: Int64 = 0

  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Api_Core_PushCommonRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var quickReplyID: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Api_Core_PopCommonRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var quickReplyID: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Api_Core_QueryCommonResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// 显示在常用组的便签
  public var quickReply: [Api_Core_QuickReplyItem] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Api_Core_QuickReplyItemGroup {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var groupName: String = String()

  public var priority: Int32 = 0

  public var items: [Api_Core_QuickReplyItem] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Api_Core_QueryByWorkerResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// 显示在常用组的便签
  public var group: [Api_Core_QuickReplyItemGroup] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Api_Core_QuickReplyGroupItem: @unchecked Sendable {}
extension Api_Core_QuickReplyGroupQueryResponse: @unchecked Sendable {}
extension Api_Core_QuickReplyGroupCreateRequest: @unchecked Sendable {}
extension Api_Core_QuickReplyGroupUpdateRequest: @unchecked Sendable {}
extension Api_Core_QuickReplyGroupDeleteRequest: @unchecked Sendable {}
extension Api_Core_QuickReplyItem: @unchecked Sendable {}
extension Api_Core_QuickReplyQueryResponse: @unchecked Sendable {}
extension Api_Core_CreateQuickReplyRequest: @unchecked Sendable {}
extension Api_Core_CreateQuickReplyResponse: @unchecked Sendable {}
extension Api_Core_UpdateQuickReplyRequest: @unchecked Sendable {}
extension Api_Core_DeleteQuickReplyRequest: @unchecked Sendable {}
extension Api_Core_PushCommonRequest: @unchecked Sendable {}
extension Api_Core_PopCommonRequest: @unchecked Sendable {}
extension Api_Core_QueryCommonResponse: @unchecked Sendable {}
extension Api_Core_QuickReplyItemGroup: @unchecked Sendable {}
extension Api_Core_QueryByWorkerResponse: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "api.core"

extension Api_Core_QuickReplyGroupItem: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".QuickReplyGroupItem"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "priority"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.priority) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if self.priority != 0 {
      try visitor.visitSingularInt32Field(value: self.priority, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Api_Core_QuickReplyGroupItem, rhs: Api_Core_QuickReplyGroupItem) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.priority != rhs.priority {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Api_Core_QuickReplyGroupQueryResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".QuickReplyGroupQueryResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "items"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.items) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.items.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.items, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Api_Core_QuickReplyGroupQueryResponse, rhs: Api_Core_QuickReplyGroupQueryResponse) -> Bool {
    if lhs.items != rhs.items {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Api_Core_QuickReplyGroupCreateRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".QuickReplyGroupCreateRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "priority"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.priority) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if self.priority != 0 {
      try visitor.visitSingularInt32Field(value: self.priority, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Api_Core_QuickReplyGroupCreateRequest, rhs: Api_Core_QuickReplyGroupCreateRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.priority != rhs.priority {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Api_Core_QuickReplyGroupUpdateRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".QuickReplyGroupUpdateRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "old_name"),
    2: .standard(proto: "new_name"),
    3: .same(proto: "priority"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.oldName) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.newName) }()
      case 3: try { try decoder.decodeSingularInt32Field(value: &self.priority) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.oldName.isEmpty {
      try visitor.visitSingularStringField(value: self.oldName, fieldNumber: 1)
    }
    if !self.newName.isEmpty {
      try visitor.visitSingularStringField(value: self.newName, fieldNumber: 2)
    }
    if self.priority != 0 {
      try visitor.visitSingularInt32Field(value: self.priority, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Api_Core_QuickReplyGroupUpdateRequest, rhs: Api_Core_QuickReplyGroupUpdateRequest) -> Bool {
    if lhs.oldName != rhs.oldName {return false}
    if lhs.newName != rhs.newName {return false}
    if lhs.priority != rhs.priority {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Api_Core_QuickReplyGroupDeleteRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".QuickReplyGroupDeleteRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Api_Core_QuickReplyGroupDeleteRequest, rhs: Api_Core_QuickReplyGroupDeleteRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Api_Core_QuickReplyItem: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".QuickReplyItem"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "name"),
    3: .standard(proto: "group_name"),
    4: .same(proto: "priority"),
    5: .same(proto: "content"),
    6: .same(proto: "items"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.groupName) }()
      case 4: try { try decoder.decodeSingularInt32Field(value: &self.priority) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.content) }()
      case 6: try { try decoder.decodeRepeatedMessageField(value: &self.items) }()
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
    if !self.groupName.isEmpty {
      try visitor.visitSingularStringField(value: self.groupName, fieldNumber: 3)
    }
    if self.priority != 0 {
      try visitor.visitSingularInt32Field(value: self.priority, fieldNumber: 4)
    }
    if !self.content.isEmpty {
      try visitor.visitSingularStringField(value: self.content, fieldNumber: 5)
    }
    if !self.items.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.items, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Api_Core_QuickReplyItem, rhs: Api_Core_QuickReplyItem) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.name != rhs.name {return false}
    if lhs.groupName != rhs.groupName {return false}
    if lhs.priority != rhs.priority {return false}
    if lhs.content != rhs.content {return false}
    if lhs.items != rhs.items {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Api_Core_QuickReplyQueryResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".QuickReplyQueryResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "items"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.items) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.items.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.items, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Api_Core_QuickReplyQueryResponse, rhs: Api_Core_QuickReplyQueryResponse) -> Bool {
    if lhs.items != rhs.items {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Api_Core_CreateQuickReplyRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreateQuickReplyRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "reply"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._reply) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._reply {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Api_Core_CreateQuickReplyRequest, rhs: Api_Core_CreateQuickReplyRequest) -> Bool {
    if lhs._reply != rhs._reply {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Api_Core_CreateQuickReplyResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreateQuickReplyResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "reply"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._reply) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._reply {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Api_Core_CreateQuickReplyResponse, rhs: Api_Core_CreateQuickReplyResponse) -> Bool {
    if lhs._reply != rhs._reply {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Api_Core_UpdateQuickReplyRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UpdateQuickReplyRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "reply"),
    2: .standard(proto: "old_group_name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._reply) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.oldGroupName) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._reply {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if !self.oldGroupName.isEmpty {
      try visitor.visitSingularStringField(value: self.oldGroupName, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Api_Core_UpdateQuickReplyRequest, rhs: Api_Core_UpdateQuickReplyRequest) -> Bool {
    if lhs._reply != rhs._reply {return false}
    if lhs.oldGroupName != rhs.oldGroupName {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Api_Core_DeleteQuickReplyRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DeleteQuickReplyRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "quick_reply_id"),
    2: .same(proto: "name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.quickReplyID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.name) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.quickReplyID != 0 {
      try visitor.visitSingularInt64Field(value: self.quickReplyID, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Api_Core_DeleteQuickReplyRequest, rhs: Api_Core_DeleteQuickReplyRequest) -> Bool {
    if lhs.quickReplyID != rhs.quickReplyID {return false}
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Api_Core_PushCommonRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PushCommonRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "quick_reply_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.quickReplyID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.quickReplyID != 0 {
      try visitor.visitSingularInt64Field(value: self.quickReplyID, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Api_Core_PushCommonRequest, rhs: Api_Core_PushCommonRequest) -> Bool {
    if lhs.quickReplyID != rhs.quickReplyID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Api_Core_PopCommonRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PopCommonRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "quick_reply_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.quickReplyID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.quickReplyID != 0 {
      try visitor.visitSingularInt64Field(value: self.quickReplyID, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Api_Core_PopCommonRequest, rhs: Api_Core_PopCommonRequest) -> Bool {
    if lhs.quickReplyID != rhs.quickReplyID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Api_Core_QueryCommonResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".QueryCommonResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "quick_reply"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.quickReply) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.quickReply.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.quickReply, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Api_Core_QueryCommonResponse, rhs: Api_Core_QueryCommonResponse) -> Bool {
    if lhs.quickReply != rhs.quickReply {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Api_Core_QuickReplyItemGroup: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".QuickReplyItemGroup"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "group_name"),
    2: .same(proto: "priority"),
    3: .same(proto: "items"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.groupName) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.priority) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.items) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.groupName.isEmpty {
      try visitor.visitSingularStringField(value: self.groupName, fieldNumber: 1)
    }
    if self.priority != 0 {
      try visitor.visitSingularInt32Field(value: self.priority, fieldNumber: 2)
    }
    if !self.items.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.items, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Api_Core_QuickReplyItemGroup, rhs: Api_Core_QuickReplyItemGroup) -> Bool {
    if lhs.groupName != rhs.groupName {return false}
    if lhs.priority != rhs.priority {return false}
    if lhs.items != rhs.items {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Api_Core_QueryByWorkerResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".QueryByWorkerResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "group"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.group) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.group.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.group, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Api_Core_QueryByWorkerResponse, rhs: Api_Core_QueryByWorkerResponse) -> Bool {
    if lhs.group != rhs.group {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
