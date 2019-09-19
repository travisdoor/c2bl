//*****************************************************************************
// c2bl
//
// File:   main.cpp
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

#include "common.h"
#include "clang-c/Index.h"

static CXChildVisitResult
visitor(CXCursor cursor, CXCursor parent, CXClientData client_data)
{
	switch (cursor.kind) {
	case CXCursor_StructDecl:
		printf("struct -> %s\n", clang_getCursorDisplayName(cursor).data);
		break;

	case CXCursor_EnumDecl:
		printf("enum\n");
		break;

	case CXCursor_VarDecl:
		printf("variable -> %s\n", clang_getCursorDisplayName(cursor).data);
		break;

	case CXCursor_FunctionDecl: 
		printf("function -> %s\n", clang_getCursorDisplayName(cursor).data);
		break;

	case CXCursor_EnumConstantDecl: 
		printf("variant -> %s\n", clang_getCursorDisplayName(cursor).data);
		break;

	case CXCursor_FieldDecl:
		printf("field -> %s\n", clang_getCursorDisplayName(cursor).data);
		break;

	case CXCursor_TypedefDecl:
		printf("type -> %s\n", clang_getCursorDisplayName(cursor).data);
		break;

	default:
		C2BL_LOG("Missing implementation for node %i", cursor.kind);
	}

	return CXChildVisit_Recurse;
}

int
main(int argc, const char **argv)
{
	auto idx = clang_createIndex(0, 0);
	auto tu  = clang_parseTranslationUnit(idx, "../test/testfile.h", argv, argc, nullptr, 0, 0);

	clang_visitChildren(clang_getTranslationUnitCursor(tu), &visitor, 0);

	clang_disposeTranslationUnit(tu);
	clang_disposeIndex(idx);
	return 0;
}
