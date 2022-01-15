import XCTest
import Endianness

final class EndiannessTests: XCTestCase {
  func testEndianness() throws {

    let value: UInt16 = 0x12_34
    XCTAssertNotEqual(value, value.byteSwapped)
    if value == value.littleEndian {
      XCTAssertEqual(Endianness.host, .little)
    }

    Endianness.allCases.forEach { endian in
      print(endian)
    }

  }
}
