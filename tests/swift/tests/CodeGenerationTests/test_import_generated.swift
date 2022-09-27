// automatically generated by the FlatBuffers compiler, do not modify
// swiftlint:disable all
// swiftformat:disable all

@_implementationOnly import FlatBuffers

internal struct Message: FlatBufferObject, Verifiable, ObjectAPIPacker {

  static func validateVersion() { FlatBuffersVersion_22_9_24() }
  internal var __buffer: ByteBuffer! { return _accessor.bb }
  private var _accessor: Table

  internal static func getRootAsMessage(bb: ByteBuffer) -> Message { return Message(Table(bb: bb, position: Int32(bb.read(def: UOffset.self, position: bb.reader)) + Int32(bb.reader))) }

  private init(_ t: Table) { _accessor = t }
  internal init(_ bb: ByteBuffer, o: Int32) { _accessor = Table(bb: bb, position: o) }

  private enum VTOFFSET: VOffset {
    case internalMessage = 4
    var v: Int32 { Int32(self.rawValue) }
    var p: VOffset { self.rawValue }
  }

  internal var internalMessage: String? { let o = _accessor.offset(VTOFFSET.internalMessage.v); return o == 0 ? nil : _accessor.string(at: o) }
  internal var internalMessageSegmentArray: [UInt8]? { return _accessor.getVector(at: VTOFFSET.internalMessage.v) }
  internal static func startMessage(_ fbb: inout FlatBufferBuilder) -> UOffset { fbb.startTable(with: 1) }
  internal static func add(internalMessage: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: internalMessage, at: VTOFFSET.internalMessage.p) }
  internal static func endMessage(_ fbb: inout FlatBufferBuilder, start: UOffset) -> Offset { let end = Offset(offset: fbb.endTable(at: start)); return end }
  internal static func createMessage(
    _ fbb: inout FlatBufferBuilder,
    internalMessageOffset internalMessage: Offset = Offset()
  ) -> Offset {
    let __start = Message.startMessage(&fbb)
    Message.add(internalMessage: internalMessage, &fbb)
    return Message.endMessage(&fbb, start: __start)
  }
  

  internal mutating func unpack() -> MessageT {
    return MessageT(&self)
  }
  internal static func pack(_ builder: inout FlatBufferBuilder, obj: inout MessageT?) -> Offset {
    guard var obj = obj else { return Offset() }
    return pack(&builder, obj: &obj)
  }

  internal static func pack(_ builder: inout FlatBufferBuilder, obj: inout MessageT) -> Offset {
    let __internalMessage: Offset
    if let s = obj.internalMessage {
      __internalMessage = builder.create(string: s)
    } else {
      __internalMessage = Offset()
    }

    let __root = Message.startMessage(&builder)
    Message.add(internalMessage: __internalMessage, &builder)
    return Message.endMessage(&builder, start: __root)
  }

  internal static func verify<T>(_ verifier: inout Verifier, at position: Int, of type: T.Type) throws where T: Verifiable {
    var _v = try verifier.visitTable(at: position)
    try _v.visit(field: VTOFFSET.internalMessage.p, fieldName: "internalMessage", required: false, type: ForwardOffset<String>.self)
    _v.finish()
  }
}

extension Message: Encodable {

  enum CodingKeys: String, CodingKey {
    case internalMessage = "internal_message"
  }
  internal func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encodeIfPresent(internalMessage, forKey: .internalMessage)
  }
}

internal class MessageT: NativeObject {

  internal var internalMessage: String?

  internal init(_ _t: inout Message) {
    internalMessage = _t.internalMessage
  }

  internal init() {
  }

  internal func serialize() -> ByteBuffer { return serialize(type: Message.self) }

}
