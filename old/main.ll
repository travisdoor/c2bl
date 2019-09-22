; ModuleID = 'src/main.cpp'
source_filename = "src/main.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.CXTranslationUnitImpl = type opaque
%struct.CXCursor = type { i32, i32, [3 x i8*] }
%struct.CXUnsavedFile = type { i8*, i8*, i64 }
%struct.CXString = type { i8*, i32 }
%struct.CXType = type { i32, [2 x i8*] }

@.str = private unnamed_addr constant [22 x i8] c"../../test/testfile.h\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"struct -> %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"enum\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"variable -> %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%s :: fn (\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"%s #extern;\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"variant -> %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"field -> %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"type -> %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"u8\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"s16\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"s32\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"u16\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"u32\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"u64\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"s8\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"s64\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"f32\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"f64\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"<INVALID_TYPE>\00", align 1

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.CXTranslationUnitImpl*, align 8
  %8 = alloca %struct.CXCursor, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i8* @clang_createIndex(i32 0, i32 0)
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.CXTranslationUnitImpl* @clang_parseTranslationUnit(i8* %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** null, i32 0, %struct.CXUnsavedFile* null, i32 0, i32 0)
  store %struct.CXTranslationUnitImpl* %11, %struct.CXTranslationUnitImpl** %7, align 8
  %12 = load %struct.CXTranslationUnitImpl*, %struct.CXTranslationUnitImpl** %7, align 8
  call void @clang_getTranslationUnitCursor(%struct.CXCursor* sret %8, %struct.CXTranslationUnitImpl* %12)
  %13 = call i32 @clang_visitChildren(%struct.CXCursor* byval(%struct.CXCursor) align 8 %8, i32 (%struct.CXCursor*, %struct.CXCursor*, i8*)* @_ZL7visitor8CXCursorS_Pv, i8* null)
  %14 = load %struct.CXTranslationUnitImpl*, %struct.CXTranslationUnitImpl** %7, align 8
  call void @clang_disposeTranslationUnit(%struct.CXTranslationUnitImpl* %14)
  %15 = load i8*, i8** %6, align 8
  call void @clang_disposeIndex(i8* %15)
  ret i32 0
}

declare i8* @clang_createIndex(i32, i32) #1

declare %struct.CXTranslationUnitImpl* @clang_parseTranslationUnit(i8*, i8*, i8**, i32, %struct.CXUnsavedFile*, i32, i32) #1

declare i32 @clang_visitChildren(%struct.CXCursor* byval(%struct.CXCursor) align 8, i32 (%struct.CXCursor*, %struct.CXCursor*, i8*)*, i8*) #1

declare void @clang_getTranslationUnitCursor(%struct.CXCursor* sret, %struct.CXTranslationUnitImpl*) #1

; Function Attrs: noinline optnone ssp uwtable
define internal i32 @_ZL7visitor8CXCursorS_Pv(%struct.CXCursor* byval(%struct.CXCursor) align 8 %0, %struct.CXCursor* byval(%struct.CXCursor) align 8 %1, i8* %2) #2 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.CXString, align 8
  %6 = alloca %struct.CXCursor, align 8
  %7 = alloca %struct.CXString, align 8
  %8 = alloca %struct.CXCursor, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.CXString, align 8
  %11 = alloca %struct.CXCursor, align 8
  %12 = alloca %struct.CXCursor, align 8
  %13 = alloca %struct.CXType, align 8
  %14 = alloca %struct.CXCursor, align 8
  %15 = alloca %struct.CXString, align 8
  %16 = alloca %struct.CXCursor, align 8
  %17 = alloca %struct.CXString, align 8
  %18 = alloca %struct.CXCursor, align 8
  %19 = alloca %struct.CXString, align 8
  %20 = alloca %struct.CXCursor, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.CXString, align 8
  %23 = alloca %struct.CXCursor, align 8
  store i8* %2, i8** %4, align 8
  %24 = getelementptr inbounds %struct.CXCursor, %struct.CXCursor* %0, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %122 [
    i32 2, label %26
    i32 5, label %38
    i32 9, label %40
    i32 8, label %52
    i32 7, label %73
    i32 6, label %85
    i32 20, label %97
    i32 10, label %109
  ]

