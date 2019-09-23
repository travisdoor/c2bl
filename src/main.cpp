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
visitor(CXCursor cursor, CXCursor parent, CXClientData client_data);

static inline const char *
get_type(CXType *type)
{
	switch (type->kind) {
	case CXType_Void:
		return "";
	case CXType_Bool:
		return "bool";
	case CXType_Char_U:
		return "u8";
	case CXType_UChar:
		return "u8";
	case CXType_Char16:
		return "s16";
	case CXType_Char32:
		return "s32";
	case CXType_UShort:
		return "u16";
	case CXType_UInt:
		return "u32";
	case CXType_ULong:
		return "u32";
	case CXType_ULongLong:
		return "u64";
	case CXType_Char_S:
		return "s8";
	case CXType_SChar:
		return "s8";
	case CXType_WChar:
		return "s16";
	case CXType_Short:
		return "s16";
	case CXType_Int:
		return "s32";
	case CXType_Long:
		return "s32";
	case CXType_LongLong:
		return "s64";
	case CXType_Float:
		return "f32";
	case CXType_Double:
		return "f64";
	case CXType_NullPtr:
		return "null";
	default:
		return "<INVALID_TYPE>";
	}
}

CXChildVisitResult
visitor(CXCursor cursor, CXCursor parent, CXClientData client_data)
{
	switch (cursor.kind) {
	case CXCursor_StructDecl:
		printf("struct -> %s\n", clang_getCursorSpelling(cursor).data);
		break;

	case CXCursor_EnumDecl:
		printf("enum\n");
		break;

	case CXCursor_VarDecl:
		printf("variable -> %s\n", clang_getCursorSpelling(cursor).data);
		break;

	case CXCursor_FunctionDecl: {
		const char *name = (const char *)clang_getCursorSpelling(cursor).data;
		printf("%s :: fn (", name);
		clang_visitChildren(cursor, &visitor, 0);
		printf(") ");

		auto type = clang_getCursorResultType(cursor);
		printf("%s #extern;\n", get_type(&type));

		break;
	}

	case CXCursor_EnumConstantDecl:
		printf("variant -> %s\n", clang_getCursorSpelling(cursor).data);
		break;

	case CXCursor_FieldDecl:
		printf("field -> %s\n", clang_getCursorSpelling(cursor).data);
		break;

	case CXCursor_TypedefDecl:
		printf("type -> %s\n", clang_getCursorSpelling(cursor).data);
		break;

	case CXCursor_ParmDecl: {
		const char *name = (const char *)clang_getCursorSpelling(cursor).data;
		printf("%s", name);
		// clang_visitChildren(cursor, &visitor, 0);
		break;
	}

	default:
		C2BL_LOG("Missing implementation for node %i", cursor.kind);
	}

	return CXChildVisit_Continue;
}

int
main(int argc, const char **argv)
{
	auto idx = clang_createIndex(0, 0);
	auto tu  = clang_parseTranslationUnit(idx, "../../test/testfile.h", nullptr, 0, nullptr, 0, 0);

	clang_visitChildren(clang_getTranslationUnitCursor(tu), &visitor, 0);

	clang_disposeTranslationUnit(tu);
	clang_disposeIndex(idx);
	return 0;
}
