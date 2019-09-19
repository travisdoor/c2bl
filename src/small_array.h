//*****************************************************************************
// c2bl
//
// File:   small_array.h
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
//*****************************************************************************

#ifndef C2BL_SMALL_ARRAY_H
#define C2BL_SMALL_ARRAY_H

#include <assert.h>
#include <memory.h>

template <typename T, size_t Size = 32>
struct SmallArray {
	T *    data = &tmp[0];
	size_t size;
	size_t allocated;
	T      tmp[Size];

	~SmallArray()
	{
		if (allocated) free(data);
	}

	void
	clear()
	{
		size = 0;
	}

	void
	push(const T &v)
	{
		if (!allocated && size == Size) {
			allocated = size * 2;
			data      = (T *)malloc(sizeof(T) * allocated);
			if (!data) abort();
			memcpy(data, tmp, sizeof(T) * size);
		} else if (allocated && size == allocated) {
			allocated *= 2;
			data = (T *)realloc(data, allocated * sizeof(T));
			if (!data) abort();
		}

		data[size++] = v;
	}

	T &
	pop()
	{
		assert(size - 1 > 0);
		return data[--size];
	}

	T &
	at(const size_t i)
	{
		assert(i < size);
		return data[i];
	}
};

#endif