26:                                               ; preds = %3
  %27 = bitcast %struct.CXCursor* %6 to i8*
  %28 = bitcast %struct.CXCursor* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 32, i1 false)
  %29 = call { i8*, i32 } @clang_getCursorSpelling(%struct.CXCursor* byval(%struct.CXCursor) align 8 %6)
  %30 = bitcast %struct.CXString* %5 to { i8*, i32 }*
  %31 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %30, i32 0, i32 0
  %32 = extractvalue { i8*, i32 } %29, 0
  store i8* %32, i8** %31, align 8
  %33 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %30, i32 0, i32 1
  %34 = extractvalue { i8*, i32 } %29, 1
  store i32 %34, i32* %33, align 8
  %35 = getelementptr inbounds %struct.CXString, %struct.CXString* %5, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  br label %126

38:                                               ; preds = %3
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %126

40:                                               ; preds = %3
  %41 = bitcast %struct.CXCursor* %8 to i8*
  %42 = bitcast %struct.CXCursor* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 32, i1 false)
  %43 = call { i8*, i32 } @clang_getCursorSpelling(%struct.CXCursor* byval(%struct.CXCursor) align 8 %8)
  %44 = bitcast %struct.CXString* %7 to { i8*, i32 }*
  %45 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %44, i32 0, i32 0
  %46 = extractvalue { i8*, i32 } %43, 0
  store i8* %46, i8** %45, align 8
  %47 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %44, i32 0, i32 1
  %48 = extractvalue { i8*, i32 } %43, 1
  store i32 %48, i32* %47, align 8
  %49 = getelementptr inbounds %struct.CXString, %struct.CXString* %7, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %50)
  br label %126

52:                                               ; preds = %3
  %53 = bitcast %struct.CXCursor* %11 to i8*
  %54 = bitcast %struct.CXCursor* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 32, i1 false)
  %55 = call { i8*, i32 } @clang_getCursorSpelling(%struct.CXCursor* byval(%struct.CXCursor) align 8 %11)
  %56 = bitcast %struct.CXString* %10 to { i8*, i32 }*
  %57 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %56, i32 0, i32 0
  %58 = extractvalue { i8*, i32 } %55, 0
  store i8* %58, i8** %57, align 8
  %59 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %56, i32 0, i32 1
  %60 = extractvalue { i8*, i32 } %55, 1
  store i32 %60, i32* %59, align 8
  %61 = getelementptr inbounds %struct.CXString, %struct.CXString* %10, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %9, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %63)
  %65 = bitcast %struct.CXCursor* %12 to i8*
  %66 = bitcast %struct.CXCursor* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 32, i1 false)
  %67 = call i32 @clang_visitChildren(%struct.CXCursor* byval(%struct.CXCursor) align 8 %12, i32 (%struct.CXCursor*, %struct.CXCursor*, i8*)* @_ZL7visitor8CXCursorS_Pv, i8* null)
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %69 = bitcast %struct.CXCursor* %14 to i8*
  %70 = bitcast %struct.CXCursor* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 32, i1 false)
  call void @clang_getCursorResultType(%struct.CXType* sret %13, %struct.CXCursor* byval(%struct.CXCursor) align 8 %14)
  %71 = call i8* @_ZL8get_typeP6CXType(%struct.CXType* %13)
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %71)
  br label %126

73:                                               ; preds = %3
  %74 = bitcast %struct.CXCursor* %16 to i8*
  %75 = bitcast %struct.CXCursor* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 32, i1 false)
  %76 = call { i8*, i32 } @clang_getCursorSpelling(%struct.CXCursor* byval(%struct.CXCursor) align 8 %16)
  %77 = bitcast %struct.CXString* %15 to { i8*, i32 }*
  %78 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %77, i32 0, i32 0
  %79 = extractvalue { i8*, i32 } %76, 0
  store i8* %79, i8** %78, align 8
  %80 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %77, i32 0, i32 1
  %81 = extractvalue { i8*, i32 } %76, 1
  store i32 %81, i32* %80, align 8
  %82 = getelementptr inbounds %struct.CXString, %struct.CXString* %15, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %83)
  br label %126

