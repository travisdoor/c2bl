//*****************************************************************************
// c2bl
//
// File:   array.h
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

#ifndef C2BL_ARRAY_H
#define C2BL_ARRAY_H

#include <assert.h>
#include <memory.h>

#define ARRAY_INIT_CAPACITY 16

template <typename T>
struct Array {
	T *    data;
	size_t size;
	size_t capacity;

	~Array()
	{
		free(data);
	}

	void
	clear()
	{
		size = 0;
	}

	void
	push(const T &v)
	{
		if (!capacity)
			reserve(ARRAY_INIT_CAPACITY);
		else if (size >= capacity)
			reserve(capacity * 2);

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

	void
	reserve(size_t nc)
	{
		if (nc <= capacity) return;
		capacity = nc;

		data = (T *)realloc(data, sizeof(T) * capacity);
		if (!data) abort();
	}
};

#endif
