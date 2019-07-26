// You cannot safely use the types in CPPExample in the public interface
// of this module. This is because downstream modules would need to import
// CPPExample, but those modules could also import a c-module. The clang compiler
// is only able to operate in one mode or the other. Thus, you can only
// depend on modules compiled in one form or the other.
@_implementationOnly import CPPExample

extension SwiftMyStruct {
  mutating func dump() {
    dumpMyStruct(&self)
  }
  var c : Int32 {
    mutating get {
      getMyStructC(&self)
    }
    set {
      setMyStructC(&self, newValue)
    }
  }
}

public func doExampleFunc() {
  let tmp = newMyStruct()!
  tmp.pointee.a = 5
  tmp.pointee.b = 20
  tmp.pointee.c = 35
  tmp.pointee.dump()
  dumpMyStruct(tmp)
  cppDelete(tmp)
}
