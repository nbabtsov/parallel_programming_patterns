/**********************************************************************************************/
/*  This program is part of the Barcelona OpenMP Tasks Suite                                  */
/*  Copyright (C) 2009 Barcelona Supercomputing Center - Centro Nacional de Supercomputacion  */
/*  Copyright (C) 2009 Universitat Politecnica de Catalunya                                   */
/*                                                                                            */
/*  This program is free software; you can redistribute it and/or modify                      */
/*  it under the terms of the GNU General Public License as published by                      */
/*  the Free Software Foundation; either version 2 of the License, or                         */
/*  (at your option) any later version.                                                       */
/*                                                                                            */
/*  This program is distributed in the hope that it will be useful,                           */
/*  but WITHOUT ANY WARRANTY; without even the implied warranty of                            */
/*  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the                             */
/*  GNU General Public License for more details.                                              */
/*                                                                                            */
/*  You should have received a copy of the GNU General Public License                         */
/*  along with this program; if not, write to the Free Software                               */
/*  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA            */
/**********************************************************************************************/
#include <stdio.h>
#include "autotuning_lib.h" 
static long long res;

long long fib(int n)
{
  long long x;
  long long y;
  if (n < 2) 
    return n;
  void (*OUT_1_fib_29p)(void **);
  void *__out_argv1__1527__[2];
  __out_argv1__1527__[0] = ((void *)(&x));
  __out_argv1__1527__[1] = ((void *)(&n));
  OUT_1_fib_29p = findFunctionUsingDlopen("OUT_1_fib_29","/tmp/OUT_1_fib_29.so");
  ( *OUT_1_fib_29p)(__out_argv1__1527__);
  y = fib(n - 2);
  return x + y;
}

int main()
{
  int parameter = 7;
  res = fib(parameter);
  printf("Fibonacci result for %d is %lld\n",parameter,res);
  return 0;
}
