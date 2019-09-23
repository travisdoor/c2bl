//************************************************************************************************
// c2bl
//
// File:   c2bl_debug.h
// Author: Martin Dorazil
// Date:   9/19/2019
//
// Copyright 2019 Martin Dorazil
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//************************************************************************************************

#ifndef C2BL_DEBUG_H
#define C2BL_DEBUG_H

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>

#if defined(C2BL_COMPILER_GNUC) || defined(C2BL_COMPILER_CLANG)
#ifndef __FILENAME__
#define __FILENAME__ (strrchr(__FILE__, '/') ? strrchr(__FILE__, '/') + 1 : __FILE__)
#endif
#elif defined(C2BL_COMPILER_MSVC)
#ifndef __FILENAME__
#define __FILENAME__ (strrchr(__FILE__, '\\') ? strrchr(__FILE__, '\\') + 1 : __FILE__)
#endif
#else
#pragma message("WARNING: Cannot parse filename with this compiler")
#define __FILENAME__
#endif

#ifdef C2BL_DEBUG
#define C2BL_LOG(format, ...)                                                                      \
	{                                                                                          \
		printf("LOG [%s:%i]: " format "\n", __FILENAME__, __LINE__, ##__VA_ARGS__);        \
	}

#else /* !C2BL_DEBUG */

#define C2BL_LOG(format, ...)                                                                      \
	while (0) {                                                                                \
	}

#endif /* C2BL_DEBUG */

#define C2BL_UNIMPLEMENTED                                                                         \
	{                                                                                          \
		printf(                                                                            \
		    "UNIMPLEMENTED [%s:%i]: " format "\n", __FILENAME__, __LINE__, ##__VA_ARGS__); \
		abort();                                                                           \
	}
#endif
