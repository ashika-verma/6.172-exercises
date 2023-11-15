// Copyright (c) 2012 MIT License by 6.172 Staff

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

void swap(int *i, int *j)
{
  int temp = *i; // temp is the value at i
  *i = *j;       // i's pointed value is now j's pointed value
  *j = temp;     // j pointed value is now equal to temp aka old i
}

int main()
{
  int k = 1;
  int m = 2;
  swap(&k, &m);
  // What does this print?
  printf("k = %d, m = %d\n", k, m);

  return 0;
}