85:                                               ; preds = %3
  %86 = bitcast %struct.CXCursor* %18 to i8*
  %87 = bitcast %struct.CXCursor* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 32, i1 false)
  %88 = call { i8*, i32 } @clang_getCursorSpelling(%struct.CXCursor* byval(%struct.CXCursor) align 8 %18)
  %89 = bitcast %struct.CXString* %17 to { i8*, i32 }*
  %90 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %89, i32 0, i32 0
  %91 = extractvalue { i8*, i32 } %88, 0
  store i8* %91, i8** %90, align 8
  %92 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %89, i32 0, i32 1
  %93 = extractvalue { i8*, i32 } %88, 1
  store i32 %93, i32* %92, align 8
  %94 = getelementptr inbounds %struct.CXString, %struct.CXString* %17, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %95)
  br label %126

97:                                               ; preds = %3
  %98 = bitcast %struct.CXCursor* %20 to i8*
  %99 = bitcast %struct.CXCursor* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %98, i8* align 8 %99, i64 32, i1 false)
  %100 = call { i8*, i32 } @clang_getCursorSpelling(%struct.CXCursor* byval(%struct.CXCursor) align 8 %20)
  %101 = bitcast %struct.CXString* %19 to { i8*, i32 }*
  %102 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %101, i32 0, i32 0
  %103 = extractvalue { i8*, i32 } %100, 0
  store i8* %103, i8** %102, align 8
  %104 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %101, i32 0, i32 1
  %105 = extractvalue { i8*, i32 } %100, 1
  store i32 %105, i32* %104, align 8
  %106 = getelementptr inbounds %struct.CXString, %struct.CXString* %19, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %107)
  br label %126

109:                                              ; preds = %3
  %110 = bitcast %struct.CXCursor* %23 to i8*
  %111 = bitcast %struct.CXCursor* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 8 %111, i64 32, i1 false)
  %112 = call { i8*, i32 } @clang_getCursorSpelling(%struct.CXCursor* byval(%struct.CXCursor) align 8 %23)
  %113 = bitcast %struct.CXString* %22 to { i8*, i32 }*
  %114 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %113, i32 0, i32 0
  %115 = extractvalue { i8*, i32 } %112, 0
  store i8* %115, i8** %114, align 8
  %116 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %113, i32 0, i32 1
  %117 = extractvalue { i8*, i32 } %112, 1
  store i32 %117, i32* %116, align 8
  %118 = getelementptr inbounds %struct.CXString, %struct.CXString* %22, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  store i8* %119, i8** %21, align 8
  %120 = load i8*, i8** %21, align 8
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* %120)
  br label %126

122:                                              ; preds = %3
  br label %123

123:                                              ; preds = %124, %122
  br i1 false, label %124, label %125

124:                                              ; preds = %123
  br label %123

125:                                              ; preds = %123
  br label %126

126:                                              ; preds = %125, %109, %97, %85, %73, %52, %40, %38, %26
  ret i32 1
}

declare void @clang_disposeTranslationUnit(%struct.CXTranslationUnitImpl*) #1

declare void @clang_disposeIndex(i8*) #1

declare i32 @printf(i8*, ...) #1

declare { i8*, i32 } @clang_getCursorSpelling(%struct.CXCursor* byval(%struct.CXCursor) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

declare void @clang_getCursorResultType(%struct.CXType* sret, %struct.CXCursor* byval(%struct.CXCursor) align 8) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZL8get_typeP6CXType(%struct.CXType* %0) #4 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.CXType*, align 8
  store %struct.CXType* %0, %struct.CXType** %3, align 8
  %4 = load %struct.CXType*, %struct.CXType** %3, align 8
  %5 = getelementptr inbounds %struct.CXType, %struct.CXType* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %27 [
    i32 2, label %7
    i32 3, label %8
    i32 4, label %9
    i32 5, label %10
    i32 6, label %11
    i32 7, label %12
    i32 8, label %13
    i32 9, label %14
    i32 10, label %15
    i32 11, label %16
    i32 13, label %17
    i32 14, label %18
    i32 15, label %19
    i32 16, label %20
    i32 17, label %21
    i32 18, label %22
    i32 19, label %23
    i32 21, label %24
    i32 22, label %25
    i32 24, label %26
  ]

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %28

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %28

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %28

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %28

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %28

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %28

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %28

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %28

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %28

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %28

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %28

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %28

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %28

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %28

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %28

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %28

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %28

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %28

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %28

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %28

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %28

28:                                               ; preds = %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7
  %29 = load i8*, i8** %2, align 8
  ret i8* %29
}

attributes #0 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/llvm/llvm-project.git a8e5e7371173cd13813bdefef537d502c0ecbe58)"}
