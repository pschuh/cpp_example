#pragma once

namespace example {
template <typename T>
class Silly {
 public:
  T c;
};

class MyStruct : public Silly<int> {
 public:
  int a;
  int b;

  void dump();
};
}

using SwiftMyStruct = example::MyStruct;
SwiftMyStruct* silly();

inline SwiftMyStruct* newMyStruct() { return new example::MyStruct; }
inline void dumpMyStruct(SwiftMyStruct* ptr) { ptr->dump(); }
inline void setMyStructC(SwiftMyStruct* ptr, int value) { ptr->c = value; }
inline int getMyStructC(SwiftMyStruct* ptr) { return ptr->c; }
inline void cppDelete(SwiftMyStruct* ptr) { delete ptr; }
