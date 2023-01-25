// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: api/common/c_qr_code.proto
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

/// 二维码类别: QRCode(CAT)egory
enum CommonQRCodeCAT: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case unknown // = 0

  /// 用户名片, 包含 用户ID, AssetID, Name 信息
  case userCard // = 1

  /// 用户精简名片, 包含 用户ID, AssetID, Name 信息, 每个字段 部分隐藏
  case userCardLite // = 2

  /// 群名片, 包含 群ID, AssetID, Name 信息
  case groupCard // = 3

  /// 群精简名片, 包含 群ID, AssetID, Name 信息, 每个字段 部分隐藏
  case groupCardLite // = 4
  case UNRECOGNIZED(Int)

  init() {
    self = .unknown
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unknown
    case 1: self = .userCard
    case 2: self = .userCardLite
    case 3: self = .groupCard
    case 4: self = .groupCardLite
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .unknown: return 0
    case .userCard: return 1
    case .userCardLite: return 2
    case .groupCard: return 3
    case .groupCardLite: return 4
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension CommonQRCodeCAT: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [CommonQRCodeCAT] = [
    .unknown,
    .userCard,
    .userCardLite,
    .groupCard,
    .groupCardLite,
  ]
}

#endif  // swift(>=4.2)

/// 二维码类型: 动态码,静态码
enum CommonQRCodeType: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case unknown // = 0

  /// 静态码
  case `static` // = 1

  /// 动态码
  case dynamic // = 2
  case UNRECOGNIZED(Int)

  init() {
    self = .unknown
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unknown
    case 1: self = .static
    case 2: self = .dynamic
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .unknown: return 0
    case .static: return 1
    case .dynamic: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension CommonQRCodeType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [CommonQRCodeType] = [
    .unknown,
    .static,
    .dynamic,
  ]
}

#endif  // swift(>=4.2)

#if swift(>=5.5) && canImport(_Concurrency)
extension CommonQRCodeCAT: @unchecked Sendable {}
extension CommonQRCodeType: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension CommonQRCodeCAT: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "QR_CODE_CAT_UNKNOWN"),
    1: .same(proto: "QR_CODE_CAT_USER_CARD"),
    2: .same(proto: "QR_CODE_CAT_USER_CARD_LITE"),
    3: .same(proto: "QR_CODE_CAT_GROUP_CARD"),
    4: .same(proto: "QR_CODE_CAT_GROUP_CARD_LITE"),
  ]
}

extension CommonQRCodeType: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "QR_CODE_TYPE_UNKNOWN"),
    1: .same(proto: "QR_CODE_TYPE_STATIC"),
    2: .same(proto: "QR_CODE_TYPE_DYNAMIC"),
  ]
}
