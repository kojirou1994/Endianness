public enum Endianness: CaseIterable {
  case little
  case big
}

extension Endianness {

  @_alwaysEmitIntoClient
  public static var host: Self {
    let number: UInt16 = 0x00_01
    return number == number.littleEndian ? .little : .big
  }

}

extension Endianness: CustomStringConvertible {

  public var description: String {
    switch self {
    case .little:
      return "little-endian"
    case .big:
      return "big-endian"
    }
  }

}
