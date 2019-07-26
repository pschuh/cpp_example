#include <stdio.h>
#include <stdlib.h>

#include "example.h"

void example::MyStruct::dump() {
  fprintf(stderr, "MyStruct(a: %d, b: %d, c: %d)\n", a, b, c);
}
