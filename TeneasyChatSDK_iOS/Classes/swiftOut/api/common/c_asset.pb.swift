// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: api/common/c_asset.proto
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

enum CommonAssetUploadState: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case unknown // = 0

  /// 上传中
  case putting // = 1

  /// 上传完成
  case put // = 2
  case UNRECOGNIZED(Int)

  init() {
    self = .unknown
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unknown
    case 1: self = .putting
    case 2: self = .put
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .unknown: return 0
    case .putting: return 1
    case .put: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension CommonAssetUploadState: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [CommonAssetUploadState] = [
    .unknown,
    .putting,
    .put,
  ]
}

#endif  // swift(>=4.2)

/// 文件类型类型 0 ～ 4
enum CommonAssetKind: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case none // = 0

  /// 商户公共文件
  case `public` // = 1

  /// 商户私有文件
  case `private` // = 2

  /// 头像
  case avatar // = 3

  /// 会话私有文件
  case session // = 4
  case UNRECOGNIZED(Int)

  init() {
    self = .none
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .none
    case 1: self = .public
    case 2: self = .private
    case 3: self = .avatar
    case 4: self = .session
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .none: return 0
    case .public: return 1
    case .private: return 2
    case .avatar: return 3
    case .session: return 4
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension CommonAssetKind: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [CommonAssetKind] = [
    .none,
    .public,
    .private,
    .avatar,
    .session,
  ]
}

#endif  // swift(>=4.2)

/// 资源类型 0 ～ 7
enum CommonAssetType: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case unknown // = 0

  /// 图片 （缩略图复用图片id）
  case image // = 1

  /// 音频
  case audio // = 2

  /// 视频
  case video // = 3

  /// 文件
  case file // = 4
  case UNRECOGNIZED(Int)

  init() {
    self = .unknown
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unknown
    case 1: self = .image
    case 2: self = .audio
    case 3: self = .video
    case 4: self = .file
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .unknown: return 0
    case .image: return 1
    case .audio: return 2
    case .video: return 3
    case .file: return 4
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension CommonAssetType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [CommonAssetType] = [
    .unknown,
    .image,
    .audio,
    .video,
    .file,
  ]
}

#endif  // swift(>=4.2)

/// 资源用途 0 ～ 15
enum CommonAssetContext: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case unknown // = 0

  /// 消息体
  case message // = 1

  /// 朋友圈
  case moment // = 2

  /// 个人/群 头像 二维码 背景图
  case profile // = 3

  /// 收藏夹
  case favorite // = 4

  /// 表情
  case emoji // = 5

  /// 公告
  case bulletin // = 6
  case UNRECOGNIZED(Int)

  init() {
    self = .unknown
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unknown
    case 1: self = .message
    case 2: self = .moment
    case 3: self = .profile
    case 4: self = .favorite
    case 5: self = .emoji
    case 6: self = .bulletin
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .unknown: return 0
    case .message: return 1
    case .moment: return 2
    case .profile: return 3
    case .favorite: return 4
    case .emoji: return 5
    case .bulletin: return 6
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension CommonAssetContext: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [CommonAssetContext] = [
    .unknown,
    .message,
    .moment,
    .profile,
    .favorite,
    .emoji,
    .bulletin,
  ]
}

#endif  // swift(>=4.2)

struct CommonAsset {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// shorturi 短url， 在消息体里表示资源地址
  var uri: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension CommonAssetUploadState: @unchecked Sendable {}
extension CommonAssetKind: @unchecked Sendable {}
extension CommonAssetType: @unchecked Sendable {}
extension CommonAssetContext: @unchecked Sendable {}
extension CommonAsset: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "api.common"

extension CommonAssetUploadState: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ASSET_UPLOAD_STATE_UNKNOWN"),
    1: .same(proto: "ASSET_UPLOAD_STATE_PUTTING"),
    2: .same(proto: "ASSET_UPLOAD_STATE_PUT"),
  ]
}

extension CommonAssetKind: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ASSET_KIND_NONE"),
    1: .same(proto: "ASSET_KIND_PUBLIC"),
    2: .same(proto: "ASSET_KIND_PRIVATE"),
    3: .same(proto: "ASSET_KIND_AVATAR"),
    4: .same(proto: "ASSET_KIND_SESSION"),
  ]
}

extension CommonAssetType: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ASSET_TYPE_UNKNOWN"),
    1: .same(proto: "ASSET_TYPE_IMAGE"),
    2: .same(proto: "ASSET_TYPE_AUDIO"),
    3: .same(proto: "ASSET_TYPE_VIDEO"),
    4: .same(proto: "ASSET_TYPE_FILE"),
  ]
}

extension CommonAssetContext: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ASSET_CONTEXT_UNKNOWN"),
    1: .same(proto: "ASSET_CONTEXT_MESSAGE"),
    2: .same(proto: "ASSET_CONTEXT_MOMENT"),
    3: .same(proto: "ASSET_CONTEXT_PROFILE"),
    4: .same(proto: "ASSET_CONTEXT_FAVORITE"),
    5: .same(proto: "ASSET_CONTEXT_EMOJI"),
    6: .same(proto: "ASSET_CONTEXT_BULLETIN"),
  ]
}

extension CommonAsset: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Asset"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "uri"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.uri) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.uri.isEmpty {
      try visitor.visitSingularStringField(value: self.uri, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CommonAsset, rhs: CommonAsset) -> Bool {
    if lhs.uri != rhs.uri {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
