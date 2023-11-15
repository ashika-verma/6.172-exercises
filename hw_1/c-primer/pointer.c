// Copyright (c) 2012 MIT License by 6.172 Staff

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

int main(int argc, char *argv[])
{ // What is the type of argv?
  int i = 5;
  // The & operator here gets the address of i and stores it into pi
  int *pi = &i;
  // The * operator here dereferences pi and stores the value -- 5 --
  // into j.
  int j = *pi;

  char c[] = "6.172";
  // c is a pointer to c[0] aka mem address
  char *pc = c; // Valid assignment: c acts like a pointer to c[0] here.
  // pc is a pointer to c aka a pointer to c[0] aka mem address
  char d = *pc;
  // * dereferences! d now gets the value at mem address pc aka c[0]: value
  printf("char d = %c\n", d); // What does this print?
  // my guess, 6

  // compound types are read right to left in C.
  // pcp is a pointer to a pointer to a char, meaning that
  // pcp stores the address of a char pointer.
  char **pcp; // pcp is a pointer to a pointer to a chart
  pcp = argv; // Why is this assignment valid?
  // argv is a pointer?, aka argv is a value that points to memory. pcp is a pointer
  // that points to argv which itself is a pointer.
  // @ location a, a = location of b
  // @ location b, b = location of argv[0]

  const char *pcc = c; // pcc is a pointer to char constant
  // pcc is a pointer to a char constant.
  char const *pcc2 = c; // What is the type of pcc2?
  // pcc2 is a pointer to a  constant char?

  // For each of the following, why is the assignment:
  // *pcc = '7';    // invalid? invalid because '7' is not a mem address of a char
  pcc = *pcp;    // valid? *pcp derefs pcp, so *pcp is a pointer to a char aka argv[0]. i guess it's constant
  pcc = argv[0]; // valid?. argv[0] is = to *pcp

  char *const cp = c; // cp is a const pointer to char
  // For each of the following, why is the assignment:
  // cp = *pcp;  // invalid? it constanst!
  // cp = *argv; // invalid?
  *cp = '!'; // valid?

  const char *const cpc = c; // cpc is a const pointer to char const
  // For each of the following, why is the assignment:
  // cpc = *pcp;    // invalid?
  // cpc = argv[0]; // invalid?
  // *cpc = '@'; // invalid?

  return 0;
}
