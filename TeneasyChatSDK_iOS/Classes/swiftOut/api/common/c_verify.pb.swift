// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: api/common/c_verify.proto
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

enum CommonValidatorType: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case unknown // = 0

  /// 短信验证
  case sms // = 1

  /// 验证码验证
  case captcha // = 2
  case UNRECOGNIZED(Int)

  init() {
    self = .unknown
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unknown
    case 1: self = .sms
    case 2: self = .captcha
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .unknown: return 0
    case .sms: return 1
    case .captcha: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension CommonValidatorType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [CommonValidatorType] = [
    .unknown,
    .sms,
    .captcha,
  ]
}

#endif  // swift(>=4.2)

enum CommonVerifyFor: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case unknown // = 0

  /// 重置密码
  case resetPassword // = 1

  /// 重置手机号
  case resetPhone // = 2

  /// 重置邮箱
  case resetEmail // = 3

  /// 重置支付密码
  case resetFinancePassword // = 4

  /// 注册账号
  case register // = 5

  /// 登录
  case login // = 6

  ///绑定手机号
  case bind // = 7

  /// 后台重置密码
  case backstageResetPassword // = 101
  case UNRECOGNIZED(Int)

  init() {
    self = .unknown
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unknown
    case 1: self = .resetPassword
    case 2: self = .resetPhone
    case 3: self = .resetEmail
    case 4: self = .resetFinancePassword
    case 5: self = .register
    case 6: self = .login
    case 7: self = .bind
    case 101: self = .backstageResetPassword
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .unknown: return 0
    case .resetPassword: return 1
    case .resetPhone: return 2
    case .resetEmail: return 3
    case .resetFinancePassword: return 4
    case .register: return 5
    case .login: return 6
    case .bind: return 7
    case .backstageResetPassword: return 101
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension CommonVerifyFor: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [CommonVerifyFor] = [
    .unknown,
    .resetPassword,
    .resetPhone,
    .resetEmail,
    .resetFinancePassword,
    .register,
    .login,
    .bind,
    .backstageResetPassword,
  ]
}

#endif  // swift(>=4.2)

struct CommonVerify {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var way: CommonVerify.OneOf_Way? = nil

  var sms: CommonVerifyBySMS {
    get {
      if case .sms(let v)? = way {return v}
      return CommonVerifyBySMS()
    }
    set {way = .sms(newValue)}
  }

  var pwd: CommonVerifyByPassword {
    get {
      if case .pwd(let v)? = way {return v}
      return CommonVerifyByPassword()
    }
    set {way = .pwd(newValue)}
  }

  var captcha: CommonVerifyByCaptcha {
    get {
      if case .captcha(let v)? = way {return v}
      return CommonVerifyByCaptcha()
    }
    set {way = .captcha(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_Way: Equatable {
    case sms(CommonVerifyBySMS)
    case pwd(CommonVerifyByPassword)
    case captcha(CommonVerifyByCaptcha)

  #if !swift(>=4.1)
    static func ==(lhs: CommonVerify.OneOf_Way, rhs: CommonVerify.OneOf_Way) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.sms, .sms): return {
        guard case .sms(let l) = lhs, case .sms(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.pwd, .pwd): return {
        guard case .pwd(let l) = lhs, case .pwd(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.captcha, .captcha): return {
        guard case .captcha(let l) = lhs, case .captcha(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  init() {}
}

/// 短信验证
struct CommonVerifyBySMS {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// /v1/verify/verify 验证短信码成功后获取的 key
  var key: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// 密码验证
struct CommonVerifyByPassword {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// 密码
  var passwd: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// captcha验证
struct CommonVerifyByCaptcha {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// 请求captcha时发给前端的key
  var key: String = String()

  /// 回答
  var answer: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension CommonValidatorType: @unchecked Sendable {}
extension CommonVerifyFor: @unchecked Sendable {}
extension CommonVerify: @unchecked Sendable {}
extension CommonVerify.OneOf_Way: @unchecked Sendable {}
extension CommonVerifyBySMS: @unchecked Sendable {}
extension CommonVerifyByPassword: @unchecked Sendable {}
extension CommonVerifyByCaptcha: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "api.common"

extension CommonValidatorType: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "VALIDATOR_TYPE_UNKNOWN"),
    1: .same(proto: "VALIDATOR_TYPE_SMS"),
    2: .same(proto: "VALIDATOR_TYPE_CAPTCHA"),
  ]
}

extension CommonVerifyFor: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "VERIFY_FOR_UNKNOWN"),
    1: .same(proto: "VERIFY_FOR_RESET_PASSWORD"),
    2: .same(proto: "VERIFY_FOR_RESET_PHONE"),
    3: .same(proto: "VERIFY_FOR_RESET_EMAIL"),
    4: .same(proto: "VERIFY_FOR_RESET_FINANCE_PASSWORD"),
    5: .same(proto: "VERIFY_FOR_REGISTER"),
    6: .same(proto: "VERIFY_FOR_LOGIN"),
    7: .same(proto: "VERIFY_FOR_BIND"),
    101: .same(proto: "VERIFY_FOR_BACKSTAGE_RESET_PASSWORD"),
  ]
}

extension CommonVerify: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Verify"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "sms"),
    2: .same(proto: "pwd"),
    3: .same(proto: "captcha"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: CommonVerifyBySMS?
        var hadOneofValue = false
        if let current = self.way {
          hadOneofValue = true
          if case .sms(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.way = .sms(v)
        }
      }()
      case 2: try {
        var v: CommonVerifyByPassword?
        var hadOneofValue = false
        if let current = self.way {
          hadOneofValue = true
          if case .pwd(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.way = .pwd(v)
        }
      }()
      case 3: try {
        var v: CommonVerifyByCaptcha?
        var hadOneofValue = false
        if let current = self.way {
          hadOneofValue = true
          if case .captcha(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.way = .captcha(v)
        }
      }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    switch self.way {
    case .sms?: try {
      guard case .sms(let v)? = self.way else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .pwd?: try {
      guard case .pwd(let v)? = self.way else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case .captcha?: try {
      guard case .captcha(let v)? = self.way else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CommonVerify, rhs: CommonVerify) -> Bool {
    if lhs.way != rhs.way {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CommonVerifyBySMS: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".VerifyBySMS"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "key"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.key) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.key.isEmpty {
      try visitor.visitSingularStringField(value: self.key, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CommonVerifyBySMS, rhs: CommonVerifyBySMS) -> Bool {
    if lhs.key != rhs.key {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CommonVerifyByPassword: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".VerifyByPassword"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "passwd"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.passwd) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.passwd.isEmpty {
      try visitor.visitSingularStringField(value: self.passwd, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CommonVerifyByPassword, rhs: CommonVerifyByPassword) -> Bool {
    if lhs.passwd != rhs.passwd {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CommonVerifyByCaptcha: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".VerifyByCaptcha"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "key"),
    2: .same(proto: "answer"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.key) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.answer) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.key.isEmpty {
      try visitor.visitSingularStringField(value: self.key, fieldNumber: 1)
    }
    if !self.answer.isEmpty {
      try visitor.visitSingularStringField(value: self.answer, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CommonVerifyByCaptcha, rhs: CommonVerifyByCaptcha) -> Bool {
    if lhs.key != rhs.key {return false}
    if lhs.answer != rhs.answer {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
