public enum Endianness: CaseIterable {
  case little
  case big
}

extension Endianness {

  @_alwaysEmitIntoClient
  public static var host: Self {
    #if _endian(little)
    return .little
    #elseif _endian(big)
    return .big
    #else
    #error("unknown endian on this platform!")
    #endif
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
