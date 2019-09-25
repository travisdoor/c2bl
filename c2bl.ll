; ModuleID = 'c2bl'
source_filename = "c2bl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin18.7.0"

%TypeInfoInt = type { %TypeInfo, i32, i1 }
%TypeInfo = type { i32, i64 }
%TypeInfoEnumVariant = type { %string, i64 }
%string = type { i64, i8* }
%TypeInfoEnum = type { %TypeInfo, %string, %TypeInfo*, { i64, %TypeInfoEnumVariant* } }
%TypeInfoString = type { %TypeInfo }
%_Context = type { i8* (i64)*, void (i8*)* }
%CXCursor = type { i32, i32, [3 x i8*] }
%Any = type { %TypeInfo*, i8* }
%CXUnsavedFile = type { i8*, i8*, i64 }
%CXType = type { i32, [2 x i8*] }
%CXString = type { i8*, i32 }
%TypeInfoReal = type { %TypeInfo, i32 }
%TypeInfoArray = type { %TypeInfo, %string, %TypeInfo*, i64 }
%TypeInfoStruct = type { %TypeInfo, %string, { i64, %TypeInfoStructMember* }, i1 }
%TypeInfoStructMember = type { %string, %TypeInfo*, i32, i32 }
%TypeInfoPtr = type { %TypeInfo, %TypeInfo* }
%TypeInfoFn = type { %TypeInfo, { i64, %TypeInfo** }, %TypeInfo*, i1 }

@.rtti.258 = private unnamed_addr constant %TypeInfoInt { %TypeInfo { i32 3, i64 4 }, i32 32, i1 true }, align 8
@.rtti.259 = private unnamed_addr constant [255 x %TypeInfoEnumVariant] [%TypeInfoEnumVariant { %string { i64 13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0) }, i64 1 }, %TypeInfoEnumVariant { %string { i64 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0) }, i64 2 }, %TypeInfoEnumVariant { %string { i64 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0) }, i64 3 }, %TypeInfoEnumVariant { %string { i64 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0) }, i64 4 }, %TypeInfoEnumVariant { %string { i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0) }, i64 5 }, %TypeInfoEnumVariant { %string { i64 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0) }, i64 6 }, %TypeInfoEnumVariant { %string { i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0) }, i64 7 }, %TypeInfoEnumVariant { %string { i64 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0) }, i64 8 }, %TypeInfoEnumVariant { %string { i64 7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0) }, i64 9 }, %TypeInfoEnumVariant { %string { i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0) }, i64 10 }, %TypeInfoEnumVariant { %string { i64 17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0) }, i64 11 }, %TypeInfoEnumVariant { %string { i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0) }, i64 12 }, %TypeInfoEnumVariant { %string { i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0) }, i64 13 }, %TypeInfoEnumVariant { %string { i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0) }, i64 14 }, %TypeInfoEnumVariant { %string { i64 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0) }, i64 15 }, %TypeInfoEnumVariant { %string { i64 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0) }, i64 16 }, %TypeInfoEnumVariant { %string { i64 19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0) }, i64 17 }, %TypeInfoEnumVariant { %string { i64 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0) }, i64 18 }, %TypeInfoEnumVariant { %string { i64 20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0) }, i64 19 }, %TypeInfoEnumVariant { %string { i64 11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0) }, i64 20 }, %TypeInfoEnumVariant { %string { i64 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0) }, i64 21 }, %TypeInfoEnumVariant { %string { i64 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0) }, i64 22 }, %TypeInfoEnumVariant { %string { i64 11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0) }, i64 23 }, %TypeInfoEnumVariant { %string { i64 11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0) }, i64 24 }, %TypeInfoEnumVariant { %string { i64 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0) }, i64 25 }, %TypeInfoEnumVariant { %string { i64 18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0) }, i64 26 }, %TypeInfoEnumVariant { %string { i64 21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0) }, i64 27 }, %TypeInfoEnumVariant { %string { i64 24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i32 0, i32 0) }, i64 28 }, %TypeInfoEnumVariant { %string { i64 25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i32 0, i32 0) }, i64 29 }, %TypeInfoEnumVariant { %string { i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0) }, i64 30 }, %TypeInfoEnumVariant { %string { i64 13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0) }, i64 31 }, %TypeInfoEnumVariant { %string { i64 34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i32 0, i32 0) }, i64 32 }, %TypeInfoEnumVariant { %string { i64 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0) }, i64 33 }, %TypeInfoEnumVariant { %string { i64 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0) }, i64 34 }, %TypeInfoEnumVariant { %string { i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i32 0, i32 0) }, i64 35 }, %TypeInfoEnumVariant { %string { i64 13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0) }, i64 36 }, %TypeInfoEnumVariant { %string { i64 18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i32 0, i32 0) }, i64 37 }, %TypeInfoEnumVariant { %string { i64 15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0) }, i64 38 }, %TypeInfoEnumVariant { %string { i64 18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i32 0, i32 0) }, i64 39 }, %TypeInfoEnumVariant { %string { i64 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0) }, i64 1 }, %TypeInfoEnumVariant { %string { i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0) }, i64 39 }, %TypeInfoEnumVariant { %string { i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0) }, i64 40 }, %TypeInfoEnumVariant { %string { i64 17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0) }, i64 40 }, %TypeInfoEnumVariant { %string { i64 15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0) }, i64 41 }, %TypeInfoEnumVariant { %string { i64 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0) }, i64 42 }, %TypeInfoEnumVariant { %string { i64 7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0) }, i64 43 }, %TypeInfoEnumVariant { %string { i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0) }, i64 44 }, %TypeInfoEnumVariant { %string { i64 11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0) }, i64 45 }, %TypeInfoEnumVariant { %string { i64 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i32 0, i32 0) }, i64 46 }, %TypeInfoEnumVariant { %string { i64 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0) }, i64 47 }, %TypeInfoEnumVariant { %string { i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0) }, i64 48 }, %TypeInfoEnumVariant { %string { i64 17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.51, i32 0, i32 0) }, i64 49 }, %TypeInfoEnumVariant { %string { i64 11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0) }, i64 50 }, %TypeInfoEnumVariant { %string { i64 7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0) }, i64 50 }, %TypeInfoEnumVariant { %string { i64 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i32 0, i32 0) }, i64 70 }, %TypeInfoEnumVariant { %string { i64 11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0) }, i64 70 }, %TypeInfoEnumVariant { %string { i64 11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0) }, i64 71 }, %TypeInfoEnumVariant { %string { i64 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0) }, i64 72 }, %TypeInfoEnumVariant { %string { i64 11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0) }, i64 73 }, %TypeInfoEnumVariant { %string { i64 11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i32 0, i32 0) }, i64 73 }, %TypeInfoEnumVariant { %string { i64 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0) }, i64 100 }, %TypeInfoEnumVariant { %string { i64 13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.61, i32 0, i32 0) }, i64 100 }, %TypeInfoEnumVariant { %string { i64 11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i32 0, i32 0) }, i64 101 }, %TypeInfoEnumVariant { %string { i64 13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.63, i32 0, i32 0) }, i64 102 }, %TypeInfoEnumVariant { %string { i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0) }, i64 103 }, %TypeInfoEnumVariant { %string { i64 15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.65, i32 0, i32 0) }, i64 104 }, %TypeInfoEnumVariant { %string { i64 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0) }, i64 105 }, %TypeInfoEnumVariant { %string { i64 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i32 0, i32 0) }, i64 106 }, %TypeInfoEnumVariant { %string { i64 15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.68, i32 0, i32 0) }, i64 107 }, %TypeInfoEnumVariant { %string { i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.69, i32 0, i32 0) }, i64 108 }, %TypeInfoEnumVariant { %string { i64 13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.70, i32 0, i32 0) }, i64 109 }, %TypeInfoEnumVariant { %string { i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.71, i32 0, i32 0) }, i64 110 }, %TypeInfoEnumVariant { %string { i64 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0) }, i64 111 }, %TypeInfoEnumVariant { %string { i64 13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0) }, i64 112 }, %TypeInfoEnumVariant { %string { i64 18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.74, i32 0, i32 0) }, i64 113 }, %TypeInfoEnumVariant { %string { i64 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.75, i32 0, i32 0) }, i64 114 }, %TypeInfoEnumVariant { %string { i64 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.76, i32 0, i32 0) }, i64 115 }, %TypeInfoEnumVariant { %string { i64 19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.77, i32 0, i32 0) }, i64 116 }, %TypeInfoEnumVariant { %string { i64 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.78, i32 0, i32 0) }, i64 117 }, %TypeInfoEnumVariant { %string { i64 19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.79, i32 0, i32 0) }, i64 118 }, %TypeInfoEnumVariant { %string { i64 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0) }, i64 119 }, %TypeInfoEnumVariant { %string { i64 13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.81, i32 0, i32 0) }, i64 120 }, %TypeInfoEnumVariant { %string { i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.82, i32 0, i32 0) }, i64 121 }, %TypeInfoEnumVariant { %string { i64 20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.83, i32 0, i32 0) }, i64 122 }, %TypeInfoEnumVariant { %string { i64 11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.84, i32 0, i32 0) }, i64 123 }, %TypeInfoEnumVariant { %string { i64 17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.85, i32 0, i32 0) }, i64 124 }, %TypeInfoEnumVariant { %string { i64 18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.86, i32 0, i32 0) }, i64 125 }, %TypeInfoEnumVariant { %string { i64 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.87, i32 0, i32 0) }, i64 126 }, %TypeInfoEnumVariant { %string { i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.88, i32 0, i32 0) }, i64 127 }, %TypeInfoEnumVariant { %string { i64 21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.89, i32 0, i32 0) }, i64 128 }, %TypeInfoEnumVariant { %string { i64 13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.90, i32 0, i32 0) }, i64 129 }, %TypeInfoEnumVariant { %string { i64 18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.91, i32 0, i32 0) }, i64 130 }, %TypeInfoEnumVariant { %string { i64 21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.92, i32 0, i32 0) }, i64 131 }, %TypeInfoEnumVariant { %string { i64 11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i32 0, i32 0) }, i64 132 }, %TypeInfoEnumVariant { %string { i64 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.94, i32 0, i32 0) }, i64 133 }, %TypeInfoEnumVariant { %string { i64 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.95, i32 0, i32 0) }, i64 134 }, %TypeInfoEnumVariant { %string { i64 13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.96, i32 0, i32 0) }, i64 135 }, %TypeInfoEnumVariant { %string { i64 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0) }, i64 136 }, %TypeInfoEnumVariant { %string { i64 17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.98, i32 0, i32 0) }, i64 137 }, %TypeInfoEnumVariant { %string { i64 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.99, i32 0, i32 0) }, i64 138 }, %TypeInfoEnumVariant { %string { i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.100, i32 0, i32 0) }, i64 139 }, %TypeInfoEnumVariant { %string { i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.101, i32 0, i32 0) }, i64 140 }, %TypeInfoEnumVariant { %string { i64 19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.102, i32 0, i32 0) }, i64 141 }, %TypeInfoEnumVariant { %string { i64 17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.103, i32 0, i32 0) }, i64 142 }, %TypeInfoEnumVariant { %string { i64 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.104, i32 0, i32 0) }, i64 143 }, %TypeInfoEnumVariant { %string { i64 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0) }, i64 144 }, %TypeInfoEnumVariant { %string { i64 19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.106, i32 0, i32 0) }, i64 145 }, %TypeInfoEnumVariant { %string { i64 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.107, i32 0, i32 0) }, i64 146 }, %TypeInfoEnumVariant { %string { i64 19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.108, i32 0, i32 0) }, i64 147 }, %TypeInfoEnumVariant { %string { i64 25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.109, i32 0, i32 0) }, i64 148 }, %TypeInfoEnumVariant { %string { i64 17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.110, i32 0, i32 0) }, i64 149 }, %TypeInfoEnumVariant { %string { i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.111, i32 0, i32 0) }, i64 149 }, %TypeInfoEnumVariant { %string { i64 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.112, i32 0, i32 0) }, i64 200 }, %TypeInfoEnumVariant { %string { i64 13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.113, i32 0, i32 0) }, i64 200 }, %TypeInfoEnumVariant { %string { i64 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.114, i32 0, i32 0) }, i64 201 }, %TypeInfoEnumVariant { %string { i64 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.115, i32 0, i32 0) }, i64 202 }, %TypeInfoEnumVariant { %string { i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.116, i32 0, i32 0) }, i64 203 }, %TypeInfoEnumVariant { %string { i64 11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.117, i32 0, i32 0) }, i64 204 }, %TypeInfoEnumVariant { %string { i64 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.118, i32 0, i32 0) }, i64 205 }, %TypeInfoEnumVariant { %string { i64 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.119, i32 0, i32 0) }, i64 206 }, %TypeInfoEnumVariant { %string { i64 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.120, i32 0, i32 0) }, i64 207 }, %TypeInfoEnumVariant { %string { i64 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.121, i32 0, i32 0) }, i64 208 }, %TypeInfoEnumVariant { %string { i64 7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.122, i32 0, i32 0) }, i64 209 }, %TypeInfoEnumVariant { %string { i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.123, i32 0, i32 0) }, i64 210 }, %TypeInfoEnumVariant { %string { i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.124, i32 0, i32 0) }, i64 211 }, %TypeInfoEnumVariant { %string { i64 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.125, i32 0, i32 0) }, i64 212 }, %TypeInfoEnumVariant { %string { i64 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.126, i32 0, i32 0) }, i64 213 }, %TypeInfoEnumVariant { %string { i64 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.127, i32 0, i32 0) }, i64 214 }, %TypeInfoEnumVariant { %string { i64 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.128, i32 0, i32 0) }, i64 215 }, %TypeInfoEnumVariant { %string { i64 7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.129, i32 0, i32 0) }, i64 215 }, %TypeInfoEnumVariant { %string { i64 13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.130, i32 0, i32 0) }, i64 216 }, %TypeInfoEnumVariant { %string { i64 15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.131, i32 0, i32 0) }, i64 217 }, %TypeInfoEnumVariant { %string { i64 17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.132, i32 0, i32 0) }, i64 218 }, %TypeInfoEnumVariant { %string { i64 15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.133, i32 0, i32 0) }, i64 219 }, %TypeInfoEnumVariant { %string { i64 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.134, i32 0, i32 0) }, i64 220 }, %TypeInfoEnumVariant { %string { i64 23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.135, i32 0, i32 0) }, i64 221 }, %TypeInfoEnumVariant { %string { i64 21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.136, i32 0, i32 0) }, i64 222 }, %TypeInfoEnumVariant { %string { i64 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.137, i32 0, i32 0) }, i64 223 }, %TypeInfoEnumVariant { %string { i64 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.138, i32 0, i32 0) }, i64 224 }, %TypeInfoEnumVariant { %string { i64 15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.139, i32 0, i32 0) }, i64 225 }, %TypeInfoEnumVariant { %string { i64 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.140, i32 0, i32 0) }, i64 226 }, %TypeInfoEnumVariant { %string { i64 13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.141, i32 0, i32 0) }, i64 227 }, %TypeInfoEnumVariant { %string { i64 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.142, i32 0, i32 0) }, i64 228 }, %TypeInfoEnumVariant { %string { i64 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.143, i32 0, i32 0) }, i64 229 }, %TypeInfoEnumVariant { %string { i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.144, i32 0, i32 0) }, i64 230 }, %TypeInfoEnumVariant { %string { i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.145, i32 0, i32 0) }, i64 231 }, %TypeInfoEnumVariant { %string { i64 20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.146, i32 0, i32 0) }, i64 232 }, %TypeInfoEnumVariant { %string { i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.147, i32 0, i32 0) }, i64 233 }, %TypeInfoEnumVariant { %string { i64 15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.148, i32 0, i32 0) }, i64 234 }, %TypeInfoEnumVariant { %string { i64 20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.149, i32 0, i32 0) }, i64 235 }, %TypeInfoEnumVariant { %string { i64 19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.150, i32 0, i32 0) }, i64 236 }, %TypeInfoEnumVariant { %string { i64 18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.151, i32 0, i32 0) }, i64 237 }, %TypeInfoEnumVariant { %string { i64 23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.152, i32 0, i32 0) }, i64 238 }, %TypeInfoEnumVariant { %string { i64 28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.153, i32 0, i32 0) }, i64 239 }, %TypeInfoEnumVariant { %string { i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.154, i32 0, i32 0) }, i64 240 }, %TypeInfoEnumVariant { %string { i64 18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.155, i32 0, i32 0) }, i64 241 }, %TypeInfoEnumVariant { %string { i64 20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.156, i32 0, i32 0) }, i64 242 }, %TypeInfoEnumVariant { %string { i64 21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.157, i32 0, i32 0) }, i64 243 }, %TypeInfoEnumVariant { %string { i64 19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.158, i32 0, i32 0) }, i64 244 }, %TypeInfoEnumVariant { %string { i64 20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.159, i32 0, i32 0) }, i64 245 }, %TypeInfoEnumVariant { %string { i64 17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.160, i32 0, i32 0) }, i64 246 }, %TypeInfoEnumVariant { %string { i64 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.161, i32 0, i32 0) }, i64 247 }, %TypeInfoEnumVariant { %string { i64 19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.162, i32 0, i32 0) }, i64 248 }, %TypeInfoEnumVariant { %string { i64 18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.163, i32 0, i32 0) }, i64 249 }, %TypeInfoEnumVariant { %string { i64 19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.164, i32 0, i32 0) }, i64 250 }, %TypeInfoEnumVariant { %string { i64 27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.165, i32 0, i32 0) }, i64 251 }, %TypeInfoEnumVariant { %string { i64 18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.166, i32 0, i32 0) }, i64 252 }, %TypeInfoEnumVariant { %string { i64 17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.167, i32 0, i32 0) }, i64 253 }, %TypeInfoEnumVariant { %string { i64 21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.168, i32 0, i32 0) }, i64 254 }, %TypeInfoEnumVariant { %string { i64 29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.169, i32 0, i32 0) }, i64 255 }, %TypeInfoEnumVariant { %string { i64 18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.170, i32 0, i32 0) }, i64 256 }, %TypeInfoEnumVariant { %string { i64 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.171, i32 0, i32 0) }, i64 257 }, %TypeInfoEnumVariant { %string { i64 20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.172, i32 0, i32 0) }, i64 258 }, %TypeInfoEnumVariant { %string { i64 24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.173, i32 0, i32 0) }, i64 259 }, %TypeInfoEnumVariant { %string { i64 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.174, i32 0, i32 0) }, i64 260 }, %TypeInfoEnumVariant { %string { i64 27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.175, i32 0, i32 0) }, i64 261 }, %TypeInfoEnumVariant { %string { i64 26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.176, i32 0, i32 0) }, i64 262 }, %TypeInfoEnumVariant { %string { i64 26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.177, i32 0, i32 0) }, i64 263 }, %TypeInfoEnumVariant { %string { i64 29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.178, i32 0, i32 0) }, i64 264 }, %TypeInfoEnumVariant { %string { i64 24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.179, i32 0, i32 0) }, i64 265 }, %TypeInfoEnumVariant { %string { i64 33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.180, i32 0, i32 0) }, i64 266 }, %TypeInfoEnumVariant { %string { i64 37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.181, i32 0, i32 0) }, i64 267 }, %TypeInfoEnumVariant { %string { i64 26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.182, i32 0, i32 0) }, i64 268 }, %TypeInfoEnumVariant { %string { i64 33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.183, i32 0, i32 0) }, i64 269 }, %TypeInfoEnumVariant { %string { i64 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.184, i32 0, i32 0) }, i64 270 }, %TypeInfoEnumVariant { %string { i64 27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.185, i32 0, i32 0) }, i64 271 }, %TypeInfoEnumVariant { %string { i64 31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.186, i32 0, i32 0) }, i64 272 }, %TypeInfoEnumVariant { %string { i64 42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.187, i32 0, i32 0) }, i64 273 }, %TypeInfoEnumVariant { %string { i64 38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.188, i32 0, i32 0) }, i64 274 }, %TypeInfoEnumVariant { %string { i64 23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.189, i32 0, i32 0) }, i64 275 }, %TypeInfoEnumVariant { %string { i64 33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.190, i32 0, i32 0) }, i64 276 }, %TypeInfoEnumVariant { %string { i64 44, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.191, i32 0, i32 0) }, i64 277 }, %TypeInfoEnumVariant { %string { i64 48, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.192, i32 0, i32 0) }, i64 278 }, %TypeInfoEnumVariant { %string { i64 37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.193, i32 0, i32 0) }, i64 279 }, %TypeInfoEnumVariant { %string { i64 18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.194, i32 0, i32 0) }, i64 280 }, %TypeInfoEnumVariant { %string { i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.195, i32 0, i32 0) }, i64 280 }, %TypeInfoEnumVariant { %string { i64 15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.196, i32 0, i32 0) }, i64 300 }, %TypeInfoEnumVariant { %string { i64 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.197, i32 0, i32 0) }, i64 400 }, %TypeInfoEnumVariant { %string { i64 13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.198, i32 0, i32 0) }, i64 400 }, %TypeInfoEnumVariant { %string { i64 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.199, i32 0, i32 0) }, i64 401 }, %TypeInfoEnumVariant { %string { i64 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.200, i32 0, i32 0) }, i64 402 }, %TypeInfoEnumVariant { %string { i64 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.201, i32 0, i32 0) }, i64 403 }, %TypeInfoEnumVariant { %string { i64 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.202, i32 0, i32 0) }, i64 404 }, %TypeInfoEnumVariant { %string { i64 15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.203, i32 0, i32 0) }, i64 405 }, %TypeInfoEnumVariant { %string { i64 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.204, i32 0, i32 0) }, i64 406 }, %TypeInfoEnumVariant { %string { i64 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.205, i32 0, i32 0) }, i64 407 }, %TypeInfoEnumVariant { %string { i64 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.206, i32 0, i32 0) }, i64 408 }, %TypeInfoEnumVariant { %string { i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.207, i32 0, i32 0) }, i64 409 }, %TypeInfoEnumVariant { %string { i64 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.208, i32 0, i32 0) }, i64 410 }, %TypeInfoEnumVariant { %string { i64 15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.209, i32 0, i32 0) }, i64 411 }, %TypeInfoEnumVariant { %string { i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.210, i32 0, i32 0) }, i64 412 }, %TypeInfoEnumVariant { %string { i64 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.211, i32 0, i32 0) }, i64 413 }, %TypeInfoEnumVariant { %string { i64 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.212, i32 0, i32 0) }, i64 414 }, %TypeInfoEnumVariant { %string { i64 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.213, i32 0, i32 0) }, i64 415 }, %TypeInfoEnumVariant { %string { i64 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.214, i32 0, i32 0) }, i64 416 }, %TypeInfoEnumVariant { %string { i64 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.215, i32 0, i32 0) }, i64 417 }, %TypeInfoEnumVariant { %string { i64 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.216, i32 0, i32 0) }, i64 418 }, %TypeInfoEnumVariant { %string { i64 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.217, i32 0, i32 0) }, i64 419 }, %TypeInfoEnumVariant { %string { i64 17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.218, i32 0, i32 0) }, i64 420 }, %TypeInfoEnumVariant { %string { i64 20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.219, i32 0, i32 0) }, i64 421 }, %TypeInfoEnumVariant { %string { i64 21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.220, i32 0, i32 0) }, i64 422 }, %TypeInfoEnumVariant { %string { i64 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.221, i32 0, i32 0) }, i64 423 }, %TypeInfoEnumVariant { %string { i64 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.222, i32 0, i32 0) }, i64 424 }, %TypeInfoEnumVariant { %string { i64 13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.223, i32 0, i32 0) }, i64 425 }, %TypeInfoEnumVariant { %string { i64 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.224, i32 0, i32 0) }, i64 426 }, %TypeInfoEnumVariant { %string { i64 20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.225, i32 0, i32 0) }, i64 427 }, %TypeInfoEnumVariant { %string { i64 19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.226, i32 0, i32 0) }, i64 428 }, %TypeInfoEnumVariant { %string { i64 23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.227, i32 0, i32 0) }, i64 429 }, %TypeInfoEnumVariant { %string { i64 17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.228, i32 0, i32 0) }, i64 430 }, %TypeInfoEnumVariant { %string { i64 13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.229, i32 0, i32 0) }, i64 431 }, %TypeInfoEnumVariant { %string { i64 25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.230, i32 0, i32 0) }, i64 432 }, %TypeInfoEnumVariant { %string { i64 24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.231, i32 0, i32 0) }, i64 433 }, %TypeInfoEnumVariant { %string { i64 25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.232, i32 0, i32 0) }, i64 434 }, %TypeInfoEnumVariant { %string { i64 18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.233, i32 0, i32 0) }, i64 435 }, %TypeInfoEnumVariant { %string { i64 11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.234, i32 0, i32 0) }, i64 436 }, %TypeInfoEnumVariant { %string { i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.235, i32 0, i32 0) }, i64 437 }, %TypeInfoEnumVariant { %string { i64 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.236, i32 0, i32 0) }, i64 438 }, %TypeInfoEnumVariant { %string { i64 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.237, i32 0, i32 0) }, i64 439 }, %TypeInfoEnumVariant { %string { i64 20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.238, i32 0, i32 0) }, i64 440 }, %TypeInfoEnumVariant { %string { i64 11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.239, i32 0, i32 0) }, i64 441 }, %TypeInfoEnumVariant { %string { i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.240, i32 0, i32 0) }, i64 441 }, %TypeInfoEnumVariant { %string { i64 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.241, i32 0, i32 0) }, i64 500 }, %TypeInfoEnumVariant { %string { i64 15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.242, i32 0, i32 0) }, i64 501 }, %TypeInfoEnumVariant { %string { i64 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.243, i32 0, i32 0) }, i64 502 }, %TypeInfoEnumVariant { %string { i64 18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.244, i32 0, i32 0) }, i64 502 }, %TypeInfoEnumVariant { %string { i64 18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.245, i32 0, i32 0) }, i64 503 }, %TypeInfoEnumVariant { %string { i64 18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.246, i32 0, i32 0) }, i64 500 }, %TypeInfoEnumVariant { %string { i64 17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.247, i32 0, i32 0) }, i64 503 }, %TypeInfoEnumVariant { %string { i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.248, i32 0, i32 0) }, i64 600 }, %TypeInfoEnumVariant { %string { i64 21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.249, i32 0, i32 0) }, i64 601 }, %TypeInfoEnumVariant { %string { i64 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.250, i32 0, i32 0) }, i64 602 }, %TypeInfoEnumVariant { %string { i64 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.251, i32 0, i32 0) }, i64 603 }, %TypeInfoEnumVariant { %string { i64 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.252, i32 0, i32 0) }, i64 600 }, %TypeInfoEnumVariant { %string { i64 13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.253, i32 0, i32 0) }, i64 603 }, %TypeInfoEnumVariant { %string { i64 17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.254, i32 0, i32 0) }, i64 700 }], align 8
@.str = private unnamed_addr constant [14 x i8] c"UnexposedDecl\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"StructDecl\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"UnionDecl\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ClassDecl\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"EnumDecl\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"FieldDecl\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"EnumConstantDecl\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"FunctionDecl\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"VarDecl\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"ParmDecl\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"ObjCInterfaceDecl\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"ObjCCategoryDecl\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"ObjCProtocolDecl\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"ObjCPropertyDecl\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"ObjCIvarDecl\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"ObjCInstanceMethodDecl\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"ObjCClassMethodDecl\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"ObjCImplementationDecl\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"ObjCCategoryImplDecl\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"TypedefDecl\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"CXXMethod\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"Namespace\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"LinkageSpec\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"Constructor\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"Destructor\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"ConversionFunction\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"TemplateTypeParameter\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"NonTypeTemplateParameter\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"TemplateTemplateParameter\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"FunctionTemplate\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"ClassTemplate\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"ClassTemplatePartialSpecialization\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"NamespaceAlias\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"UsingDirective\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"UsingDeclaration\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"TypeAliasDecl\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"ObjCSynthesizeDecl\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"ObjCDynamicDecl\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"CXXAccessSpecifier\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"FirstDecl\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"LastDecl\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"FirstRef\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"ObjCSuperClassRef\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"ObjCProtocolRef\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"ObjCClassRef\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"TypeRef\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"CXXBaseSpecifier\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"TemplateRef\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"NamespaceRef\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"MemberRef\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"LabelRef\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"OverloadedDeclRef\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"VariableRef\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"LastRef\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"FirstInvalid\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"InvalidFile\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"NoDeclFound\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"NotImplemented\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"InvalidCode\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"LastInvalid\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"FirstExpr\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"UnexposedExpr\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"DeclRefExpr\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"MemberRefExpr\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"CallExpr\00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"ObjCMessageExpr\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"BlockExpr\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"IntegerLiteral\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"FloatingLiteral\00", align 1
@.str.69 = private unnamed_addr constant [17 x i8] c"ImaginaryLiteral\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"StringLiteral\00", align 1
@.str.71 = private unnamed_addr constant [17 x i8] c"CharacterLiteral\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"ParenExpr\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c"UnaryOperator\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"ArraySubscriptExpr\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"BinaryOperator\00", align 1
@.str.76 = private unnamed_addr constant [23 x i8] c"CompoundAssignOperator\00", align 1
@.str.77 = private unnamed_addr constant [20 x i8] c"ConditionalOperator\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"CStyleCastExpr\00", align 1
@.str.79 = private unnamed_addr constant [20 x i8] c"CompoundLiteralExpr\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"InitListExpr\00", align 1
@.str.81 = private unnamed_addr constant [14 x i8] c"AddrLabelExpr\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"StmtExpr\00", align 1
@.str.83 = private unnamed_addr constant [21 x i8] c"GenericSelectionExpr\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"GNUNullExpr\00", align 1
@.str.85 = private unnamed_addr constant [18 x i8] c"CXXStaticCastExpr\00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c"CXXDynamicCastExpr\00", align 1
@.str.87 = private unnamed_addr constant [23 x i8] c"CXXReinterpretCastExpr\00", align 1
@.str.88 = private unnamed_addr constant [17 x i8] c"CXXConstCastExpr\00", align 1
@.str.89 = private unnamed_addr constant [22 x i8] c"CXXFunctionalCastExpr\00", align 1
@.str.90 = private unnamed_addr constant [14 x i8] c"CXXTypeidExpr\00", align 1
@.str.91 = private unnamed_addr constant [19 x i8] c"CXXBoolLiteralExpr\00", align 1
@.str.92 = private unnamed_addr constant [22 x i8] c"CXXNullPtrLiteralExpr\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"CXXThisExpr\00", align 1
@.str.94 = private unnamed_addr constant [13 x i8] c"CXXThrowExpr\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"CXXNewExpr\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"CXXDeleteExpr\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"UnaryExpr\00", align 1
@.str.98 = private unnamed_addr constant [18 x i8] c"ObjCStringLiteral\00", align 1
@.str.99 = private unnamed_addr constant [15 x i8] c"ObjCEncodeExpr\00", align 1
@.str.100 = private unnamed_addr constant [17 x i8] c"ObjCSelectorExpr\00", align 1
@.str.101 = private unnamed_addr constant [17 x i8] c"ObjCProtocolExpr\00", align 1
@.str.102 = private unnamed_addr constant [20 x i8] c"ObjCBridgedCastExpr\00", align 1
@.str.103 = private unnamed_addr constant [18 x i8] c"PackExpansionExpr\00", align 1
@.str.104 = private unnamed_addr constant [15 x i8] c"SizeOfPackExpr\00", align 1
@.str.105 = private unnamed_addr constant [11 x i8] c"LambdaExpr\00", align 1
@.str.106 = private unnamed_addr constant [20 x i8] c"ObjCBoolLiteralExpr\00", align 1
@.str.107 = private unnamed_addr constant [13 x i8] c"ObjCSelfExpr\00", align 1
@.str.108 = private unnamed_addr constant [20 x i8] c"OMPArraySectionExpr\00", align 1
@.str.109 = private unnamed_addr constant [26 x i8] c"ObjCAvailabilityCheckExpr\00", align 1
@.str.110 = private unnamed_addr constant [18 x i8] c"FixedPointLiteral\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"LastExpr\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"FirstStmt\00", align 1
@.str.113 = private unnamed_addr constant [14 x i8] c"UnexposedStmt\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"LabelStmt\00", align 1
@.str.115 = private unnamed_addr constant [13 x i8] c"CompoundStmt\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c"CaseStmt\00", align 1
@.str.117 = private unnamed_addr constant [12 x i8] c"DefaultStmt\00", align 1
@.str.118 = private unnamed_addr constant [7 x i8] c"IfStmt\00", align 1
@.str.119 = private unnamed_addr constant [11 x i8] c"SwitchStmt\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"WhileStmt\00", align 1
@.str.121 = private unnamed_addr constant [7 x i8] c"DoStmt\00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"ForStmt\00", align 1
@.str.123 = private unnamed_addr constant [9 x i8] c"GotoStmt\00", align 1
@.str.124 = private unnamed_addr constant [17 x i8] c"IndirectGotoStmt\00", align 1
@.str.125 = private unnamed_addr constant [13 x i8] c"ContinueStmt\00", align 1
@.str.126 = private unnamed_addr constant [10 x i8] c"BreakStmt\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"ReturnStmt\00", align 1
@.str.128 = private unnamed_addr constant [11 x i8] c"GCCAsmStmt\00", align 1
@.str.129 = private unnamed_addr constant [8 x i8] c"AsmStmt\00", align 1
@.str.130 = private unnamed_addr constant [14 x i8] c"ObjCAtTryStmt\00", align 1
@.str.131 = private unnamed_addr constant [16 x i8] c"ObjCAtCatchStmt\00", align 1
@.str.132 = private unnamed_addr constant [18 x i8] c"ObjCAtFinallyStmt\00", align 1
@.str.133 = private unnamed_addr constant [16 x i8] c"ObjCAtThrowStmt\00", align 1
@.str.134 = private unnamed_addr constant [23 x i8] c"ObjCAtSynchronizedStmt\00", align 1
@.str.135 = private unnamed_addr constant [24 x i8] c"ObjCAutoreleasePoolStmt\00", align 1
@.str.136 = private unnamed_addr constant [22 x i8] c"ObjCForCollectionStmt\00", align 1
@.str.137 = private unnamed_addr constant [13 x i8] c"CXXCatchStmt\00", align 1
@.str.138 = private unnamed_addr constant [11 x i8] c"CXXTryStmt\00", align 1
@.str.139 = private unnamed_addr constant [16 x i8] c"CXXForRangeStmt\00", align 1
@.str.140 = private unnamed_addr constant [11 x i8] c"SEHTryStmt\00", align 1
@.str.141 = private unnamed_addr constant [14 x i8] c"SEHExceptStmt\00", align 1
@.str.142 = private unnamed_addr constant [15 x i8] c"SEHFinallyStmt\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"MSAsmStmt\00", align 1
@.str.144 = private unnamed_addr constant [9 x i8] c"NullStmt\00", align 1
@.str.145 = private unnamed_addr constant [9 x i8] c"DeclStmt\00", align 1
@.str.146 = private unnamed_addr constant [21 x i8] c"OMPParallelDirective\00", align 1
@.str.147 = private unnamed_addr constant [17 x i8] c"OMPSimdDirective\00", align 1
@.str.148 = private unnamed_addr constant [16 x i8] c"OMPForDirective\00", align 1
@.str.149 = private unnamed_addr constant [21 x i8] c"OMPSectionsDirective\00", align 1
@.str.150 = private unnamed_addr constant [20 x i8] c"OMPSectionDirective\00", align 1
@.str.151 = private unnamed_addr constant [19 x i8] c"OMPSingleDirective\00", align 1
@.str.152 = private unnamed_addr constant [24 x i8] c"OMPParallelForDirective\00", align 1
@.str.153 = private unnamed_addr constant [29 x i8] c"OMPParallelSectionsDirective\00", align 1
@.str.154 = private unnamed_addr constant [17 x i8] c"OMPTaskDirective\00", align 1
@.str.155 = private unnamed_addr constant [19 x i8] c"OMPMasterDirective\00", align 1
@.str.156 = private unnamed_addr constant [21 x i8] c"OMPCriticalDirective\00", align 1
@.str.157 = private unnamed_addr constant [22 x i8] c"OMPTaskyieldDirective\00", align 1
@.str.158 = private unnamed_addr constant [20 x i8] c"OMPBarrierDirective\00", align 1
@.str.159 = private unnamed_addr constant [21 x i8] c"OMPTaskwaitDirective\00", align 1
@.str.160 = private unnamed_addr constant [18 x i8] c"OMPFlushDirective\00", align 1
@.str.161 = private unnamed_addr constant [13 x i8] c"SEHLeaveStmt\00", align 1
@.str.162 = private unnamed_addr constant [20 x i8] c"OMPOrderedDirective\00", align 1
@.str.163 = private unnamed_addr constant [19 x i8] c"OMPAtomicDirective\00", align 1
@.str.164 = private unnamed_addr constant [20 x i8] c"OMPForSimdDirective\00", align 1
@.str.165 = private unnamed_addr constant [28 x i8] c"OMPParallelForSimdDirective\00", align 1
@.str.166 = private unnamed_addr constant [19 x i8] c"OMPTargetDirective\00", align 1
@.str.167 = private unnamed_addr constant [18 x i8] c"OMPTeamsDirective\00", align 1
@.str.168 = private unnamed_addr constant [22 x i8] c"OMPTaskgroupDirective\00", align 1
@.str.169 = private unnamed_addr constant [30 x i8] c"OMPCancellationPointDirective\00", align 1
@.str.170 = private unnamed_addr constant [19 x i8] c"OMPCancelDirective\00", align 1
@.str.171 = private unnamed_addr constant [23 x i8] c"OMPTargetDataDirective\00", align 1
@.str.172 = private unnamed_addr constant [21 x i8] c"OMPTaskLoopDirective\00", align 1
@.str.173 = private unnamed_addr constant [25 x i8] c"OMPTaskLoopSimdDirective\00", align 1
@.str.174 = private unnamed_addr constant [23 x i8] c"OMPDistributeDirective\00", align 1
@.str.175 = private unnamed_addr constant [28 x i8] c"OMPTargetEnterDataDirective\00", align 1
@.str.176 = private unnamed_addr constant [27 x i8] c"OMPTargetExitDataDirective\00", align 1
@.str.177 = private unnamed_addr constant [27 x i8] c"OMPTargetParallelDirective\00", align 1
@.str.178 = private unnamed_addr constant [30 x i8] c"OMPTargetParallelForDirective\00", align 1
@.str.179 = private unnamed_addr constant [25 x i8] c"OMPTargetUpdateDirective\00", align 1
@.str.180 = private unnamed_addr constant [34 x i8] c"OMPDistributeParallelForDirective\00", align 1
@.str.181 = private unnamed_addr constant [38 x i8] c"OMPDistributeParallelForSimdDirective\00", align 1
@.str.182 = private unnamed_addr constant [27 x i8] c"OMPDistributeSimdDirective\00", align 1
@.str.183 = private unnamed_addr constant [34 x i8] c"OMPTargetParallelForSimdDirective\00", align 1
@.str.184 = private unnamed_addr constant [23 x i8] c"OMPTargetSimdDirective\00", align 1
@.str.185 = private unnamed_addr constant [28 x i8] c"OMPTeamsDistributeDirective\00", align 1
@.str.186 = private unnamed_addr constant [32 x i8] c"OMPTeamsDistributeSimdDirective\00", align 1
@.str.187 = private unnamed_addr constant [43 x i8] c"OMPTeamsDistributeParallelForSimdDirective\00", align 1
@.str.188 = private unnamed_addr constant [39 x i8] c"OMPTeamsDistributeParallelForDirective\00", align 1
@.str.189 = private unnamed_addr constant [24 x i8] c"OMPTargetTeamsDirective\00", align 1
@.str.190 = private unnamed_addr constant [34 x i8] c"OMPTargetTeamsDistributeDirective\00", align 1
@.str.191 = private unnamed_addr constant [45 x i8] c"OMPTargetTeamsDistributeParallelForDirective\00", align 1
@.str.192 = private unnamed_addr constant [49 x i8] c"OMPTargetTeamsDistributeParallelForSimdDirective\00", align 1
@.str.193 = private unnamed_addr constant [38 x i8] c"OMPTargetTeamsDistributeSimdDirective\00", align 1
@.str.194 = private unnamed_addr constant [19 x i8] c"BuiltinBitCastExpr\00", align 1
@.str.195 = private unnamed_addr constant [9 x i8] c"LastStmt\00", align 1
@.str.196 = private unnamed_addr constant [16 x i8] c"TranslationUnit\00", align 1
@.str.197 = private unnamed_addr constant [10 x i8] c"FirstAttr\00", align 1
@.str.198 = private unnamed_addr constant [14 x i8] c"UnexposedAttr\00", align 1
@.str.199 = private unnamed_addr constant [13 x i8] c"IBActionAttr\00", align 1
@.str.200 = private unnamed_addr constant [13 x i8] c"IBOutletAttr\00", align 1
@.str.201 = private unnamed_addr constant [23 x i8] c"IBOutletCollectionAttr\00", align 1
@.str.202 = private unnamed_addr constant [13 x i8] c"CXXFinalAttr\00", align 1
@.str.203 = private unnamed_addr constant [16 x i8] c"CXXOverrideAttr\00", align 1
@.str.204 = private unnamed_addr constant [13 x i8] c"AnnotateAttr\00", align 1
@.str.205 = private unnamed_addr constant [13 x i8] c"AsmLabelAttr\00", align 1
@.str.206 = private unnamed_addr constant [11 x i8] c"PackedAttr\00", align 1
@.str.207 = private unnamed_addr constant [9 x i8] c"PureAttr\00", align 1
@.str.208 = private unnamed_addr constant [10 x i8] c"ConstAttr\00", align 1
@.str.209 = private unnamed_addr constant [16 x i8] c"NoDuplicateAttr\00", align 1
@.str.210 = private unnamed_addr constant [17 x i8] c"CUDAConstantAttr\00", align 1
@.str.211 = private unnamed_addr constant [15 x i8] c"CUDADeviceAttr\00", align 1
@.str.212 = private unnamed_addr constant [15 x i8] c"CUDAGlobalAttr\00", align 1
@.str.213 = private unnamed_addr constant [13 x i8] c"CUDAHostAttr\00", align 1
@.str.214 = private unnamed_addr constant [15 x i8] c"CUDASharedAttr\00", align 1
@.str.215 = private unnamed_addr constant [15 x i8] c"VisibilityAttr\00", align 1
@.str.216 = private unnamed_addr constant [10 x i8] c"DLLExport\00", align 1
@.str.217 = private unnamed_addr constant [10 x i8] c"DLLImport\00", align 1
@.str.218 = private unnamed_addr constant [18 x i8] c"NSReturnsRetained\00", align 1
@.str.219 = private unnamed_addr constant [21 x i8] c"NSReturnsNotRetained\00", align 1
@.str.220 = private unnamed_addr constant [22 x i8] c"NSReturnsAutoreleased\00", align 1
@.str.221 = private unnamed_addr constant [15 x i8] c"NSConsumesSelf\00", align 1
@.str.222 = private unnamed_addr constant [11 x i8] c"NSConsumed\00", align 1
@.str.223 = private unnamed_addr constant [14 x i8] c"ObjCException\00", align 1
@.str.224 = private unnamed_addr constant [13 x i8] c"ObjCNSObject\00", align 1
@.str.225 = private unnamed_addr constant [21 x i8] c"ObjCIndependentClass\00", align 1
@.str.226 = private unnamed_addr constant [20 x i8] c"ObjCPreciseLifetime\00", align 1
@.str.227 = private unnamed_addr constant [24 x i8] c"ObjCReturnsInnerPointer\00", align 1
@.str.228 = private unnamed_addr constant [18 x i8] c"ObjCRequiresSuper\00", align 1
@.str.229 = private unnamed_addr constant [14 x i8] c"ObjCRootClass\00", align 1
@.str.230 = private unnamed_addr constant [26 x i8] c"ObjCSubclassingRestricted\00", align 1
@.str.231 = private unnamed_addr constant [25 x i8] c"ObjCExplicitProtocolImpl\00", align 1
@.str.232 = private unnamed_addr constant [26 x i8] c"ObjCDesignatedInitializer\00", align 1
@.str.233 = private unnamed_addr constant [19 x i8] c"ObjCRuntimeVisible\00", align 1
@.str.234 = private unnamed_addr constant [12 x i8] c"ObjCBoxable\00", align 1
@.str.235 = private unnamed_addr constant [9 x i8] c"FlagEnum\00", align 1
@.str.236 = private unnamed_addr constant [15 x i8] c"ConvergentAttr\00", align 1
@.str.237 = private unnamed_addr constant [15 x i8] c"WarnUnusedAttr\00", align 1
@.str.238 = private unnamed_addr constant [21 x i8] c"WarnUnusedResultAttr\00", align 1
@.str.239 = private unnamed_addr constant [12 x i8] c"AlignedAttr\00", align 1
@.str.240 = private unnamed_addr constant [9 x i8] c"LastAttr\00", align 1
@.str.241 = private unnamed_addr constant [23 x i8] c"PreprocessingDirective\00", align 1
@.str.242 = private unnamed_addr constant [16 x i8] c"MacroDefinition\00", align 1
@.str.243 = private unnamed_addr constant [15 x i8] c"MacroExpansion\00", align 1
@.str.244 = private unnamed_addr constant [19 x i8] c"MacroInstantiation\00", align 1
@.str.245 = private unnamed_addr constant [19 x i8] c"InclusionDirective\00", align 1
@.str.246 = private unnamed_addr constant [19 x i8] c"FirstPreprocessing\00", align 1
@.str.247 = private unnamed_addr constant [18 x i8] c"LastPreprocessing\00", align 1
@.str.248 = private unnamed_addr constant [17 x i8] c"ModuleImportDecl\00", align 1
@.str.249 = private unnamed_addr constant [22 x i8] c"TypeAliasTemplateDecl\00", align 1
@.str.250 = private unnamed_addr constant [13 x i8] c"StaticAssert\00", align 1
@.str.251 = private unnamed_addr constant [11 x i8] c"FriendDecl\00", align 1
@.str.252 = private unnamed_addr constant [15 x i8] c"FirstExtraDecl\00", align 1
@.str.253 = private unnamed_addr constant [14 x i8] c"LastExtraDecl\00", align 1
@.str.254 = private unnamed_addr constant [18 x i8] c"OverloadCandidate\00", align 1
@.rtti.260 = private unnamed_addr constant %TypeInfoEnum { %TypeInfo { i32 10, i64 4 }, %string { i64 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.255, i32 0, i32 0) }, %TypeInfoInt* @.rtti.258, { i64, %TypeInfoEnumVariant* } { i64 255, [255 x %TypeInfoEnumVariant]* @.rtti.259 } }, align 8
@.str.255 = private unnamed_addr constant [13 x i8] c"CXCursorKind\00", align 1
@.rtti.261 = private unnamed_addr constant %TypeInfoString { %TypeInfo { i32 12, i64 16 } }, align 8
@.rtti.262 = private unnamed_addr constant [5 x %TypeInfoEnumVariant] [%TypeInfoEnumVariant { %string { i64 7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.256, i32 0, i32 0) }, i64 0 }, %TypeInfoEnumVariant { %string { i64 7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.257, i32 0, i32 0) }, i64 1 }, %TypeInfoEnumVariant { %string { i64 7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.258, i32 0, i32 0) }, i64 2 }, %TypeInfoEnumVariant { %string { i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.259, i32 0, i32 0) }, i64 3 }, %TypeInfoEnumVariant { %string { i64 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.260, i32 0, i32 0) }, i64 4 }], align 8
@.str.256 = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@.str.257 = private unnamed_addr constant [8 x i8] c"Failure\00", align 1
@.str.258 = private unnamed_addr constant [8 x i8] c"Crashed\00", align 1
@.str.259 = private unnamed_addr constant [17 x i8] c"InvalidArguments\00", align 1
@.str.260 = private unnamed_addr constant [13 x i8] c"ASTReadError\00", align 1
@.rtti.263 = private unnamed_addr constant %TypeInfoEnum { %TypeInfo { i32 10, i64 4 }, %string { i64 11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.261, i32 0, i32 0) }, %TypeInfoInt* @.rtti.258, { i64, %TypeInfoEnumVariant* } { i64 5, [5 x %TypeInfoEnumVariant]* @.rtti.262 } }, align 8
@.str.261 = private unnamed_addr constant [12 x i8] c"CXErrorCode\00", align 1
@.str.262 = private unnamed_addr constant [16 x i8] c"test/testfile.h\00", align 1
@test_file = private global %string { i64 15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.262, i32 0, i32 0) }, align 8
@.str.263 = private unnamed_addr constant [10 x i8] c"Error: %\0A\00", align 1
@.str.264 = private unnamed_addr constant [21 x i8] c"// generated from %\0A\00", align 1
@.str.265 = private unnamed_addr constant [13 x i8] c"struct decl\0A\00", align 1
@.str.266 = private unnamed_addr constant [11 x i8] c"enum decl\0A\00", align 1
@.str.267 = private unnamed_addr constant [10 x i8] c"var decl\0A\00", align 1
@.str.268 = private unnamed_addr constant [10 x i8] c"% :: fn (\00", align 1
@.str.269 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.270 = private unnamed_addr constant [12 x i8] c"% #extern;\0A\00", align 1
@.str.271 = private unnamed_addr constant [14 x i8] c"variant decl\0A\00", align 1
@.str.272 = private unnamed_addr constant [13 x i8] c"member decl\0A\00", align 1
@.str.273 = private unnamed_addr constant [14 x i8] c"typedef decl\0A\00", align 1
@.str.274 = private unnamed_addr constant [12 x i8] c"param decl\0A\00", align 1
@.str.275 = private unnamed_addr constant [16 x i8] c"Unknown decl %\0A\00", align 1
@.str.276 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.277 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.278 = private unnamed_addr constant [3 x i8] c"u8\00", align 1
@.str.279 = private unnamed_addr constant [4 x i8] c"u16\00", align 1
@.str.280 = private unnamed_addr constant [4 x i8] c"u32\00", align 1
@.str.281 = private unnamed_addr constant [4 x i8] c"u64\00", align 1
@.str.282 = private unnamed_addr constant [3 x i8] c"s8\00", align 1
@.str.283 = private unnamed_addr constant [4 x i8] c"s16\00", align 1
@.str.284 = private unnamed_addr constant [4 x i8] c"s32\00", align 1
@.str.285 = private unnamed_addr constant [4 x i8] c"s64\00", align 1
@.str.286 = private unnamed_addr constant [4 x i8] c"f32\00", align 1
@.str.287 = private unnamed_addr constant [4 x i8] c"f64\00", align 1
@.str.288 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.289 = private unnamed_addr constant [15 x i8] c"<INVALID_TYPE>\00", align 1
@.str.290 = private unnamed_addr constant [6 x i8] c"MacOS\00", align 1
@OS_NAME = private constant %string { i64 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.290, i32 0, i32 0) }, align 8
@OS_STDIN = private constant i32 0, align 4
@OS_STDOUT = private constant i32 1, align 4
@OS_STDERR = private constant i32 2, align 4
@PRINT_MAX_LENGTH = private constant i32 4096, align 4
@.str.291 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.292 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.293 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.294 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.295 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.296 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.297 = private unnamed_addr constant [3 x i8] c" {\00", align 1
@.str.298 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.299 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.300 = private unnamed_addr constant [9 x i8] c"[<null>]\00", align 1
@.str.301 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.302 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.303 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.304 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str.305 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.306 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.307 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.308 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.309 = private unnamed_addr constant [9 x i8] c"struct {\00", align 1
@.str.310 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.311 = private unnamed_addr constant [5 x i8] c"fn (\00", align 1
@.str.312 = private unnamed_addr constant [6 x i8] c"enum \00", align 1
@.str.313 = private unnamed_addr constant [5 x i8] c" :: \00", align 1
@.str.314 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.315 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.316 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.317 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@0 = private constant [16 x i8] c"0123456789abcdef", align 1
@_context = private global %_Context { i8* (i64)* @malloc, void (i8*)* @free }, align 8
@S8_MIN = private constant i8 -128, align 1
@S8_MAX = private constant i8 127, align 1
@S16_MIN = private constant i16 -32768, align 2
@S16_MAX = private constant i16 32767, align 2
@S32_MIN = private constant i32 -2147483648, align 4
@S32_MAX = private constant i32 2147483647, align 4
@S64_MIN = private constant i64 -9223372036854775808, align 8
@S64_MAX = private constant i64 9223372036854775807, align 8
@U8_MIN = private constant i8 0, align 1
@U8_MAX = private constant i8 -1, align 1
@U16_MIN = private constant i16 0, align 2
@U16_MAX = private constant i16 -1, align 2
@U32_MIN = private constant i32 0, align 4
@U32_MAX = private constant i32 -1, align 4
@U64_MIN = private constant i64 0, align 8
@U64_MAX = private constant i64 -1, align 8
@PI = private constant double 0x400921FB54442D18, align 8
@RAND_MAX = private constant i32 2147483647, align 4

; Function Attrs: nounwind
declare void @llvm.debugtrap() #0

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

define i32 @main() {
entry:
  %.ret.0 = alloca i32, align 4
  %idx = alloca i8*, align 8
  %tu = alloca i8*, align 8
  %result = alloca i32, align 4
  %cursor = alloca %CXCursor, align 8
  %.vargs.arr.189 = alloca [1 x %Any], align 8
  %.vargs.190 = alloca { i64, %Any* }, align 8
  %.any.191 = alloca %Any, align 8
  %.vargs.arr.206 = alloca [1 x %Any], align 8
  %.vargs.207 = alloca { i64, %Any* }, align 8
  %.any.208 = alloca %Any, align 8
  %0 = call i8* @clang_createIndex(i32 0, i32 0)
  store i8* %0, i8** %idx
  store i8* null, i8** %tu
  %1 = load i8*, i8** getelementptr inbounds (%string, %string* @test_file, i32 0, i32 1), align 8
  %2 = load i8*, i8** %idx, align 8
  %3 = call i32 @clang_parseTranslationUnit2(i8* %2, i8* %1, i8* null, i32 0, %CXUnsavedFile* null, i32 0, i32 0, i8** %tu)
  store i32 %3, i32* %result
  %4 = load i32, i32* %result, align 4
  %5 = icmp ne i32 %4, 0
  %6 = alloca %string
  %7 = alloca { i64, %Any* }
  %8 = alloca %CXCursor
  %9 = alloca %string
  %10 = alloca { i64, %Any* }
  %11 = alloca %CXCursor
  br i1 %5, label %if_then, label %if_else

if_then:                                          ; preds = %entry
  %12 = getelementptr inbounds %Any, %Any* %.any.191, i32 0, i32 0
  store %TypeInfo* getelementptr inbounds (%TypeInfoEnum, %TypeInfoEnum* @.rtti.263, i32 0, i32 0), %TypeInfo** %12
  %13 = getelementptr inbounds %Any, %Any* %.any.191, i32 0, i32 1
  %14 = bitcast i32* %result to i8*
  store i8* %14, i8** %13
  %15 = load %Any, %Any* %.any.191, align 8
  %16 = getelementptr [1 x %Any], [1 x %Any]* %.vargs.arr.189, i64 0, i64 0
  store %Any %15, %Any* %16
  %17 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %.vargs.190, i32 0, i32 0
  store i64 1, i64* %17
  %18 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %.vargs.190, i32 0, i32 1
  %19 = bitcast [1 x %Any]* %.vargs.arr.189 to %Any*
  store %Any* %19, %Any** %18
  %20 = load { i64, %Any* }, { i64, %Any* }* %.vargs.190
  store %string { i64 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.263, i32 0, i32 0) }, %string* %6
  %21 = bitcast %string* %6 to { i64, i64 }*
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 0
  %23 = load i64, i64* %22
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 1
  %25 = load i64, i64* %24
  store { i64, %Any* } %20, { i64, %Any* }* %7
  %26 = bitcast { i64, %Any* }* %7 to { i64, i64 }*
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 0
  %28 = load i64, i64* %27
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 1
  %30 = load i64, i64* %29
  %31 = call i32 @eprint(i64 %23, i64 %25, i64 %28, i64 %30)
  call void @abort()
  br label %if_cont

if_else:                                          ; preds = %entry
  br label %if_cont

exit:                                             ; preds = %if_cont
  %32 = load i32, i32* %.ret.0, align 4
  ret i32 %32

if_cont:                                          ; preds = %if_else, %if_then
  %33 = load i8*, i8** %tu, align 8
  %34 = load %CXCursor, %CXCursor* %8
  call void @clang_getTranslationUnitCursor(%CXCursor* sret %8, i8* %33)
  store %CXCursor %34, %CXCursor* %cursor
  %35 = getelementptr inbounds %Any, %Any* %.any.208, i32 0, i32 0
  store %TypeInfo* getelementptr inbounds (%TypeInfoString, %TypeInfoString* @.rtti.261, i32 0, i32 0), %TypeInfo** %35
  %36 = getelementptr inbounds %Any, %Any* %.any.208, i32 0, i32 1
  store i8* bitcast (%string* @test_file to i8*), i8** %36
  %37 = load %Any, %Any* %.any.208, align 8
  %38 = getelementptr [1 x %Any], [1 x %Any]* %.vargs.arr.206, i64 0, i64 0
  store %Any %37, %Any* %38
  %39 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %.vargs.207, i32 0, i32 0
  store i64 1, i64* %39
  %40 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %.vargs.207, i32 0, i32 1
  %41 = bitcast [1 x %Any]* %.vargs.arr.206 to %Any*
  store %Any* %41, %Any** %40
  %42 = load { i64, %Any* }, { i64, %Any* }* %.vargs.207
  store %string { i64 20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.264, i32 0, i32 0) }, %string* %9
  %43 = bitcast %string* %9 to { i64, i64 }*
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %43, i32 0, i32 0
  %45 = load i64, i64* %44
  %46 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %43, i32 0, i32 1
  %47 = load i64, i64* %46
  store { i64, %Any* } %42, { i64, %Any* }* %10
  %48 = bitcast { i64, %Any* }* %10 to { i64, i64 }*
  %49 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %48, i32 0, i32 0
  %50 = load i64, i64* %49
  %51 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %48, i32 0, i32 1
  %52 = load i64, i64* %51
  %53 = call i32 @print(i64 %45, i64 %47, i64 %50, i64 %52)
  %54 = load %CXCursor, %CXCursor* %cursor, align 8
  store %CXCursor %54, %CXCursor* %11
  %55 = call i32 @clang_visitChildren(%CXCursor* byval %11, i32 (%CXCursor*, %CXCursor*, i8*)* @visitor, i8* null)
  store i32 %55, i32* %.ret.0, align 4
  %56 = load i8*, i8** %tu, align 8
  call void @clang_disposeTranslationUnit(i8* %56)
  %57 = load i8*, i8** %idx, align 8
  call void @clang_disposeIndex(i8* %57)
  br label %exit
}

declare i8* @clang_createIndex(i32, i32)

declare i32 @clang_parseTranslationUnit2(i8*, i8*, i8*, i32, %CXUnsavedFile*, i32, i32, i8**)

define i32 @eprint(i64, i64, i64, i64) {
entry:
  %.ret.5 = alloca i32, align 4
  %args = alloca { i64, %Any* }, align 8
  %format = alloca %string, align 8
  %buf = alloca [4096 x i8], align 1
  %tmp = alloca { i64, i8* }, align 8
  %tmp2 = alloca { i64, %Any* }, align 8
  %w = alloca i32, align 4
  %4 = bitcast { i64, %Any* }* %args to { i64, i64 }*
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %2, i64* %5
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %3, i64* %6
  %7 = bitcast %string* %format to { i64, i64 }*
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  store i64 %0, i64* %8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  store i64 %1, i64* %9
  %10 = bitcast [4096 x i8]* %buf to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 4096, i1 false)
  %11 = getelementptr [4096 x i8], [4096 x i8]* %buf, i64 0, i64 0
  %12 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %tmp, i32 0, i32 0
  store i64 4096, i64* %12
  %13 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %tmp, i32 0, i32 1
  store i8* %11, i8** %13
  %14 = load { i64, i8* }, { i64, i8* }* %tmp
  %15 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %args, i32 0, i32 1
  %16 = load %Any*, %Any** %15, align 8
  %17 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %args, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %tmp2, i32 0, i32 0
  store i64 %18, i64* %19
  %20 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %tmp2, i32 0, i32 1
  store %Any* %16, %Any** %20
  %21 = load { i64, %Any* }, { i64, %Any* }* %tmp2
  %22 = load { i64, %Any* }, { i64, %Any* }* %tmp2, align 8
  %23 = load %string, %string* %format, align 8
  %24 = alloca { i64, i8* }
  %25 = load { i64, i8* }, { i64, i8* }* %tmp, align 8
  store { i64, i8* } %25, { i64, i8* }* %24
  %26 = bitcast { i64, i8* }* %24 to { i64, i64 }*
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 0
  %28 = load i64, i64* %27
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 1
  %30 = alloca %string
  %31 = load i64, i64* %29
  store %string %23, %string* %30
  %32 = bitcast %string* %30 to { i64, i64 }*
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 0
  %34 = load i64, i64* %33
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 1
  %36 = alloca { i64, %Any* }
  %37 = load i64, i64* %35
  store { i64, %Any* } %22, { i64, %Any* }* %36
  %38 = bitcast { i64, %Any* }* %36 to { i64, i64 }*
  %39 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %38, i32 0, i32 0
  %40 = load i64, i64* %39
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %38, i32 0, i32 1
  %42 = load i64, i64* %41
  %43 = call i32 @print_impl(i64 %28, i64 %31, i64 %34, i64 %37, i64 %40, i64 %42)
  store i32 %43, i32* %w
  %44 = load i32, i32* %w, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr [4096 x i8], [4096 x i8]* %buf, i64 0, i64 0
  %47 = call i32 @__os_write(i32 2, i8* %46, i64 %45)
  %48 = load i32, i32* %w, align 4
  store i32 %48, i32* %.ret.5, align 4
  br label %exit

exit:                                             ; preds = %entry
  %49 = load i32, i32* %.ret.5, align 4
  ret i32 %49
}

declare void @abort()

declare void @clang_getTranslationUnitCursor(%CXCursor* noalias sret, i8*)

define i32 @print(i64, i64, i64, i64) {
entry:
  %.ret.4 = alloca i32, align 4
  %args = alloca { i64, %Any* }, align 8
  %format = alloca %string, align 8
  %buf = alloca [4096 x i8], align 1
  %tmp = alloca { i64, i8* }, align 8
  %tmp2 = alloca { i64, %Any* }, align 8
  %w = alloca i32, align 4
  %4 = bitcast { i64, %Any* }* %args to { i64, i64 }*
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %2, i64* %5
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %3, i64* %6
  %7 = bitcast %string* %format to { i64, i64 }*
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  store i64 %0, i64* %8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  store i64 %1, i64* %9
  %10 = bitcast [4096 x i8]* %buf to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 4096, i1 false)
  %11 = getelementptr [4096 x i8], [4096 x i8]* %buf, i64 0, i64 0
  %12 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %tmp, i32 0, i32 0
  store i64 4096, i64* %12
  %13 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %tmp, i32 0, i32 1
  store i8* %11, i8** %13
  %14 = load { i64, i8* }, { i64, i8* }* %tmp
  %15 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %args, i32 0, i32 1
  %16 = load %Any*, %Any** %15, align 8
  %17 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %args, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %tmp2, i32 0, i32 0
  store i64 %18, i64* %19
  %20 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %tmp2, i32 0, i32 1
  store %Any* %16, %Any** %20
  %21 = load { i64, %Any* }, { i64, %Any* }* %tmp2
  %22 = load { i64, %Any* }, { i64, %Any* }* %tmp2, align 8
  %23 = load %string, %string* %format, align 8
  %24 = alloca { i64, i8* }
  %25 = load { i64, i8* }, { i64, i8* }* %tmp, align 8
  store { i64, i8* } %25, { i64, i8* }* %24
  %26 = bitcast { i64, i8* }* %24 to { i64, i64 }*
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 0
  %28 = load i64, i64* %27
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 1
  %30 = alloca %string
  %31 = load i64, i64* %29
  store %string %23, %string* %30
  %32 = bitcast %string* %30 to { i64, i64 }*
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 0
  %34 = load i64, i64* %33
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 1
  %36 = alloca { i64, %Any* }
  %37 = load i64, i64* %35
  store { i64, %Any* } %22, { i64, %Any* }* %36
  %38 = bitcast { i64, %Any* }* %36 to { i64, i64 }*
  %39 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %38, i32 0, i32 0
  %40 = load i64, i64* %39
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %38, i32 0, i32 1
  %42 = load i64, i64* %41
  %43 = call i32 @print_impl(i64 %28, i64 %31, i64 %34, i64 %37, i64 %40, i64 %42)
  store i32 %43, i32* %w
  %44 = load i32, i32* %w, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr [4096 x i8], [4096 x i8]* %buf, i64 0, i64 0
  %47 = call i32 @__os_write(i32 1, i8* %46, i64 %45)
  %48 = load i32, i32* %w, align 4
  store i32 %48, i32* %.ret.4, align 4
  br label %exit

exit:                                             ; preds = %entry
  %49 = load i32, i32* %.ret.4, align 4
  ret i32 %49
}

declare i32 @clang_visitChildren(%CXCursor* byval, i32 (%CXCursor*, %CXCursor*, i8*)*, i8*)

define i32 @visitor(%CXCursor* byval, %CXCursor* byval, i8*) {
entry:
  %.ret.1 = alloca i32, align 4
  %client_data = alloca i8*, align 8
  %parent = alloca %CXCursor, align 8
  %cursor = alloca %CXCursor, align 8
  %tmp = alloca %string, align 8
  %type = alloca %CXType, align 8
  %type_name = alloca %string, align 8
  %.vargs.212 = alloca { i64, %Any* }, align 8
  %.vargs.213 = alloca { i64, %Any* }, align 8
  %.vargs.214 = alloca { i64, %Any* }, align 8
  %.vargs.arr.215 = alloca [1 x %Any], align 8
  %.vargs.216 = alloca { i64, %Any* }, align 8
  %.any.217 = alloca %Any, align 8
  %.vargs.223 = alloca { i64, %Any* }, align 8
  %.vargs.arr.224 = alloca [1 x %Any], align 8
  %.vargs.225 = alloca { i64, %Any* }, align 8
  %.any.226 = alloca %Any, align 8
  %.vargs.227 = alloca { i64, %Any* }, align 8
  %.vargs.228 = alloca { i64, %Any* }, align 8
  %.vargs.229 = alloca { i64, %Any* }, align 8
  %.vargs.230 = alloca { i64, %Any* }, align 8
  %.vargs.arr.231 = alloca [1 x %Any], align 8
  %.vargs.232 = alloca { i64, %Any* }, align 8
  %.any.233 = alloca %Any, align 8
  store i8* %2, i8** %client_data
  %3 = load %CXCursor, %CXCursor* %1
  store %CXCursor %3, %CXCursor* %parent
  %4 = load %CXCursor, %CXCursor* %0
  store %CXCursor %4, %CXCursor* %cursor
  %5 = getelementptr inbounds %CXCursor, %CXCursor* %cursor, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 2
  %8 = alloca %string
  %9 = alloca { i64, %Any* }
  %10 = alloca %string
  %11 = alloca { i64, %Any* }
  %12 = alloca %string
  %13 = alloca { i64, %Any* }
  %14 = alloca %CXString
  %15 = alloca %CXCursor
  %16 = alloca %CXString
  %17 = alloca %string
  %18 = alloca { i64, %Any* }
  %19 = alloca %CXCursor
  %20 = alloca %string
  %21 = alloca { i64, %Any* }
  %22 = alloca %CXType
  %23 = alloca %CXCursor
  %24 = alloca %string
  %25 = alloca %string
  %26 = alloca { i64, %Any* }
  %27 = alloca %string
  %28 = alloca { i64, %Any* }
  %29 = alloca %string
  %30 = alloca { i64, %Any* }
  %31 = alloca %string
  %32 = alloca { i64, %Any* }
  %33 = alloca %string
  %34 = alloca { i64, %Any* }
  %35 = alloca %string
  %36 = alloca { i64, %Any* }
  br i1 %7, label %if_then, label %if_else

if_then:                                          ; preds = %entry
  %37 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %.vargs.212, i32 0, i32 0
  store i64 0, i64* %37
  %38 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %.vargs.212, i32 0, i32 1
  store %Any* null, %Any** %38
  %39 = load { i64, %Any* }, { i64, %Any* }* %.vargs.212
  store %string { i64 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.265, i32 0, i32 0) }, %string* %8
  %40 = bitcast %string* %8 to { i64, i64 }*
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %40, i32 0, i32 0
  %42 = load i64, i64* %41
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %40, i32 0, i32 1
  %44 = load i64, i64* %43
  store { i64, %Any* } %39, { i64, %Any* }* %9
  %45 = bitcast { i64, %Any* }* %9 to { i64, i64 }*
  %46 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %45, i32 0, i32 0
  %47 = load i64, i64* %46
  %48 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %45, i32 0, i32 1
  %49 = load i64, i64* %48
  %50 = call i32 @print(i64 %42, i64 %44, i64 %47, i64 %49)
  br label %if_cont

if_else:                                          ; preds = %entry
  %51 = getelementptr inbounds %CXCursor, %CXCursor* %cursor, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 5
  br i1 %53, label %if_then1, label %if_else2

exit:                                             ; preds = %if_cont
  %54 = load i32, i32* %.ret.1, align 4
  ret i32 %54

if_cont:                                          ; preds = %if_cont3, %if_then
  store i32 1, i32* %.ret.1, align 4
  br label %exit

if_then1:                                         ; preds = %if_else
  %55 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %.vargs.213, i32 0, i32 0
  store i64 0, i64* %55
  %56 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %.vargs.213, i32 0, i32 1
  store %Any* null, %Any** %56
  %57 = load { i64, %Any* }, { i64, %Any* }* %.vargs.213
  store %string { i64 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.266, i32 0, i32 0) }, %string* %10
  %58 = bitcast %string* %10 to { i64, i64 }*
  %59 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %58, i32 0, i32 0
  %60 = load i64, i64* %59
  %61 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %58, i32 0, i32 1
  %62 = load i64, i64* %61
  store { i64, %Any* } %57, { i64, %Any* }* %11
  %63 = bitcast { i64, %Any* }* %11 to { i64, i64 }*
  %64 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %63, i32 0, i32 0
  %65 = load i64, i64* %64
  %66 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %63, i32 0, i32 1
  %67 = load i64, i64* %66
  %68 = call i32 @print(i64 %60, i64 %62, i64 %65, i64 %67)
  br label %if_cont3

if_else2:                                         ; preds = %if_else
  %69 = getelementptr inbounds %CXCursor, %CXCursor* %cursor, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 9
  br i1 %71, label %if_then4, label %if_else5

if_cont3:                                         ; preds = %if_cont6, %if_then1
  br label %if_cont

if_then4:                                         ; preds = %if_else2
  %72 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %.vargs.214, i32 0, i32 0
  store i64 0, i64* %72
  %73 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %.vargs.214, i32 0, i32 1
  store %Any* null, %Any** %73
  %74 = load { i64, %Any* }, { i64, %Any* }* %.vargs.214
  store %string { i64 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.267, i32 0, i32 0) }, %string* %12
  %75 = bitcast %string* %12 to { i64, i64 }*
  %76 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %75, i32 0, i32 0
  %77 = load i64, i64* %76
  %78 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %75, i32 0, i32 1
  %79 = load i64, i64* %78
  store { i64, %Any* } %74, { i64, %Any* }* %13
  %80 = bitcast { i64, %Any* }* %13 to { i64, i64 }*
  %81 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %80, i32 0, i32 0
  %82 = load i64, i64* %81
  %83 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %80, i32 0, i32 1
  %84 = load i64, i64* %83
  %85 = call i32 @print(i64 %77, i64 %79, i64 %82, i64 %84)
  br label %if_cont6

if_else5:                                         ; preds = %if_else2
  %86 = getelementptr inbounds %CXCursor, %CXCursor* %cursor, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 8
  br i1 %88, label %if_then7, label %if_else8

if_cont6:                                         ; preds = %if_cont9, %if_then4
  br label %if_cont3

if_then7:                                         ; preds = %if_else5
  %89 = load %CXCursor, %CXCursor* %cursor, align 8
  %90 = load %CXString, %CXString* %14
  store %CXCursor %89, %CXCursor* %15
  call void @clang_getCursorSpelling(%CXString* sret %14, %CXCursor* byval %15)
  store %CXString %90, %CXString* %16
  %91 = bitcast %CXString* %16 to { i64, i32 }*
  %92 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %91, i32 0, i32 0
  %93 = load i64, i64* %92
  %94 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %91, i32 0, i32 1
  %95 = load i32, i32* %94
  call void @get_string(i64 %93, i32 %95, %string* %tmp)
  %96 = getelementptr inbounds %Any, %Any* %.any.217, i32 0, i32 0
  store %TypeInfo* getelementptr inbounds (%TypeInfoString, %TypeInfoString* @.rtti.261, i32 0, i32 0), %TypeInfo** %96
  %97 = getelementptr inbounds %Any, %Any* %.any.217, i32 0, i32 1
  %98 = bitcast %string* %tmp to i8*
  store i8* %98, i8** %97
  %99 = load %Any, %Any* %.any.217, align 8
  %100 = getelementptr [1 x %Any], [1 x %Any]* %.vargs.arr.215, i64 0, i64 0
  store %Any %99, %Any* %100
  %101 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %.vargs.216, i32 0, i32 0
  store i64 1, i64* %101
  %102 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %.vargs.216, i32 0, i32 1
  %103 = bitcast [1 x %Any]* %.vargs.arr.215 to %Any*
  store %Any* %103, %Any** %102
  %104 = load { i64, %Any* }, { i64, %Any* }* %.vargs.216
  store %string { i64 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.268, i32 0, i32 0) }, %string* %17
  %105 = bitcast %string* %17 to { i64, i64 }*
  %106 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %105, i32 0, i32 0
  %107 = load i64, i64* %106
  %108 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %105, i32 0, i32 1
  %109 = load i64, i64* %108
  store { i64, %Any* } %104, { i64, %Any* }* %18
  %110 = bitcast { i64, %Any* }* %18 to { i64, i64 }*
  %111 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %110, i32 0, i32 0
  %112 = load i64, i64* %111
  %113 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %110, i32 0, i32 1
  %114 = load i64, i64* %113
  %115 = call i32 @print(i64 %107, i64 %109, i64 %112, i64 %114)
  %116 = load %CXCursor, %CXCursor* %cursor, align 8
  store %CXCursor %116, %CXCursor* %19
  %117 = call i32 @clang_visitChildren(%CXCursor* byval %19, i32 (%CXCursor*, %CXCursor*, i8*)* @visitor, i8* null)
  %118 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %.vargs.223, i32 0, i32 0
  store i64 0, i64* %118
  %119 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %.vargs.223, i32 0, i32 1
  store %Any* null, %Any** %119
  %120 = load { i64, %Any* }, { i64, %Any* }* %.vargs.223
  store %string { i64 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.269, i32 0, i32 0) }, %string* %20
  %121 = bitcast %string* %20 to { i64, i64 }*
  %122 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %121, i32 0, i32 0
  %123 = load i64, i64* %122
  %124 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %121, i32 0, i32 1
  %125 = load i64, i64* %124
  store { i64, %Any* } %120, { i64, %Any* }* %21
  %126 = bitcast { i64, %Any* }* %21 to { i64, i64 }*
  %127 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %126, i32 0, i32 0
  %128 = load i64, i64* %127
  %129 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %126, i32 0, i32 1
  %130 = load i64, i64* %129
  %131 = call i32 @print(i64 %123, i64 %125, i64 %128, i64 %130)
  %132 = load %CXCursor, %CXCursor* %cursor, align 8
  %133 = load %CXType, %CXType* %22
  store %CXCursor %132, %CXCursor* %23
  call void @clang_getCursorResultType(%CXType* sret %22, %CXCursor* byval %23)
  store %CXType %133, %CXType* %type
  %134 = load %string, %string* %24
  call void @get_type(%string* sret %24, %CXType* %type)
  store %string %134, %string* %type_name
  %135 = getelementptr inbounds %Any, %Any* %.any.226, i32 0, i32 0
  store %TypeInfo* getelementptr inbounds (%TypeInfoString, %TypeInfoString* @.rtti.261, i32 0, i32 0), %TypeInfo** %135
  %136 = getelementptr inbounds %Any, %Any* %.any.226, i32 0, i32 1
  %137 = bitcast %string* %type_name to i8*
  store i8* %137, i8** %136
  %138 = load %Any, %Any* %.any.226, align 8
  %139 = getelementptr [1 x %Any], [1 x %Any]* %.vargs.arr.224, i64 0, i64 0
  store %Any %138, %Any* %139
  %140 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %.vargs.225, i32 0, i32 0
  store i64 1, i64* %140
  %141 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %.vargs.225, i32 0, i32 1
  %142 = bitcast [1 x %Any]* %.vargs.arr.224 to %Any*
  store %Any* %142, %Any** %141
  %143 = load { i64, %Any* }, { i64, %Any* }* %.vargs.225
  store %string { i64 11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.270, i32 0, i32 0) }, %string* %25
  %144 = bitcast %string* %25 to { i64, i64 }*
  %145 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %144, i32 0, i32 0
  %146 = load i64, i64* %145
  %147 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %144, i32 0, i32 1
  %148 = load i64, i64* %147
  store { i64, %Any* } %143, { i64, %Any* }* %26
  %149 = bitcast { i64, %Any* }* %26 to { i64, i64 }*
  %150 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %149, i32 0, i32 0
  %151 = load i64, i64* %150
  %152 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %149, i32 0, i32 1
  %153 = load i64, i64* %152
  %154 = call i32 @print(i64 %146, i64 %148, i64 %151, i64 %153)
  br label %if_cont9

if_else8:                                         ; preds = %if_else5
  %155 = getelementptr inbounds %CXCursor, %CXCursor* %cursor, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 7
  br i1 %157, label %if_then10, label %if_else11

if_cont9:                                         ; preds = %if_cont12, %if_then7
  br label %if_cont6

if_then10:                                        ; preds = %if_else8
  %158 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %.vargs.227, i32 0, i32 0
  store i64 0, i64* %158
  %159 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %.vargs.227, i32 0, i32 1
  store %Any* null, %Any** %159
  %160 = load { i64, %Any* }, { i64, %Any* }* %.vargs.227
  store %string { i64 13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.271, i32 0, i32 0) }, %string* %27
  %161 = bitcast %string* %27 to { i64, i64 }*
  %162 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %161, i32 0, i32 0
  %163 = load i64, i64* %162
  %164 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %161, i32 0, i32 1
  %165 = load i64, i64* %164
  store { i64, %Any* } %160, { i64, %Any* }* %28
  %166 = bitcast { i64, %Any* }* %28 to { i64, i64 }*
  %167 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %166, i32 0, i32 0
  %168 = load i64, i64* %167
  %169 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %166, i32 0, i32 1
  %170 = load i64, i64* %169
  %171 = call i32 @print(i64 %163, i64 %165, i64 %168, i64 %170)
  br label %if_cont12

if_else11:                                        ; preds = %if_else8
  %172 = getelementptr inbounds %CXCursor, %CXCursor* %cursor, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp eq i32 %173, 6
  br i1 %174, label %if_then13, label %if_else14

if_cont12:                                        ; preds = %if_cont15, %if_then10
  br label %if_cont9

if_then13:                                        ; preds = %if_else11
  %175 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %.vargs.228, i32 0, i32 0
  store i64 0, i64* %175
  %176 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %.vargs.228, i32 0, i32 1
  store %Any* null, %Any** %176
  %177 = load { i64, %Any* }, { i64, %Any* }* %.vargs.228
  store %string { i64 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.272, i32 0, i32 0) }, %string* %29
  %178 = bitcast %string* %29 to { i64, i64 }*
  %179 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %178, i32 0, i32 0
  %180 = load i64, i64* %179
  %181 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %178, i32 0, i32 1
  %182 = load i64, i64* %181
  store { i64, %Any* } %177, { i64, %Any* }* %30
  %183 = bitcast { i64, %Any* }* %30 to { i64, i64 }*
  %184 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %183, i32 0, i32 0
  %185 = load i64, i64* %184
  %186 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %183, i32 0, i32 1
  %187 = load i64, i64* %186
  %188 = call i32 @print(i64 %180, i64 %182, i64 %185, i64 %187)
  br label %if_cont15

if_else14:                                        ; preds = %if_else11
  %189 = getelementptr inbounds %CXCursor, %CXCursor* %cursor, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %190, 20
  br i1 %191, label %if_then16, label %if_else17

if_cont15:                                        ; preds = %if_cont18, %if_then13
  br label %if_cont12

if_then16:                                        ; preds = %if_else14
  %192 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %.vargs.229, i32 0, i32 0
  store i64 0, i64* %192
  %193 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %.vargs.229, i32 0, i32 1
  store %Any* null, %Any** %193
  %194 = load { i64, %Any* }, { i64, %Any* }* %.vargs.229
  store %string { i64 13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.273, i32 0, i32 0) }, %string* %31
  %195 = bitcast %string* %31 to { i64, i64 }*
  %196 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %195, i32 0, i32 0
  %197 = load i64, i64* %196
  %198 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %195, i32 0, i32 1
  %199 = load i64, i64* %198
  store { i64, %Any* } %194, { i64, %Any* }* %32
  %200 = bitcast { i64, %Any* }* %32 to { i64, i64 }*
  %201 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %200, i32 0, i32 0
  %202 = load i64, i64* %201
  %203 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %200, i32 0, i32 1
  %204 = load i64, i64* %203
  %205 = call i32 @print(i64 %197, i64 %199, i64 %202, i64 %204)
  br label %if_cont18

if_else17:                                        ; preds = %if_else14
  %206 = getelementptr inbounds %CXCursor, %CXCursor* %cursor, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = icmp eq i32 %207, 10
  br i1 %208, label %if_then19, label %if_else20

if_cont18:                                        ; preds = %if_cont21, %if_then16
  br label %if_cont15

if_then19:                                        ; preds = %if_else17
  %209 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %.vargs.230, i32 0, i32 0
  store i64 0, i64* %209
  %210 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %.vargs.230, i32 0, i32 1
  store %Any* null, %Any** %210
  %211 = load { i64, %Any* }, { i64, %Any* }* %.vargs.230
  store %string { i64 11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.274, i32 0, i32 0) }, %string* %33
  %212 = bitcast %string* %33 to { i64, i64 }*
  %213 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %212, i32 0, i32 0
  %214 = load i64, i64* %213
  %215 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %212, i32 0, i32 1
  %216 = load i64, i64* %215
  store { i64, %Any* } %211, { i64, %Any* }* %34
  %217 = bitcast { i64, %Any* }* %34 to { i64, i64 }*
  %218 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %217, i32 0, i32 0
  %219 = load i64, i64* %218
  %220 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %217, i32 0, i32 1
  %221 = load i64, i64* %220
  %222 = call i32 @print(i64 %214, i64 %216, i64 %219, i64 %221)
  br label %if_cont21

if_else20:                                        ; preds = %if_else17
  %223 = getelementptr inbounds %CXCursor, %CXCursor* %cursor, i32 0, i32 0
  %224 = getelementptr inbounds %Any, %Any* %.any.233, i32 0, i32 0
  store %TypeInfo* getelementptr inbounds (%TypeInfoEnum, %TypeInfoEnum* @.rtti.260, i32 0, i32 0), %TypeInfo** %224
  %225 = getelementptr inbounds %Any, %Any* %.any.233, i32 0, i32 1
  %226 = bitcast i32* %223 to i8*
  store i8* %226, i8** %225
  %227 = load %Any, %Any* %.any.233, align 8
  %228 = getelementptr [1 x %Any], [1 x %Any]* %.vargs.arr.231, i64 0, i64 0
  store %Any %227, %Any* %228
  %229 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %.vargs.232, i32 0, i32 0
  store i64 1, i64* %229
  %230 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %.vargs.232, i32 0, i32 1
  %231 = bitcast [1 x %Any]* %.vargs.arr.231 to %Any*
  store %Any* %231, %Any** %230
  %232 = load { i64, %Any* }, { i64, %Any* }* %.vargs.232
  store %string { i64 15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.275, i32 0, i32 0) }, %string* %35
  %233 = bitcast %string* %35 to { i64, i64 }*
  %234 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %233, i32 0, i32 0
  %235 = load i64, i64* %234
  %236 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %233, i32 0, i32 1
  %237 = load i64, i64* %236
  store { i64, %Any* } %232, { i64, %Any* }* %36
  %238 = bitcast { i64, %Any* }* %36 to { i64, i64 }*
  %239 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %238, i32 0, i32 0
  %240 = load i64, i64* %239
  %241 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %238, i32 0, i32 1
  %242 = load i64, i64* %241
  %243 = call i32 @print(i64 %235, i64 %237, i64 %240, i64 %242)
  br label %if_cont21

if_cont21:                                        ; preds = %if_else20, %if_then19
  br label %if_cont18
}

declare void @clang_disposeTranslationUnit(i8*)

declare void @clang_disposeIndex(i8*)

declare void @clang_getCursorSpelling(%CXString* noalias sret, %CXCursor* byval)

define void @get_string(i64, i32, %string*) {
entry:
  %tmp_out = alloca %string*, align 8
  %cxstring = alloca %CXString, align 8
  store %string* %2, %string** %tmp_out
  %3 = bitcast %CXString* %cxstring to { i64, i32 }*
  %4 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %3, i32 0, i32 0
  store i64 %0, i64* %4
  %5 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %3, i32 0, i32 1
  store i32 %1, i32* %5
  %6 = getelementptr inbounds %CXString, %CXString* %cxstring, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = load %string*, %string** %tmp_out, align 8
  %9 = getelementptr inbounds %string, %string* %8, i32 0, i32 1
  store i8* %7, i8** %9, align 8
  %10 = getelementptr inbounds %CXString, %CXString* %cxstring, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i64 @strlen(i8* %11)
  %13 = load %string*, %string** %tmp_out, align 8
  %14 = getelementptr inbounds %string, %string* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

declare void @clang_getCursorResultType(%CXType* noalias sret, %CXCursor* byval)

define void @get_type(%string* noalias sret, %CXType*) {
entry:
  %.ret.2 = alloca %string, align 8
  %type = alloca %CXType*, align 8
  store %CXType* %1, %CXType** %type
  %2 = load %CXType*, %CXType** %type, align 8
  %3 = getelementptr inbounds %CXType, %CXType* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %if_then, label %if_else

if_then:                                          ; preds = %entry
  store %string { i64 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.276, i32 0, i32 0) }, %string* %.ret.2, align 8
  br label %exit

if_else:                                          ; preds = %entry
  br label %if_cont

exit:                                             ; preds = %if_cont57, %if_then55, %if_then52, %if_then49, %if_then46, %if_then43, %if_then40, %if_then37, %if_then34, %if_then31, %if_then28, %if_then25, %if_then22, %if_then19, %if_then16, %if_then13, %if_then10, %if_then7, %if_then4, %if_then1, %if_then
  %6 = load %string, %string* %.ret.2, align 8
  store %string %6, %string* %0
  ret void

if_cont:                                          ; preds = %if_else
  %7 = load %CXType*, %CXType** %type, align 8
  %8 = getelementptr inbounds %CXType, %CXType* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %if_then1, label %if_else2

if_then1:                                         ; preds = %if_cont
  store %string { i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.277, i32 0, i32 0) }, %string* %.ret.2, align 8
  br label %exit

if_else2:                                         ; preds = %if_cont
  br label %if_cont3

if_cont3:                                         ; preds = %if_else2
  %11 = load %CXType*, %CXType** %type, align 8
  %12 = getelementptr inbounds %CXType, %CXType* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %if_then4, label %if_else5

if_then4:                                         ; preds = %if_cont3
  store %string { i64 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.278, i32 0, i32 0) }, %string* %.ret.2, align 8
  br label %exit

if_else5:                                         ; preds = %if_cont3
  br label %if_cont6

if_cont6:                                         ; preds = %if_else5
  %15 = load %CXType*, %CXType** %type, align 8
  %16 = getelementptr inbounds %CXType, %CXType* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 5
  br i1 %18, label %if_then7, label %if_else8

if_then7:                                         ; preds = %if_cont6
  store %string { i64 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.278, i32 0, i32 0) }, %string* %.ret.2, align 8
  br label %exit

if_else8:                                         ; preds = %if_cont6
  br label %if_cont9

if_cont9:                                         ; preds = %if_else8
  %19 = load %CXType*, %CXType** %type, align 8
  %20 = getelementptr inbounds %CXType, %CXType* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 6
  br i1 %22, label %if_then10, label %if_else11

if_then10:                                        ; preds = %if_cont9
  store %string { i64 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.279, i32 0, i32 0) }, %string* %.ret.2, align 8
  br label %exit

if_else11:                                        ; preds = %if_cont9
  br label %if_cont12

if_cont12:                                        ; preds = %if_else11
  %23 = load %CXType*, %CXType** %type, align 8
  %24 = getelementptr inbounds %CXType, %CXType* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 7
  br i1 %26, label %if_then13, label %if_else14

if_then13:                                        ; preds = %if_cont12
  store %string { i64 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.280, i32 0, i32 0) }, %string* %.ret.2, align 8
  br label %exit

if_else14:                                        ; preds = %if_cont12
  br label %if_cont15

if_cont15:                                        ; preds = %if_else14
  %27 = load %CXType*, %CXType** %type, align 8
  %28 = getelementptr inbounds %CXType, %CXType* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 8
  br i1 %30, label %if_then16, label %if_else17

if_then16:                                        ; preds = %if_cont15
  store %string { i64 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.279, i32 0, i32 0) }, %string* %.ret.2, align 8
  br label %exit

if_else17:                                        ; preds = %if_cont15
  br label %if_cont18

if_cont18:                                        ; preds = %if_else17
  %31 = load %CXType*, %CXType** %type, align 8
  %32 = getelementptr inbounds %CXType, %CXType* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 9
  br i1 %34, label %if_then19, label %if_else20

if_then19:                                        ; preds = %if_cont18
  store %string { i64 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.280, i32 0, i32 0) }, %string* %.ret.2, align 8
  br label %exit

if_else20:                                        ; preds = %if_cont18
  br label %if_cont21

if_cont21:                                        ; preds = %if_else20
  %35 = load %CXType*, %CXType** %type, align 8
  %36 = getelementptr inbounds %CXType, %CXType* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 10
  br i1 %38, label %if_then22, label %if_else23

if_then22:                                        ; preds = %if_cont21
  store %string { i64 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.280, i32 0, i32 0) }, %string* %.ret.2, align 8
  br label %exit

if_else23:                                        ; preds = %if_cont21
  br label %if_cont24

if_cont24:                                        ; preds = %if_else23
  %39 = load %CXType*, %CXType** %type, align 8
  %40 = getelementptr inbounds %CXType, %CXType* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 11
  br i1 %42, label %if_then25, label %if_else26

if_then25:                                        ; preds = %if_cont24
  store %string { i64 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.281, i32 0, i32 0) }, %string* %.ret.2, align 8
  br label %exit

if_else26:                                        ; preds = %if_cont24
  br label %if_cont27

if_cont27:                                        ; preds = %if_else26
  %43 = load %CXType*, %CXType** %type, align 8
  %44 = getelementptr inbounds %CXType, %CXType* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 13
  br i1 %46, label %if_then28, label %if_else29

if_then28:                                        ; preds = %if_cont27
  store %string { i64 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.282, i32 0, i32 0) }, %string* %.ret.2, align 8
  br label %exit

if_else29:                                        ; preds = %if_cont27
  br label %if_cont30

if_cont30:                                        ; preds = %if_else29
  %47 = load %CXType*, %CXType** %type, align 8
  %48 = getelementptr inbounds %CXType, %CXType* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 14
  br i1 %50, label %if_then31, label %if_else32

if_then31:                                        ; preds = %if_cont30
  store %string { i64 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.282, i32 0, i32 0) }, %string* %.ret.2, align 8
  br label %exit

if_else32:                                        ; preds = %if_cont30
  br label %if_cont33

if_cont33:                                        ; preds = %if_else32
  %51 = load %CXType*, %CXType** %type, align 8
  %52 = getelementptr inbounds %CXType, %CXType* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 15
  br i1 %54, label %if_then34, label %if_else35

if_then34:                                        ; preds = %if_cont33
  store %string { i64 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.283, i32 0, i32 0) }, %string* %.ret.2, align 8
  br label %exit

if_else35:                                        ; preds = %if_cont33
  br label %if_cont36

if_cont36:                                        ; preds = %if_else35
  %55 = load %CXType*, %CXType** %type, align 8
  %56 = getelementptr inbounds %CXType, %CXType* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 16
  br i1 %58, label %if_then37, label %if_else38

if_then37:                                        ; preds = %if_cont36
  store %string { i64 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.283, i32 0, i32 0) }, %string* %.ret.2, align 8
  br label %exit

if_else38:                                        ; preds = %if_cont36
  br label %if_cont39

if_cont39:                                        ; preds = %if_else38
  %59 = load %CXType*, %CXType** %type, align 8
  %60 = getelementptr inbounds %CXType, %CXType* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 17
  br i1 %62, label %if_then40, label %if_else41

if_then40:                                        ; preds = %if_cont39
  store %string { i64 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.284, i32 0, i32 0) }, %string* %.ret.2, align 8
  br label %exit

if_else41:                                        ; preds = %if_cont39
  br label %if_cont42

if_cont42:                                        ; preds = %if_else41
  %63 = load %CXType*, %CXType** %type, align 8
  %64 = getelementptr inbounds %CXType, %CXType* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 18
  br i1 %66, label %if_then43, label %if_else44

if_then43:                                        ; preds = %if_cont42
  store %string { i64 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.284, i32 0, i32 0) }, %string* %.ret.2, align 8
  br label %exit

if_else44:                                        ; preds = %if_cont42
  br label %if_cont45

if_cont45:                                        ; preds = %if_else44
  %67 = load %CXType*, %CXType** %type, align 8
  %68 = getelementptr inbounds %CXType, %CXType* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 19
  br i1 %70, label %if_then46, label %if_else47

if_then46:                                        ; preds = %if_cont45
  store %string { i64 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.285, i32 0, i32 0) }, %string* %.ret.2, align 8
  br label %exit

if_else47:                                        ; preds = %if_cont45
  br label %if_cont48

if_cont48:                                        ; preds = %if_else47
  %71 = load %CXType*, %CXType** %type, align 8
  %72 = getelementptr inbounds %CXType, %CXType* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 21
  br i1 %74, label %if_then49, label %if_else50

if_then49:                                        ; preds = %if_cont48
  store %string { i64 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.286, i32 0, i32 0) }, %string* %.ret.2, align 8
  br label %exit

if_else50:                                        ; preds = %if_cont48
  br label %if_cont51

if_cont51:                                        ; preds = %if_else50
  %75 = load %CXType*, %CXType** %type, align 8
  %76 = getelementptr inbounds %CXType, %CXType* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 22
  br i1 %78, label %if_then52, label %if_else53

if_then52:                                        ; preds = %if_cont51
  store %string { i64 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.287, i32 0, i32 0) }, %string* %.ret.2, align 8
  br label %exit

if_else53:                                        ; preds = %if_cont51
  br label %if_cont54

if_cont54:                                        ; preds = %if_else53
  %79 = load %CXType*, %CXType** %type, align 8
  %80 = getelementptr inbounds %CXType, %CXType* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 24
  br i1 %82, label %if_then55, label %if_else56

if_then55:                                        ; preds = %if_cont54
  store %string { i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.288, i32 0, i32 0) }, %string* %.ret.2, align 8
  br label %exit

if_else56:                                        ; preds = %if_cont54
  br label %if_cont57

if_cont57:                                        ; preds = %if_else56
  store %string { i64 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.289, i32 0, i32 0) }, %string* %.ret.2, align 8
  br label %exit
}

declare i64 @strlen(i8*)

declare i32 @write(i32, i8*, i64)

define i32 @__os_write(i32, i8*, i64) {
entry:
  %.ret.3 = alloca i32, align 4
  %count = alloca i64, align 8
  %buf = alloca i8*, align 8
  %fd = alloca i32, align 4
  store i64 %2, i64* %count
  store i8* %1, i8** %buf
  store i32 %0, i32* %fd
  %3 = load i64, i64* %count, align 8
  %4 = load i8*, i8** %buf, align 8
  %5 = load i32, i32* %fd, align 4
  %6 = call i32 @write(i32 %5, i8* %4, i64 %3)
  store i32 %6, i32* %.ret.3, align 4
  br label %exit

exit:                                             ; preds = %entry
  %7 = load i32, i32* %.ret.3, align 4
  ret i32 %7
}

define i32 @print_impl(i64, i64, i64, i64, i64, i64) {
entry:
  %.ret.7 = alloca i32, align 4
  %args = alloca { i64, %Any* }, align 8
  %format = alloca %string, align 8
  %buf = alloca { i64, i8* }, align 8
  %cur = alloca i32, align 4
  %argi = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca i8, align 1
  %6 = bitcast { i64, %Any* }* %args to { i64, i64 }*
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 0
  store i64 %4, i64* %7
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 1
  store i64 %5, i64* %8
  %9 = bitcast %string* %format to { i64, i64 }*
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  store i64 %2, i64* %10
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  store i64 %3, i64* %11
  %12 = bitcast { i64, i8* }* %buf to { i64, i64 }*
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  store i64 %0, i64* %13
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  store i64 %1, i64* %14
  store i32 0, i32* %cur
  store i32 0, i32* %argi
  store i32 0, i32* %i
  %15 = alloca { i64, i8* }
  %16 = alloca { i64, i8* }
  %17 = alloca { i64, i8* }
  %18 = alloca %string
  br label %loop_decide

loop_decide:                                      ; preds = %loop_increment, %entry
  %19 = getelementptr inbounds %string, %string* %format, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %i, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp slt i64 %22, %20
  br i1 %23, label %loop_body, label %loop_continue

exit:                                             ; preds = %loop_continue
  %24 = load i32, i32* %.ret.7, align 4
  ret i32 %24

loop_increment:                                   ; preds = %if_cont
  %25 = load i32, i32* %i, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %i, align 4
  br label %loop_decide

loop_body:                                        ; preds = %loop_decide
  %27 = load i32, i32* %i, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %string, %string* %format, i32 0, i32 1
  %30 = load i8*, i8** %29
  %31 = getelementptr inbounds i8, i8* %30, i64 %28
  %32 = load i8, i8* %31, align 1
  store i8 %32, i8* %c
  %33 = load i8, i8* %c, align 1
  %34 = icmp eq i8 %33, 37
  br i1 %34, label %if_then, label %if_else

loop_continue:                                    ; preds = %loop_decide
  %35 = load i32, i32* %cur, align 4
  store i32 %35, i32* %.ret.7, align 4
  br label %exit

if_then:                                          ; preds = %loop_body
  %36 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %args, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %argi, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %39, %37
  br i1 %40, label %if_then1, label %if_else2

if_else:                                          ; preds = %loop_body
  %41 = load i8, i8* %c, align 1
  %42 = load i32, i32* %cur, align 4
  %43 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %43, { i64, i8* }* %15
  %44 = bitcast { i64, i8* }* %15 to { i64, i64 }*
  %45 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %44, i32 0, i32 0
  %46 = load i64, i64* %45
  %47 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %44, i32 0, i32 1
  %48 = load i64, i64* %47
  %49 = call i32 @print_char(i64 %46, i64 %48, i32 %42, i8 %41)
  store i32 %49, i32* %cur, align 4
  br label %if_cont

if_then1:                                         ; preds = %if_then
  %50 = load i32, i32* %argi, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %args, i32 0, i32 1
  %53 = load %Any*, %Any** %52
  %54 = getelementptr inbounds %Any, %Any* %53, i64 %51
  %55 = load i32, i32* %cur, align 4
  %56 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %56, { i64, i8* }* %16
  %57 = bitcast { i64, i8* }* %16 to { i64, i64 }*
  %58 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %57, i32 0, i32 0
  %59 = load i64, i64* %58
  %60 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %57, i32 0, i32 1
  %61 = load i64, i64* %60
  %62 = call i32 @print_any(i64 %59, i64 %61, i32 %55, %Any* %54)
  store i32 %62, i32* %cur, align 4
  %63 = load i32, i32* %argi, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %argi, align 4
  br label %if_cont3

if_else2:                                         ; preds = %if_then
  %65 = load i32, i32* %cur, align 4
  %66 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %66, { i64, i8* }* %17
  %67 = bitcast { i64, i8* }* %17 to { i64, i64 }*
  %68 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %67, i32 0, i32 0
  %69 = load i64, i64* %68
  %70 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %67, i32 0, i32 1
  %71 = load i64, i64* %70
  store %string { i64 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.291, i32 0, i32 0) }, %string* %18
  %72 = bitcast %string* %18 to { i64, i64 }*
  %73 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %72, i32 0, i32 0
  %74 = load i64, i64* %73
  %75 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %72, i32 0, i32 1
  %76 = load i64, i64* %75
  %77 = call i32 @print_string(i64 %69, i64 %71, i32 %65, i64 %74, i64 %76)
  store i32 %77, i32* %cur, align 4
  br label %if_cont3

if_cont:                                          ; preds = %if_cont3, %if_else
  br label %loop_increment

if_cont3:                                         ; preds = %if_else2, %if_then1
  br label %if_cont
}

define i32 @bprint(i64, i64, i64, i64, i64, i64) {
entry:
  %.ret.6 = alloca i32, align 4
  %args = alloca { i64, %Any* }, align 8
  %format = alloca %string, align 8
  %buf = alloca { i64, i8* }, align 8
  %tmp = alloca { i64, %Any* }, align 8
  %6 = bitcast { i64, %Any* }* %args to { i64, i64 }*
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 0
  store i64 %4, i64* %7
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 1
  store i64 %5, i64* %8
  %9 = bitcast %string* %format to { i64, i64 }*
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  store i64 %2, i64* %10
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  store i64 %3, i64* %11
  %12 = bitcast { i64, i8* }* %buf to { i64, i64 }*
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  store i64 %0, i64* %13
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  store i64 %1, i64* %14
  %15 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %args, i32 0, i32 1
  %16 = load %Any*, %Any** %15, align 8
  %17 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %args, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %tmp, i32 0, i32 0
  store i64 %18, i64* %19
  %20 = getelementptr inbounds { i64, %Any* }, { i64, %Any* }* %tmp, i32 0, i32 1
  store %Any* %16, %Any** %20
  %21 = load { i64, %Any* }, { i64, %Any* }* %tmp
  %22 = load { i64, %Any* }, { i64, %Any* }* %tmp, align 8
  %23 = load %string, %string* %format, align 8
  %24 = alloca { i64, i8* }
  %25 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %25, { i64, i8* }* %24
  %26 = bitcast { i64, i8* }* %24 to { i64, i64 }*
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 0
  %28 = load i64, i64* %27
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 1
  %30 = alloca %string
  %31 = load i64, i64* %29
  store %string %23, %string* %30
  %32 = bitcast %string* %30 to { i64, i64 }*
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 0
  %34 = load i64, i64* %33
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 1
  %36 = alloca { i64, %Any* }
  %37 = load i64, i64* %35
  store { i64, %Any* } %22, { i64, %Any* }* %36
  %38 = bitcast { i64, %Any* }* %36 to { i64, i64 }*
  %39 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %38, i32 0, i32 0
  %40 = load i64, i64* %39
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %38, i32 0, i32 1
  %42 = load i64, i64* %41
  %43 = call i32 @print_impl(i64 %28, i64 %31, i64 %34, i64 %37, i64 %40, i64 %42)
  store i32 %43, i32* %.ret.6, align 4
  br label %exit

exit:                                             ; preds = %entry
  %44 = load i32, i32* %.ret.6, align 4
  ret i32 %44
}

define i32 @print_char(i64, i64, i32, i8) {
entry:
  %.ret.11 = alloca i32, align 4
  %c = alloca i8, align 1
  %cur = alloca i32, align 4
  %buf = alloca { i64, i8* }, align 8
  store i8 %3, i8* %c
  store i32 %2, i32* %cur
  %4 = bitcast { i64, i8* }* %buf to { i64, i64 }*
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %0, i64* %5
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %1, i64* %6
  %7 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %buf, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i32, i32* %cur, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp sge i64 %10, %8
  br i1 %11, label %if_then, label %if_else

if_then:                                          ; preds = %entry
  store i32 0, i32* %.ret.11, align 4
  br label %exit

if_else:                                          ; preds = %entry
  br label %if_cont

exit:                                             ; preds = %if_cont, %if_then
  %12 = load i32, i32* %.ret.11, align 4
  ret i32 %12

if_cont:                                          ; preds = %if_else
  %13 = load i8, i8* %c, align 1
  %14 = load i32, i32* %cur, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %buf, i32 0, i32 1
  %17 = load i8*, i8** %16
  %18 = getelementptr inbounds i8, i8* %17, i64 %15
  store i8 %13, i8* %18, align 1
  %19 = load i32, i32* %cur, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %.ret.11, align 4
  br label %exit
}

define i32 @print_any(i64, i64, i32, %Any*) {
entry:
  %.ret.8 = alloca i32, align 4
  %any = alloca %Any*, align 8
  %cur = alloca i32, align 4
  %buf = alloca { i64, i8* }, align 8
  %info = alloca %TypeInfoInt*, align 8
  %int = alloca i64, align 8
  %int1 = alloca i64, align 8
  %info2 = alloca %TypeInfoReal*, align 8
  %real = alloca double, align 8
  %str = alloca %string, align 8
  %info3 = alloca %TypeInfoArray*, align 8
  %elem_size = alloca i64, align 8
  %tmp = alloca %Any, align 8
  %i = alloca i64, align 8
  %info4 = alloca %TypeInfoStruct*, align 8
  %tmp5 = alloca %Any, align 8
  %i6 = alloca i32, align 4
  %member = alloca %TypeInfoStructMember, align 8
  %len = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %elem_type = alloca %TypeInfo*, align 8
  %elem_size7 = alloca i64, align 8
  %i8 = alloca i64, align 8
  %ptr9 = alloca i64, align 8
  %b = alloca i1, align 1
  %info10 = alloca %TypeInfoEnum*, align 8
  %info_base_type = alloca %TypeInfoInt*, align 8
  %value = alloca i64, align 8
  %i11 = alloca i32, align 4
  store %Any* %3, %Any** %any
  store i32 %2, i32* %cur
  %4 = bitcast { i64, i8* }* %buf to { i64, i64 }*
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %0, i64* %5
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %1, i64* %6
  %7 = load %Any*, %Any** %any, align 8
  %8 = getelementptr inbounds %Any, %Any* %7, i32 0, i32 0
  %9 = load %TypeInfo*, %TypeInfo** %8, align 8
  %10 = getelementptr inbounds %TypeInfo, %TypeInfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 3
  %13 = alloca { i64, i8* }
  %14 = alloca { i64, i8* }
  %15 = alloca %string
  %16 = alloca { i64, i8* }
  %17 = alloca { i64, i8* }
  %18 = alloca %string
  %19 = alloca { i64, i8* }
  %20 = alloca { i64, i8* }
  %21 = alloca %string
  %22 = alloca { i64, i8* }
  %23 = alloca %string
  %24 = alloca { i64, i8* }
  %25 = alloca %string
  %26 = alloca { i64, i8* }
  %27 = alloca { i64, i8* }
  %28 = alloca %string
  %29 = alloca { i64, i8* }
  %30 = alloca %string
  %31 = alloca { i64, i8* }
  %32 = alloca %string
  %33 = alloca { i64, i8* }
  %34 = alloca %string
  %35 = alloca { i64, i8* }
  %36 = alloca %string
  %37 = alloca { i64, i8* }
  %38 = alloca %string
  %39 = alloca { i64, i8* }
  %40 = alloca { i64, i8* }
  %41 = alloca %string
  %42 = alloca { i64, i8* }
  %43 = alloca %string
  %44 = alloca { i64, i8* }
  %45 = alloca %string
  %46 = alloca { i64, i8* }
  %47 = alloca %string
  %48 = alloca { i64, i8* }
  %49 = alloca %string
  %50 = alloca { i64, i8* }
  %51 = alloca %string
  %52 = alloca { i64, i8* }
  %53 = alloca { i64, i8* }
  %54 = alloca %string
  %55 = alloca { i64, i8* }
  %56 = alloca %string
  %57 = alloca { i64, i8* }
  %58 = alloca { i64, i8* }
  %59 = alloca %string
  %60 = alloca { i64, i8* }
  %61 = alloca %string
  %62 = alloca { i64, i8* }
  %63 = alloca %string
  %64 = alloca { i64, i8* }
  %65 = alloca %string
  %66 = alloca { i64, i8* }
  %67 = alloca %string
  %68 = alloca { i64, i8* }
  %69 = alloca %string
  %70 = alloca { i64, i8* }
  %71 = alloca { i64, i8* }
  %72 = alloca { i64, i8* }
  %73 = alloca %string
  br i1 %12, label %if_then, label %if_else

if_then:                                          ; preds = %entry
  %74 = load %Any*, %Any** %any, align 8
  %75 = getelementptr inbounds %Any, %Any* %74, i32 0, i32 0
  %76 = load %TypeInfo*, %TypeInfo** %75, align 8
  %77 = bitcast %TypeInfo* %76 to %TypeInfoInt*
  store %TypeInfoInt* %77, %TypeInfoInt** %info
  %78 = load %TypeInfoInt*, %TypeInfoInt** %info, align 8
  %79 = getelementptr inbounds %TypeInfoInt, %TypeInfoInt* %78, i32 0, i32 2
  %80 = load i1, i1* %79, align 1
  br i1 %80, label %if_then12, label %if_else13

if_else:                                          ; preds = %entry
  %81 = load %Any*, %Any** %any, align 8
  %82 = getelementptr inbounds %Any, %Any* %81, i32 0, i32 0
  %83 = load %TypeInfo*, %TypeInfo** %82, align 8
  %84 = getelementptr inbounds %TypeInfo, %TypeInfo* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 4
  br i1 %86, label %if_then14, label %if_else15

exit:                                             ; preds = %if_else81, %if_then80, %if_cont91, %if_then86, %if_else74, %if_then73, %if_cont72, %if_then67, %if_cont60, %if_then54, %if_then45, %loop_continue49, %loop_continue, %if_then29, %if_then22, %if_cont25, %if_cont19, %if_else13, %if_cont
  %87 = load i32, i32* %.ret.8, align 4
  ret i32 %87

if_then12:                                        ; preds = %if_then
  %88 = load %TypeInfoInt*, %TypeInfoInt** %info, align 8
  %89 = getelementptr inbounds %TypeInfoInt, %TypeInfoInt* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %Any*, %Any** %any, align 8
  %92 = getelementptr inbounds %Any, %Any* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @s64_from_u8_ptr(i8* %93, i32 %90)
  store i64 %94, i64* %int
  %95 = load i64, i64* %int, align 8
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %if_then16, label %if_else17

if_else13:                                        ; preds = %if_then
  %97 = load %TypeInfoInt*, %TypeInfoInt** %info, align 8
  %98 = getelementptr inbounds %TypeInfoInt, %TypeInfoInt* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %Any*, %Any** %any, align 8
  %101 = getelementptr inbounds %Any, %Any* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 @u64_from_u8_ptr(i8* %102, i32 %99)
  store i64 %103, i64* %int1
  %104 = load i64, i64* %int1, align 8
  %105 = load i32, i32* %cur, align 4
  %106 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %106, { i64, i8* }* %13
  %107 = bitcast { i64, i8* }* %13 to { i64, i64 }*
  %108 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %107, i32 0, i32 0
  %109 = load i64, i64* %108
  %110 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %107, i32 0, i32 1
  %111 = load i64, i64* %110
  %112 = call i32 @print_u64(i64 %109, i64 %111, i32 %105, i64 %104)
  store i32 %112, i32* %.ret.8, align 4
  br label %exit

if_then14:                                        ; preds = %if_else
  %113 = load %Any*, %Any** %any, align 8
  %114 = getelementptr inbounds %Any, %Any* %113, i32 0, i32 0
  %115 = load %TypeInfo*, %TypeInfo** %114, align 8
  %116 = bitcast %TypeInfo* %115 to %TypeInfoReal*
  store %TypeInfoReal* %116, %TypeInfoReal** %info2
  %117 = load %TypeInfoReal*, %TypeInfoReal** %info2, align 8
  %118 = getelementptr inbounds %TypeInfoReal, %TypeInfoReal* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %Any*, %Any** %any, align 8
  %121 = getelementptr inbounds %Any, %Any* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = call double @f64_from_u8_ptr(i8* %122, i32 %119)
  store double %123, double* %real
  %124 = load double, double* %real, align 8
  %125 = fcmp olt double %124, 0.000000e+00
  br i1 %125, label %if_then20, label %if_else21

if_else15:                                        ; preds = %if_else
  %126 = load %Any*, %Any** %any, align 8
  %127 = getelementptr inbounds %Any, %Any* %126, i32 0, i32 0
  %128 = load %TypeInfo*, %TypeInfo** %127, align 8
  %129 = getelementptr inbounds %TypeInfo, %TypeInfo* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 12
  br i1 %131, label %if_then22, label %if_else23

if_cont:                                          ; preds = %if_cont24, %if_cont18
  %132 = load i32, i32* %cur, align 4
  store i32 %132, i32* %.ret.8, align 4
  br label %exit

if_then16:                                        ; preds = %if_then12
  %133 = load i32, i32* %cur, align 4
  %134 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %134, { i64, i8* }* %14
  %135 = bitcast { i64, i8* }* %14 to { i64, i64 }*
  %136 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %135, i32 0, i32 0
  %137 = load i64, i64* %136
  %138 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %135, i32 0, i32 1
  %139 = load i64, i64* %138
  store %string { i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.292, i32 0, i32 0) }, %string* %15
  %140 = bitcast %string* %15 to { i64, i64 }*
  %141 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %140, i32 0, i32 0
  %142 = load i64, i64* %141
  %143 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %140, i32 0, i32 1
  %144 = load i64, i64* %143
  %145 = call i32 @print_string(i64 %137, i64 %139, i32 %133, i64 %142, i64 %144)
  store i32 %145, i32* %cur, align 4
  %146 = load i64, i64* %int, align 8
  %147 = sub i64 0, %146
  store i64 %147, i64* %int, align 8
  br label %if_cont19

if_else17:                                        ; preds = %if_then12
  br label %if_cont19

if_cont18:                                        ; No predecessors!
  br label %if_cont

if_cont19:                                        ; preds = %if_else17, %if_then16
  %148 = load i64, i64* %int, align 8
  %149 = load i32, i32* %cur, align 4
  %150 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %150, { i64, i8* }* %16
  %151 = bitcast { i64, i8* }* %16 to { i64, i64 }*
  %152 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %151, i32 0, i32 0
  %153 = load i64, i64* %152
  %154 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %151, i32 0, i32 1
  %155 = load i64, i64* %154
  %156 = call i32 @print_u64(i64 %153, i64 %155, i32 %149, i64 %148)
  store i32 %156, i32* %.ret.8, align 4
  br label %exit

if_then20:                                        ; preds = %if_then14
  %157 = load i32, i32* %cur, align 4
  %158 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %158, { i64, i8* }* %17
  %159 = bitcast { i64, i8* }* %17 to { i64, i64 }*
  %160 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %159, i32 0, i32 0
  %161 = load i64, i64* %160
  %162 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %159, i32 0, i32 1
  %163 = load i64, i64* %162
  store %string { i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.292, i32 0, i32 0) }, %string* %18
  %164 = bitcast %string* %18 to { i64, i64 }*
  %165 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %164, i32 0, i32 0
  %166 = load i64, i64* %165
  %167 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %164, i32 0, i32 1
  %168 = load i64, i64* %167
  %169 = call i32 @print_string(i64 %161, i64 %163, i32 %157, i64 %166, i64 %168)
  store i32 %169, i32* %cur, align 4
  %170 = load double, double* %real, align 8
  %171 = fsub double -0.000000e+00, %170
  store double %171, double* %real, align 8
  br label %if_cont25

if_else21:                                        ; preds = %if_then14
  br label %if_cont25

if_then22:                                        ; preds = %if_else15
  %172 = load %Any*, %Any** %any, align 8
  %173 = getelementptr inbounds %Any, %Any* %172, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = bitcast i8* %174 to %string*
  %176 = load %string, %string* %175, align 8
  store %string %176, %string* %str
  %177 = load %string, %string* %str, align 8
  %178 = load i32, i32* %cur, align 4
  %179 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %179, { i64, i8* }* %20
  %180 = bitcast { i64, i8* }* %20 to { i64, i64 }*
  %181 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %180, i32 0, i32 0
  %182 = load i64, i64* %181
  %183 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %180, i32 0, i32 1
  %184 = load i64, i64* %183
  store %string %177, %string* %21
  %185 = bitcast %string* %21 to { i64, i64 }*
  %186 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %185, i32 0, i32 0
  %187 = load i64, i64* %186
  %188 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %185, i32 0, i32 1
  %189 = load i64, i64* %188
  %190 = call i32 @print_string(i64 %182, i64 %184, i32 %178, i64 %187, i64 %189)
  store i32 %190, i32* %.ret.8, align 4
  br label %exit

if_else23:                                        ; preds = %if_else15
  %191 = load %Any*, %Any** %any, align 8
  %192 = getelementptr inbounds %Any, %Any* %191, i32 0, i32 0
  %193 = load %TypeInfo*, %TypeInfo** %192, align 8
  %194 = getelementptr inbounds %TypeInfo, %TypeInfo* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %195, 8
  br i1 %196, label %if_then26, label %if_else27

if_cont24:                                        ; preds = %if_cont28
  br label %if_cont

if_cont25:                                        ; preds = %if_else21, %if_then20
  %197 = load double, double* %real, align 8
  %198 = load i32, i32* %cur, align 4
  %199 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %199, { i64, i8* }* %19
  %200 = bitcast { i64, i8* }* %19 to { i64, i64 }*
  %201 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %200, i32 0, i32 0
  %202 = load i64, i64* %201
  %203 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %200, i32 0, i32 1
  %204 = load i64, i64* %203
  %205 = call i32 @print_f64(i64 %202, i64 %204, i32 %198, double %197)
  store i32 %205, i32* %.ret.8, align 4
  br label %exit

if_then26:                                        ; preds = %if_else23
  %206 = load %Any*, %Any** %any, align 8
  %207 = getelementptr inbounds %Any, %Any* %206, i32 0, i32 0
  %208 = load %TypeInfo*, %TypeInfo** %207, align 8
  %209 = bitcast %TypeInfo* %208 to %TypeInfoArray*
  store %TypeInfoArray* %209, %TypeInfoArray** %info3
  %210 = load %TypeInfoArray*, %TypeInfoArray** %info3, align 8
  %211 = getelementptr inbounds %TypeInfoArray, %TypeInfoArray* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %if_then29, label %if_else30

if_else27:                                        ; preds = %if_else23
  %214 = load %Any*, %Any** %any, align 8
  %215 = getelementptr inbounds %Any, %Any* %214, i32 0, i32 0
  %216 = load %TypeInfo*, %TypeInfo** %215, align 8
  %217 = getelementptr inbounds %TypeInfo, %TypeInfo* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = icmp eq i32 %218, 9
  br i1 %219, label %if_then31, label %if_else32

if_cont28:                                        ; preds = %if_cont33
  br label %if_cont24

if_then29:                                        ; preds = %if_then26
  %220 = load i32, i32* %cur, align 4
  %221 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %221, { i64, i8* }* %22
  %222 = bitcast { i64, i8* }* %22 to { i64, i64 }*
  %223 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %222, i32 0, i32 0
  %224 = load i64, i64* %223
  %225 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %222, i32 0, i32 1
  %226 = load i64, i64* %225
  store %string { i64 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.293, i32 0, i32 0) }, %string* %23
  %227 = bitcast %string* %23 to { i64, i64 }*
  %228 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %227, i32 0, i32 0
  %229 = load i64, i64* %228
  %230 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %227, i32 0, i32 1
  %231 = load i64, i64* %230
  %232 = call i32 @print_string(i64 %224, i64 %226, i32 %220, i64 %229, i64 %231)
  store i32 %232, i32* %.ret.8, align 4
  br label %exit

if_else30:                                        ; preds = %if_then26
  br label %if_cont34

if_then31:                                        ; preds = %if_else27
  %233 = load %Any*, %Any** %any, align 8
  %234 = getelementptr inbounds %Any, %Any* %233, i32 0, i32 0
  %235 = load %TypeInfo*, %TypeInfo** %234, align 8
  %236 = bitcast %TypeInfo* %235 to %TypeInfoStruct*
  store %TypeInfoStruct* %236, %TypeInfoStruct** %info4
  %237 = load %TypeInfoStruct*, %TypeInfoStruct** %info4, align 8
  %238 = getelementptr inbounds %TypeInfoStruct, %TypeInfoStruct* %237, i32 0, i32 3
  %239 = load i1, i1* %238, align 1
  %240 = xor i1 %239, true
  br i1 %240, label %if_then38, label %if_else39

if_else32:                                        ; preds = %if_else27
  %241 = load %Any*, %Any** %any, align 8
  %242 = getelementptr inbounds %Any, %Any* %241, i32 0, i32 0
  %243 = load %TypeInfo*, %TypeInfo** %242, align 8
  %244 = getelementptr inbounds %TypeInfo, %TypeInfo* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = icmp eq i32 %245, 6
  br i1 %246, label %if_then40, label %if_else41

if_cont33:                                        ; preds = %if_cont42
  br label %if_cont28

if_cont34:                                        ; preds = %if_else30
  %247 = load %TypeInfoArray*, %TypeInfoArray** %info3, align 8
  %248 = getelementptr inbounds %TypeInfoArray, %TypeInfoArray* %247, i32 0, i32 2
  %249 = load %TypeInfo*, %TypeInfo** %248, align 8
  %250 = getelementptr inbounds %TypeInfo, %TypeInfo* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  store i64 %251, i64* %elem_size
  %252 = load %TypeInfoArray*, %TypeInfoArray** %info3, align 8
  %253 = getelementptr inbounds %TypeInfoArray, %TypeInfoArray* %252, i32 0, i32 2
  %254 = load %TypeInfo*, %TypeInfo** %253, align 8
  %255 = getelementptr inbounds %Any, %Any* %tmp, i32 0, i32 0
  store %TypeInfo* %254, %TypeInfo** %255, align 8
  %256 = load i32, i32* %cur, align 4
  %257 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %257, { i64, i8* }* %24
  %258 = bitcast { i64, i8* }* %24 to { i64, i64 }*
  %259 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %258, i32 0, i32 0
  %260 = load i64, i64* %259
  %261 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %258, i32 0, i32 1
  %262 = load i64, i64* %261
  store %string { i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.294, i32 0, i32 0) }, %string* %25
  %263 = bitcast %string* %25 to { i64, i64 }*
  %264 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %263, i32 0, i32 0
  %265 = load i64, i64* %264
  %266 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %263, i32 0, i32 1
  %267 = load i64, i64* %266
  %268 = call i32 @print_string(i64 %260, i64 %262, i32 %256, i64 %265, i64 %267)
  store i32 %268, i32* %cur, align 4
  store i64 0, i64* %i
  br label %loop_decide

loop_decide:                                      ; preds = %loop_increment, %if_cont34
  %269 = load %TypeInfoArray*, %TypeInfoArray** %info3, align 8
  %270 = getelementptr inbounds %TypeInfoArray, %TypeInfoArray* %269, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* %i, align 8
  %273 = icmp ult i64 %272, %271
  br i1 %273, label %loop_body, label %loop_continue

loop_increment:                                   ; preds = %if_cont37
  %274 = load i64, i64* %i, align 8
  %275 = add i64 %274, 1
  store i64 %275, i64* %i, align 8
  br label %loop_decide

loop_body:                                        ; preds = %loop_decide
  %276 = load i64, i64* %elem_size, align 8
  %277 = load i64, i64* %i, align 8
  %278 = mul i64 %277, %276
  %279 = load %Any*, %Any** %any, align 8
  %280 = getelementptr inbounds %Any, %Any* %279, i32 0, i32 1
  %281 = load i8*, i8** %280, align 8
  %282 = ptrtoint i8* %281 to i64
  %283 = add i64 %282, %278
  %284 = inttoptr i64 %283 to i8*
  %285 = getelementptr inbounds %Any, %Any* %tmp, i32 0, i32 1
  store i8* %284, i8** %285, align 8
  %286 = load i32, i32* %cur, align 4
  %287 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %287, { i64, i8* }* %26
  %288 = bitcast { i64, i8* }* %26 to { i64, i64 }*
  %289 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %288, i32 0, i32 0
  %290 = load i64, i64* %289
  %291 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %288, i32 0, i32 1
  %292 = load i64, i64* %291
  %293 = call i32 @print_any(i64 %290, i64 %292, i32 %286, %Any* %tmp)
  store i32 %293, i32* %cur, align 4
  %294 = load %TypeInfoArray*, %TypeInfoArray** %info3, align 8
  %295 = getelementptr inbounds %TypeInfoArray, %TypeInfoArray* %294, i32 0, i32 3
  %296 = load i64, i64* %295, align 8
  %297 = sub i64 %296, 1
  %298 = load i64, i64* %i, align 8
  %299 = icmp ult i64 %298, %297
  br i1 %299, label %if_then35, label %if_else36

loop_continue:                                    ; preds = %loop_decide
  %300 = load i32, i32* %cur, align 4
  %301 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %301, { i64, i8* }* %27
  %302 = bitcast { i64, i8* }* %27 to { i64, i64 }*
  %303 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %302, i32 0, i32 0
  %304 = load i64, i64* %303
  %305 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %302, i32 0, i32 1
  %306 = load i64, i64* %305
  store %string { i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.295, i32 0, i32 0) }, %string* %28
  %307 = bitcast %string* %28 to { i64, i64 }*
  %308 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %307, i32 0, i32 0
  %309 = load i64, i64* %308
  %310 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %307, i32 0, i32 1
  %311 = load i64, i64* %310
  %312 = call i32 @print_string(i64 %304, i64 %306, i32 %300, i64 %309, i64 %311)
  store i32 %312, i32* %.ret.8, align 4
  br label %exit

if_then35:                                        ; preds = %loop_body
  %313 = load i32, i32* %cur, align 4
  %314 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %314, { i64, i8* }* %29
  %315 = bitcast { i64, i8* }* %29 to { i64, i64 }*
  %316 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %315, i32 0, i32 0
  %317 = load i64, i64* %316
  %318 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %315, i32 0, i32 1
  %319 = load i64, i64* %318
  store %string { i64 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.296, i32 0, i32 0) }, %string* %30
  %320 = bitcast %string* %30 to { i64, i64 }*
  %321 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %320, i32 0, i32 0
  %322 = load i64, i64* %321
  %323 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %320, i32 0, i32 1
  %324 = load i64, i64* %323
  %325 = call i32 @print_string(i64 %317, i64 %319, i32 %313, i64 %322, i64 %324)
  store i32 %325, i32* %cur, align 4
  br label %if_cont37

if_else36:                                        ; preds = %loop_body
  br label %if_cont37

if_cont37:                                        ; preds = %if_else36, %if_then35
  br label %loop_increment

if_then38:                                        ; preds = %if_then31
  %326 = load %TypeInfoStruct*, %TypeInfoStruct** %info4, align 8
  %327 = getelementptr inbounds %TypeInfoStruct, %TypeInfoStruct* %326, i32 0, i32 1
  %328 = load %string, %string* %327, align 8
  %329 = load i32, i32* %cur, align 4
  %330 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %330, { i64, i8* }* %31
  %331 = bitcast { i64, i8* }* %31 to { i64, i64 }*
  %332 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %331, i32 0, i32 0
  %333 = load i64, i64* %332
  %334 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %331, i32 0, i32 1
  %335 = load i64, i64* %334
  store %string %328, %string* %32
  %336 = bitcast %string* %32 to { i64, i64 }*
  %337 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %336, i32 0, i32 0
  %338 = load i64, i64* %337
  %339 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %336, i32 0, i32 1
  %340 = load i64, i64* %339
  %341 = call i32 @print_string(i64 %333, i64 %335, i32 %329, i64 %338, i64 %340)
  store i32 %341, i32* %cur, align 4
  %342 = load i32, i32* %cur, align 4
  %343 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %343, { i64, i8* }* %33
  %344 = bitcast { i64, i8* }* %33 to { i64, i64 }*
  %345 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %344, i32 0, i32 0
  %346 = load i64, i64* %345
  %347 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %344, i32 0, i32 1
  %348 = load i64, i64* %347
  store %string { i64 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.297, i32 0, i32 0) }, %string* %34
  %349 = bitcast %string* %34 to { i64, i64 }*
  %350 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %349, i32 0, i32 0
  %351 = load i64, i64* %350
  %352 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %349, i32 0, i32 1
  %353 = load i64, i64* %352
  %354 = call i32 @print_string(i64 %346, i64 %348, i32 %342, i64 %351, i64 %353)
  store i32 %354, i32* %cur, align 4
  store i32 0, i32* %i6
  br label %loop_decide43

if_else39:                                        ; preds = %if_then31
  br label %if_cont44

if_then40:                                        ; preds = %if_else32
  %355 = load %Any*, %Any** %any, align 8
  %356 = getelementptr inbounds %Any, %Any* %355, i32 0, i32 1
  %357 = load i8*, i8** %356, align 8
  %358 = bitcast i8* %357 to i64*
  %359 = load i64, i64* %358, align 8
  store i64 %359, i64* %ptr9
  %360 = load i64, i64* %ptr9, align 8
  %361 = icmp eq i64 %360, 0
  br i1 %361, label %if_then67, label %if_else68

if_else41:                                        ; preds = %if_else32
  %362 = load %Any*, %Any** %any, align 8
  %363 = getelementptr inbounds %Any, %Any* %362, i32 0, i32 0
  %364 = load %TypeInfo*, %TypeInfo** %363, align 8
  %365 = getelementptr inbounds %TypeInfo, %TypeInfo* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = icmp eq i32 %366, 7
  br i1 %367, label %if_then69, label %if_else70

if_cont42:                                        ; preds = %if_cont71
  br label %if_cont33

loop_decide43:                                    ; preds = %loop_increment47, %if_then38
  %368 = load %TypeInfoStruct*, %TypeInfoStruct** %info4, align 8
  %369 = getelementptr inbounds %TypeInfoStruct, %TypeInfoStruct* %368, i32 0, i32 2
  %370 = getelementptr inbounds { i64, %TypeInfoStructMember* }, { i64, %TypeInfoStructMember* }* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = load i32, i32* %i6, align 4
  %373 = sext i32 %372 to i64
  %374 = icmp slt i64 %373, %371
  br i1 %374, label %loop_body48, label %loop_continue49

if_cont44:                                        ; preds = %if_else39
  %375 = load %TypeInfoStruct*, %TypeInfoStruct** %info4, align 8
  %376 = getelementptr inbounds %TypeInfoStruct, %TypeInfoStruct* %375, i32 0, i32 2
  %377 = getelementptr inbounds { i64, %TypeInfoStructMember* }, { i64, %TypeInfoStructMember* }* %376, i32 0, i32 1
  %378 = load %TypeInfoStructMember*, %TypeInfoStructMember** %377
  %379 = getelementptr inbounds %TypeInfoStructMember, %TypeInfoStructMember* %378, i64 0
  %380 = getelementptr inbounds %TypeInfoStructMember, %TypeInfoStructMember* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 4
  %382 = zext i32 %381 to i64
  %383 = load %Any*, %Any** %any, align 8
  %384 = getelementptr inbounds %Any, %Any* %383, i32 0, i32 1
  %385 = load i8*, i8** %384, align 8
  %386 = ptrtoint i8* %385 to i64
  %387 = add i64 %386, %382
  %388 = inttoptr i64 %387 to i8*
  %389 = call i64 @u64_from_u8_ptr(i8* %388, i32 64)
  store i64 %389, i64* %len
  %390 = load %TypeInfoStruct*, %TypeInfoStruct** %info4, align 8
  %391 = getelementptr inbounds %TypeInfoStruct, %TypeInfoStruct* %390, i32 0, i32 2
  %392 = getelementptr inbounds { i64, %TypeInfoStructMember* }, { i64, %TypeInfoStructMember* }* %391, i32 0, i32 1
  %393 = load %TypeInfoStructMember*, %TypeInfoStructMember** %392
  %394 = getelementptr inbounds %TypeInfoStructMember, %TypeInfoStructMember* %393, i64 1
  %395 = getelementptr inbounds %TypeInfoStructMember, %TypeInfoStructMember* %394, i32 0, i32 2
  %396 = load i32, i32* %395, align 4
  %397 = zext i32 %396 to i64
  %398 = load %Any*, %Any** %any, align 8
  %399 = getelementptr inbounds %Any, %Any* %398, i32 0, i32 1
  %400 = load i8*, i8** %399, align 8
  %401 = ptrtoint i8* %400 to i64
  %402 = add i64 %401, %397
  %403 = inttoptr i64 %402 to i8*
  %404 = call i8* @ptr_from_ptr(i8* %403)
  store i8* %404, i8** %ptr
  %405 = load i64, i64* %len, align 8
  %406 = icmp eq i64 %405, 0
  br i1 %406, label %if_then45, label %if_else46

if_then45:                                        ; preds = %if_cont44
  %407 = load i32, i32* %cur, align 4
  %408 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %408, { i64, i8* }* %44
  %409 = bitcast { i64, i8* }* %44 to { i64, i64 }*
  %410 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %409, i32 0, i32 0
  %411 = load i64, i64* %410
  %412 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %409, i32 0, i32 1
  %413 = load i64, i64* %412
  store %string { i64 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.293, i32 0, i32 0) }, %string* %45
  %414 = bitcast %string* %45 to { i64, i64 }*
  %415 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %414, i32 0, i32 0
  %416 = load i64, i64* %415
  %417 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %414, i32 0, i32 1
  %418 = load i64, i64* %417
  %419 = call i32 @print_string(i64 %411, i64 %413, i32 %407, i64 %416, i64 %418)
  store i32 %419, i32* %.ret.8, align 4
  br label %exit

if_else46:                                        ; preds = %if_cont44
  br label %if_cont53

loop_increment47:                                 ; preds = %if_cont52
  %420 = load i32, i32* %i6, align 4
  %421 = add i32 %420, 1
  store i32 %421, i32* %i6, align 4
  br label %loop_decide43

loop_body48:                                      ; preds = %loop_decide43
  %422 = load %TypeInfoStruct*, %TypeInfoStruct** %info4, align 8
  %423 = getelementptr inbounds %TypeInfoStruct, %TypeInfoStruct* %422, i32 0, i32 2
  %424 = load i32, i32* %i6, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds { i64, %TypeInfoStructMember* }, { i64, %TypeInfoStructMember* }* %423, i32 0, i32 1
  %427 = load %TypeInfoStructMember*, %TypeInfoStructMember** %426
  %428 = getelementptr inbounds %TypeInfoStructMember, %TypeInfoStructMember* %427, i64 %425
  %429 = load %TypeInfoStructMember, %TypeInfoStructMember* %428, align 8
  store %TypeInfoStructMember %429, %TypeInfoStructMember* %member
  %430 = getelementptr inbounds %TypeInfoStructMember, %TypeInfoStructMember* %member, i32 0, i32 0
  %431 = load %string, %string* %430, align 8
  %432 = load i32, i32* %cur, align 4
  %433 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %433, { i64, i8* }* %35
  %434 = bitcast { i64, i8* }* %35 to { i64, i64 }*
  %435 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %434, i32 0, i32 0
  %436 = load i64, i64* %435
  %437 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %434, i32 0, i32 1
  %438 = load i64, i64* %437
  store %string %431, %string* %36
  %439 = bitcast %string* %36 to { i64, i64 }*
  %440 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %439, i32 0, i32 0
  %441 = load i64, i64* %440
  %442 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %439, i32 0, i32 1
  %443 = load i64, i64* %442
  %444 = call i32 @print_string(i64 %436, i64 %438, i32 %432, i64 %441, i64 %443)
  store i32 %444, i32* %cur, align 4
  %445 = load i32, i32* %cur, align 4
  %446 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %446, { i64, i8* }* %37
  %447 = bitcast { i64, i8* }* %37 to { i64, i64 }*
  %448 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %447, i32 0, i32 0
  %449 = load i64, i64* %448
  %450 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %447, i32 0, i32 1
  %451 = load i64, i64* %450
  store %string { i64 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.298, i32 0, i32 0) }, %string* %38
  %452 = bitcast %string* %38 to { i64, i64 }*
  %453 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %452, i32 0, i32 0
  %454 = load i64, i64* %453
  %455 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %452, i32 0, i32 1
  %456 = load i64, i64* %455
  %457 = call i32 @print_string(i64 %449, i64 %451, i32 %445, i64 %454, i64 %456)
  store i32 %457, i32* %cur, align 4
  %458 = getelementptr inbounds %TypeInfoStructMember, %TypeInfoStructMember* %member, i32 0, i32 2
  %459 = load i32, i32* %458, align 4
  %460 = zext i32 %459 to i64
  %461 = load %Any*, %Any** %any, align 8
  %462 = getelementptr inbounds %Any, %Any* %461, i32 0, i32 1
  %463 = load i8*, i8** %462, align 8
  %464 = ptrtoint i8* %463 to i64
  %465 = add i64 %464, %460
  %466 = inttoptr i64 %465 to i8*
  %467 = getelementptr inbounds %Any, %Any* %tmp5, i32 0, i32 1
  store i8* %466, i8** %467, align 8
  %468 = getelementptr inbounds %TypeInfoStructMember, %TypeInfoStructMember* %member, i32 0, i32 1
  %469 = load %TypeInfo*, %TypeInfo** %468, align 8
  %470 = getelementptr inbounds %Any, %Any* %tmp5, i32 0, i32 0
  store %TypeInfo* %469, %TypeInfo** %470, align 8
  %471 = load i32, i32* %cur, align 4
  %472 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %472, { i64, i8* }* %39
  %473 = bitcast { i64, i8* }* %39 to { i64, i64 }*
  %474 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %473, i32 0, i32 0
  %475 = load i64, i64* %474
  %476 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %473, i32 0, i32 1
  %477 = load i64, i64* %476
  %478 = call i32 @print_any(i64 %475, i64 %477, i32 %471, %Any* %tmp5)
  store i32 %478, i32* %cur, align 4
  %479 = load %TypeInfoStruct*, %TypeInfoStruct** %info4, align 8
  %480 = getelementptr inbounds %TypeInfoStruct, %TypeInfoStruct* %479, i32 0, i32 2
  %481 = getelementptr inbounds { i64, %TypeInfoStructMember* }, { i64, %TypeInfoStructMember* }* %480, i32 0, i32 0
  %482 = load i64, i64* %481, align 8
  %483 = sub i64 %482, 1
  %484 = load i32, i32* %i6, align 4
  %485 = sext i32 %484 to i64
  %486 = icmp slt i64 %485, %483
  br i1 %486, label %if_then50, label %if_else51

loop_continue49:                                  ; preds = %loop_decide43
  %487 = load i32, i32* %cur, align 4
  %488 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %488, { i64, i8* }* %40
  %489 = bitcast { i64, i8* }* %40 to { i64, i64 }*
  %490 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %489, i32 0, i32 0
  %491 = load i64, i64* %490
  %492 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %489, i32 0, i32 1
  %493 = load i64, i64* %492
  store %string { i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.299, i32 0, i32 0) }, %string* %41
  %494 = bitcast %string* %41 to { i64, i64 }*
  %495 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %494, i32 0, i32 0
  %496 = load i64, i64* %495
  %497 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %494, i32 0, i32 1
  %498 = load i64, i64* %497
  %499 = call i32 @print_string(i64 %491, i64 %493, i32 %487, i64 %496, i64 %498)
  store i32 %499, i32* %.ret.8, align 4
  br label %exit

if_then50:                                        ; preds = %loop_body48
  %500 = load i32, i32* %cur, align 4
  %501 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %501, { i64, i8* }* %42
  %502 = bitcast { i64, i8* }* %42 to { i64, i64 }*
  %503 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %502, i32 0, i32 0
  %504 = load i64, i64* %503
  %505 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %502, i32 0, i32 1
  %506 = load i64, i64* %505
  store %string { i64 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.296, i32 0, i32 0) }, %string* %43
  %507 = bitcast %string* %43 to { i64, i64 }*
  %508 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %507, i32 0, i32 0
  %509 = load i64, i64* %508
  %510 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %507, i32 0, i32 1
  %511 = load i64, i64* %510
  %512 = call i32 @print_string(i64 %504, i64 %506, i32 %500, i64 %509, i64 %511)
  store i32 %512, i32* %cur, align 4
  br label %if_cont52

if_else51:                                        ; preds = %loop_body48
  br label %if_cont52

if_cont52:                                        ; preds = %if_else51, %if_then50
  br label %loop_increment47

if_cont53:                                        ; preds = %if_else46
  %513 = load i8*, i8** %ptr, align 8
  %514 = icmp eq i8* %513, null
  br i1 %514, label %if_then54, label %if_else55

if_then54:                                        ; preds = %if_cont53
  %515 = load i32, i32* %cur, align 4
  %516 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %516, { i64, i8* }* %46
  %517 = bitcast { i64, i8* }* %46 to { i64, i64 }*
  %518 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %517, i32 0, i32 0
  %519 = load i64, i64* %518
  %520 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %517, i32 0, i32 1
  %521 = load i64, i64* %520
  store %string { i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.300, i32 0, i32 0) }, %string* %47
  %522 = bitcast %string* %47 to { i64, i64 }*
  %523 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %522, i32 0, i32 0
  %524 = load i64, i64* %523
  %525 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %522, i32 0, i32 1
  %526 = load i64, i64* %525
  %527 = call i32 @print_string(i64 %519, i64 %521, i32 %515, i64 %524, i64 %526)
  store i32 %527, i32* %.ret.8, align 4
  br label %exit

if_else55:                                        ; preds = %if_cont53
  br label %if_cont56

if_cont56:                                        ; preds = %if_else55
  %528 = load i32, i32* %cur, align 4
  %529 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %529, { i64, i8* }* %48
  %530 = bitcast { i64, i8* }* %48 to { i64, i64 }*
  %531 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %530, i32 0, i32 0
  %532 = load i64, i64* %531
  %533 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %530, i32 0, i32 1
  %534 = load i64, i64* %533
  store %string { i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.294, i32 0, i32 0) }, %string* %49
  %535 = bitcast %string* %49 to { i64, i64 }*
  %536 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %535, i32 0, i32 0
  %537 = load i64, i64* %536
  %538 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %535, i32 0, i32 1
  %539 = load i64, i64* %538
  %540 = call i32 @print_string(i64 %532, i64 %534, i32 %528, i64 %537, i64 %539)
  store i32 %540, i32* %cur, align 4
  %541 = load %TypeInfoStruct*, %TypeInfoStruct** %info4, align 8
  %542 = getelementptr inbounds %TypeInfoStruct, %TypeInfoStruct* %541, i32 0, i32 2
  %543 = getelementptr inbounds { i64, %TypeInfoStructMember* }, { i64, %TypeInfoStructMember* }* %542, i32 0, i32 1
  %544 = load %TypeInfoStructMember*, %TypeInfoStructMember** %543
  %545 = getelementptr inbounds %TypeInfoStructMember, %TypeInfoStructMember* %544, i64 1
  %546 = getelementptr inbounds %TypeInfoStructMember, %TypeInfoStructMember* %545, i32 0, i32 1
  %547 = load %TypeInfo*, %TypeInfo** %546, align 8
  %548 = bitcast %TypeInfo* %547 to %TypeInfoPtr*
  %549 = getelementptr inbounds %TypeInfoPtr, %TypeInfoPtr* %548, i32 0, i32 1
  %550 = load %TypeInfo*, %TypeInfo** %549, align 8
  store %TypeInfo* %550, %TypeInfo** %elem_type
  %551 = load %TypeInfo*, %TypeInfo** %elem_type, align 8
  %552 = getelementptr inbounds %TypeInfo, %TypeInfo* %551, i32 0, i32 1
  %553 = load i64, i64* %552, align 8
  store i64 %553, i64* %elem_size7
  %554 = load %TypeInfo*, %TypeInfo** %elem_type, align 8
  %555 = getelementptr inbounds %Any, %Any* %tmp5, i32 0, i32 0
  store %TypeInfo* %554, %TypeInfo** %555, align 8
  %556 = load i64, i64* %elem_size7, align 8
  %557 = icmp ugt i64 %556, 0
  br i1 %557, label %if_then57, label %if_else58

if_then57:                                        ; preds = %if_cont56
  store i64 0, i64* %i8
  br label %loop_decide59

if_else58:                                        ; preds = %if_cont56
  br label %if_cont60

loop_decide59:                                    ; preds = %loop_increment61, %if_then57
  %558 = load i64, i64* %len, align 8
  %559 = load i64, i64* %i8, align 8
  %560 = icmp ult i64 %559, %558
  br i1 %560, label %loop_body62, label %loop_continue63

if_cont60:                                        ; preds = %loop_continue63, %if_else58
  %561 = load i32, i32* %cur, align 4
  %562 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %562, { i64, i8* }* %50
  %563 = bitcast { i64, i8* }* %50 to { i64, i64 }*
  %564 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %563, i32 0, i32 0
  %565 = load i64, i64* %564
  %566 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %563, i32 0, i32 1
  %567 = load i64, i64* %566
  store %string { i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.295, i32 0, i32 0) }, %string* %51
  %568 = bitcast %string* %51 to { i64, i64 }*
  %569 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %568, i32 0, i32 0
  %570 = load i64, i64* %569
  %571 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %568, i32 0, i32 1
  %572 = load i64, i64* %571
  %573 = call i32 @print_string(i64 %565, i64 %567, i32 %561, i64 %570, i64 %572)
  store i32 %573, i32* %.ret.8, align 4
  br label %exit

loop_increment61:                                 ; preds = %if_cont66
  %574 = load i64, i64* %i8, align 8
  %575 = add i64 %574, 1
  store i64 %575, i64* %i8, align 8
  br label %loop_decide59

loop_body62:                                      ; preds = %loop_decide59
  %576 = load i64, i64* %elem_size7, align 8
  %577 = load i64, i64* %i8, align 8
  %578 = mul i64 %577, %576
  %579 = load i8*, i8** %ptr, align 8
  %580 = ptrtoint i8* %579 to i64
  %581 = add i64 %580, %578
  %582 = inttoptr i64 %581 to i8*
  %583 = getelementptr inbounds %Any, %Any* %tmp5, i32 0, i32 1
  store i8* %582, i8** %583, align 8
  %584 = load i32, i32* %cur, align 4
  %585 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %585, { i64, i8* }* %52
  %586 = bitcast { i64, i8* }* %52 to { i64, i64 }*
  %587 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %586, i32 0, i32 0
  %588 = load i64, i64* %587
  %589 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %586, i32 0, i32 1
  %590 = load i64, i64* %589
  %591 = call i32 @print_any(i64 %588, i64 %590, i32 %584, %Any* %tmp5)
  store i32 %591, i32* %cur, align 4
  %592 = load i64, i64* %len, align 8
  %593 = sub i64 %592, 1
  %594 = load i64, i64* %i8, align 8
  %595 = icmp ult i64 %594, %593
  br i1 %595, label %if_then64, label %if_else65

loop_continue63:                                  ; preds = %loop_decide59
  br label %if_cont60

if_then64:                                        ; preds = %loop_body62
  %596 = load i32, i32* %cur, align 4
  %597 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %597, { i64, i8* }* %53
  %598 = bitcast { i64, i8* }* %53 to { i64, i64 }*
  %599 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %598, i32 0, i32 0
  %600 = load i64, i64* %599
  %601 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %598, i32 0, i32 1
  %602 = load i64, i64* %601
  store %string { i64 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.296, i32 0, i32 0) }, %string* %54
  %603 = bitcast %string* %54 to { i64, i64 }*
  %604 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %603, i32 0, i32 0
  %605 = load i64, i64* %604
  %606 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %603, i32 0, i32 1
  %607 = load i64, i64* %606
  %608 = call i32 @print_string(i64 %600, i64 %602, i32 %596, i64 %605, i64 %607)
  store i32 %608, i32* %cur, align 4
  br label %if_cont66

if_else65:                                        ; preds = %loop_body62
  br label %if_cont66

if_cont66:                                        ; preds = %if_else65, %if_then64
  br label %loop_increment61

if_then67:                                        ; preds = %if_then40
  %609 = load i32, i32* %cur, align 4
  %610 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %610, { i64, i8* }* %55
  %611 = bitcast { i64, i8* }* %55 to { i64, i64 }*
  %612 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %611, i32 0, i32 0
  %613 = load i64, i64* %612
  %614 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %611, i32 0, i32 1
  %615 = load i64, i64* %614
  store %string { i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.288, i32 0, i32 0) }, %string* %56
  %616 = bitcast %string* %56 to { i64, i64 }*
  %617 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %616, i32 0, i32 0
  %618 = load i64, i64* %617
  %619 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %616, i32 0, i32 1
  %620 = load i64, i64* %619
  %621 = call i32 @print_string(i64 %613, i64 %615, i32 %609, i64 %618, i64 %620)
  store i32 %621, i32* %.ret.8, align 4
  br label %exit

if_else68:                                        ; preds = %if_then40
  br label %if_cont72

if_then69:                                        ; preds = %if_else41
  %622 = load %Any*, %Any** %any, align 8
  %623 = getelementptr inbounds %Any, %Any* %622, i32 0, i32 1
  %624 = load i8*, i8** %623, align 8
  %625 = bitcast i8* %624 to i1*
  %626 = load i1, i1* %625, align 1
  store i1 %626, i1* %b
  %627 = load i1, i1* %b, align 1
  br i1 %627, label %if_then73, label %if_else74

if_else70:                                        ; preds = %if_else41
  %628 = load %Any*, %Any** %any, align 8
  %629 = getelementptr inbounds %Any, %Any* %628, i32 0, i32 0
  %630 = load %TypeInfo*, %TypeInfo** %629, align 8
  %631 = getelementptr inbounds %TypeInfo, %TypeInfo* %630, i32 0, i32 0
  %632 = load i32, i32* %631, align 4
  %633 = icmp eq i32 %632, 10
  br i1 %633, label %if_then75, label %if_else76

if_cont71:                                        ; preds = %if_cont77
  br label %if_cont42

if_cont72:                                        ; preds = %if_else68
  %634 = load i64, i64* %ptr9, align 8
  %635 = load i32, i32* %cur, align 4
  %636 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %636, { i64, i8* }* %57
  %637 = bitcast { i64, i8* }* %57 to { i64, i64 }*
  %638 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %637, i32 0, i32 0
  %639 = load i64, i64* %638
  %640 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %637, i32 0, i32 1
  %641 = load i64, i64* %640
  %642 = call i32 @print_u64_hex(i64 %639, i64 %641, i32 %635, i64 %634)
  store i32 %642, i32* %.ret.8, align 4
  br label %exit

if_then73:                                        ; preds = %if_then69
  %643 = load i32, i32* %cur, align 4
  %644 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %644, { i64, i8* }* %58
  %645 = bitcast { i64, i8* }* %58 to { i64, i64 }*
  %646 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %645, i32 0, i32 0
  %647 = load i64, i64* %646
  %648 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %645, i32 0, i32 1
  %649 = load i64, i64* %648
  store %string { i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.301, i32 0, i32 0) }, %string* %59
  %650 = bitcast %string* %59 to { i64, i64 }*
  %651 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %650, i32 0, i32 0
  %652 = load i64, i64* %651
  %653 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %650, i32 0, i32 1
  %654 = load i64, i64* %653
  %655 = call i32 @print_string(i64 %647, i64 %649, i32 %643, i64 %652, i64 %654)
  store i32 %655, i32* %.ret.8, align 4
  br label %exit

if_else74:                                        ; preds = %if_then69
  %656 = load i32, i32* %cur, align 4
  %657 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %657, { i64, i8* }* %60
  %658 = bitcast { i64, i8* }* %60 to { i64, i64 }*
  %659 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %658, i32 0, i32 0
  %660 = load i64, i64* %659
  %661 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %658, i32 0, i32 1
  %662 = load i64, i64* %661
  store %string { i64 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.302, i32 0, i32 0) }, %string* %61
  %663 = bitcast %string* %61 to { i64, i64 }*
  %664 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %663, i32 0, i32 0
  %665 = load i64, i64* %664
  %666 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %663, i32 0, i32 1
  %667 = load i64, i64* %666
  %668 = call i32 @print_string(i64 %660, i64 %662, i32 %656, i64 %665, i64 %667)
  store i32 %668, i32* %.ret.8, align 4
  br label %exit

if_then75:                                        ; preds = %if_else70
  %669 = load %Any*, %Any** %any, align 8
  %670 = getelementptr inbounds %Any, %Any* %669, i32 0, i32 0
  %671 = load %TypeInfo*, %TypeInfo** %670, align 8
  %672 = bitcast %TypeInfo* %671 to %TypeInfoEnum*
  store %TypeInfoEnum* %672, %TypeInfoEnum** %info10
  %673 = load %TypeInfoEnum*, %TypeInfoEnum** %info10, align 8
  %674 = getelementptr inbounds %TypeInfoEnum, %TypeInfoEnum* %673, i32 0, i32 2
  %675 = load %TypeInfo*, %TypeInfo** %674, align 8
  %676 = bitcast %TypeInfo* %675 to %TypeInfoInt*
  store %TypeInfoInt* %676, %TypeInfoInt** %info_base_type
  %677 = load %TypeInfoInt*, %TypeInfoInt** %info_base_type, align 8
  %678 = getelementptr inbounds %TypeInfoInt, %TypeInfoInt* %677, i32 0, i32 1
  %679 = load i32, i32* %678, align 4
  %680 = load %Any*, %Any** %any, align 8
  %681 = getelementptr inbounds %Any, %Any* %680, i32 0, i32 1
  %682 = load i8*, i8** %681, align 8
  %683 = call i64 @s64_from_u8_ptr(i8* %682, i32 %679)
  store i64 %683, i64* %value
  store i32 0, i32* %i11
  br label %loop_decide79

if_else76:                                        ; preds = %if_else70
  %684 = load %Any*, %Any** %any, align 8
  %685 = getelementptr inbounds %Any, %Any* %684, i32 0, i32 0
  %686 = load %TypeInfo*, %TypeInfo** %685, align 8
  %687 = getelementptr inbounds %TypeInfo, %TypeInfo* %686, i32 0, i32 0
  %688 = load i32, i32* %687, align 4
  %689 = icmp eq i32 %688, 1
  br i1 %689, label %if_then80, label %if_else81

if_cont77:                                        ; preds = %if_cont82, %if_cont78
  br label %if_cont71

if_cont78:                                        ; No predecessors!
  br label %if_cont77

loop_decide79:                                    ; preds = %loop_increment83, %if_then75
  %690 = load %TypeInfoEnum*, %TypeInfoEnum** %info10, align 8
  %691 = getelementptr inbounds %TypeInfoEnum, %TypeInfoEnum* %690, i32 0, i32 3
  %692 = getelementptr inbounds { i64, %TypeInfoEnumVariant* }, { i64, %TypeInfoEnumVariant* }* %691, i32 0, i32 0
  %693 = load i64, i64* %692, align 8
  %694 = load i32, i32* %i11, align 4
  %695 = sext i32 %694 to i64
  %696 = icmp slt i64 %695, %693
  br i1 %696, label %loop_body84, label %loop_continue85

if_then80:                                        ; preds = %if_else76
  %697 = load %Any*, %Any** %any, align 8
  %698 = getelementptr inbounds %Any, %Any* %697, i32 0, i32 1
  %699 = load i8*, i8** %698, align 8
  %700 = bitcast i8* %699 to %TypeInfo*
  %701 = load i32, i32* %cur, align 4
  %702 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %702, { i64, i8* }* %71
  %703 = bitcast { i64, i8* }* %71 to { i64, i64 }*
  %704 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %703, i32 0, i32 0
  %705 = load i64, i64* %704
  %706 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %703, i32 0, i32 1
  %707 = load i64, i64* %706
  %708 = call i32 @print_type(i64 %705, i64 %707, i32 %701, %TypeInfo* %700)
  store i32 %708, i32* %.ret.8, align 4
  br label %exit

if_else81:                                        ; preds = %if_else76
  %709 = load i32, i32* %cur, align 4
  %710 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %710, { i64, i8* }* %72
  %711 = bitcast { i64, i8* }* %72 to { i64, i64 }*
  %712 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %711, i32 0, i32 0
  %713 = load i64, i64* %712
  %714 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %711, i32 0, i32 1
  %715 = load i64, i64* %714
  store %string { i64 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.304, i32 0, i32 0) }, %string* %73
  %716 = bitcast %string* %73 to { i64, i64 }*
  %717 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %716, i32 0, i32 0
  %718 = load i64, i64* %717
  %719 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %716, i32 0, i32 1
  %720 = load i64, i64* %719
  %721 = call i32 @print_string(i64 %713, i64 %715, i32 %709, i64 %718, i64 %720)
  store i32 %721, i32* %.ret.8, align 4
  br label %exit

if_cont82:                                        ; preds = %if_cont92
  br label %if_cont77

loop_increment83:                                 ; preds = %if_cont90
  %722 = load i32, i32* %i11, align 4
  %723 = add i32 %722, 1
  store i32 %723, i32* %i11, align 4
  br label %loop_decide79

loop_body84:                                      ; preds = %loop_decide79
  %724 = load i64, i64* %value, align 8
  %725 = load %TypeInfoEnum*, %TypeInfoEnum** %info10, align 8
  %726 = getelementptr inbounds %TypeInfoEnum, %TypeInfoEnum* %725, i32 0, i32 3
  %727 = load i32, i32* %i11, align 4
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds { i64, %TypeInfoEnumVariant* }, { i64, %TypeInfoEnumVariant* }* %726, i32 0, i32 1
  %730 = load %TypeInfoEnumVariant*, %TypeInfoEnumVariant** %729
  %731 = getelementptr inbounds %TypeInfoEnumVariant, %TypeInfoEnumVariant* %730, i64 %728
  %732 = getelementptr inbounds %TypeInfoEnumVariant, %TypeInfoEnumVariant* %731, i32 0, i32 1
  %733 = load i64, i64* %732, align 8
  %734 = icmp eq i64 %733, %724
  br i1 %734, label %if_then86, label %if_else87

loop_continue85:                                  ; preds = %loop_decide79
  %735 = load i64, i64* %value, align 8
  %736 = icmp slt i64 %735, 0
  br i1 %736, label %if_then88, label %if_else89

if_then86:                                        ; preds = %loop_body84
  %737 = load %TypeInfoEnum*, %TypeInfoEnum** %info10, align 8
  %738 = getelementptr inbounds %TypeInfoEnum, %TypeInfoEnum* %737, i32 0, i32 1
  %739 = load %string, %string* %738, align 8
  %740 = load i32, i32* %cur, align 4
  %741 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %741, { i64, i8* }* %62
  %742 = bitcast { i64, i8* }* %62 to { i64, i64 }*
  %743 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %742, i32 0, i32 0
  %744 = load i64, i64* %743
  %745 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %742, i32 0, i32 1
  %746 = load i64, i64* %745
  store %string %739, %string* %63
  %747 = bitcast %string* %63 to { i64, i64 }*
  %748 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %747, i32 0, i32 0
  %749 = load i64, i64* %748
  %750 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %747, i32 0, i32 1
  %751 = load i64, i64* %750
  %752 = call i32 @print_string(i64 %744, i64 %746, i32 %740, i64 %749, i64 %751)
  store i32 %752, i32* %cur, align 4
  %753 = load i32, i32* %cur, align 4
  %754 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %754, { i64, i8* }* %64
  %755 = bitcast { i64, i8* }* %64 to { i64, i64 }*
  %756 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %755, i32 0, i32 0
  %757 = load i64, i64* %756
  %758 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %755, i32 0, i32 1
  %759 = load i64, i64* %758
  store %string { i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.303, i32 0, i32 0) }, %string* %65
  %760 = bitcast %string* %65 to { i64, i64 }*
  %761 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %760, i32 0, i32 0
  %762 = load i64, i64* %761
  %763 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %760, i32 0, i32 1
  %764 = load i64, i64* %763
  %765 = call i32 @print_string(i64 %757, i64 %759, i32 %753, i64 %762, i64 %764)
  store i32 %765, i32* %cur, align 4
  %766 = load %TypeInfoEnum*, %TypeInfoEnum** %info10, align 8
  %767 = getelementptr inbounds %TypeInfoEnum, %TypeInfoEnum* %766, i32 0, i32 3
  %768 = load i32, i32* %i11, align 4
  %769 = sext i32 %768 to i64
  %770 = getelementptr inbounds { i64, %TypeInfoEnumVariant* }, { i64, %TypeInfoEnumVariant* }* %767, i32 0, i32 1
  %771 = load %TypeInfoEnumVariant*, %TypeInfoEnumVariant** %770
  %772 = getelementptr inbounds %TypeInfoEnumVariant, %TypeInfoEnumVariant* %771, i64 %769
  %773 = getelementptr inbounds %TypeInfoEnumVariant, %TypeInfoEnumVariant* %772, i32 0, i32 0
  %774 = load %string, %string* %773, align 8
  %775 = load i32, i32* %cur, align 4
  %776 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %776, { i64, i8* }* %66
  %777 = bitcast { i64, i8* }* %66 to { i64, i64 }*
  %778 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %777, i32 0, i32 0
  %779 = load i64, i64* %778
  %780 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %777, i32 0, i32 1
  %781 = load i64, i64* %780
  store %string %774, %string* %67
  %782 = bitcast %string* %67 to { i64, i64 }*
  %783 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %782, i32 0, i32 0
  %784 = load i64, i64* %783
  %785 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %782, i32 0, i32 1
  %786 = load i64, i64* %785
  %787 = call i32 @print_string(i64 %779, i64 %781, i32 %775, i64 %784, i64 %786)
  store i32 %787, i32* %.ret.8, align 4
  br label %exit

if_else87:                                        ; preds = %loop_body84
  br label %if_cont90

if_then88:                                        ; preds = %loop_continue85
  %788 = load i32, i32* %cur, align 4
  %789 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %789, { i64, i8* }* %68
  %790 = bitcast { i64, i8* }* %68 to { i64, i64 }*
  %791 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %790, i32 0, i32 0
  %792 = load i64, i64* %791
  %793 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %790, i32 0, i32 1
  %794 = load i64, i64* %793
  store %string { i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.292, i32 0, i32 0) }, %string* %69
  %795 = bitcast %string* %69 to { i64, i64 }*
  %796 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %795, i32 0, i32 0
  %797 = load i64, i64* %796
  %798 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %795, i32 0, i32 1
  %799 = load i64, i64* %798
  %800 = call i32 @print_string(i64 %792, i64 %794, i32 %788, i64 %797, i64 %799)
  store i32 %800, i32* %cur, align 4
  %801 = load i64, i64* %value, align 8
  %802 = sub i64 0, %801
  store i64 %802, i64* %value, align 8
  br label %if_cont91

if_else89:                                        ; preds = %loop_continue85
  br label %if_cont91

if_cont90:                                        ; preds = %if_else87
  br label %loop_increment83

if_cont91:                                        ; preds = %if_else89, %if_then88
  %803 = load i64, i64* %value, align 8
  %804 = load i32, i32* %cur, align 4
  %805 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %805, { i64, i8* }* %70
  %806 = bitcast { i64, i8* }* %70 to { i64, i64 }*
  %807 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %806, i32 0, i32 0
  %808 = load i64, i64* %807
  %809 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %806, i32 0, i32 1
  %810 = load i64, i64* %809
  %811 = call i32 @print_u64(i64 %808, i64 %810, i32 %804, i64 %803)
  store i32 %811, i32* %.ret.8, align 4
  br label %exit

if_cont92:                                        ; No predecessors!
  br label %if_cont82
}

define i32 @print_string(i64, i64, i32, i64, i64) {
entry:
  %.ret.10 = alloca i32, align 4
  %str = alloca %string, align 8
  %cur = alloca i32, align 4
  %buf = alloca { i64, i8* }, align 8
  %i = alloca i32, align 4
  %bi = alloca i32, align 4
  %5 = bitcast %string* %str to { i64, i64 }*
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 0
  store i64 %3, i64* %6
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 1
  store i64 %4, i64* %7
  store i32 %2, i32* %cur
  %8 = bitcast { i64, i8* }* %buf to { i64, i64 }*
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  store i64 %0, i64* %9
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  store i64 %1, i64* %10
  %11 = getelementptr inbounds %string, %string* %str, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %if_then, label %if_else

if_then:                                          ; preds = %entry
  %14 = load i32, i32* %cur, align 4
  store i32 %14, i32* %.ret.10, align 4
  br label %exit

if_else:                                          ; preds = %entry
  br label %if_cont

exit:                                             ; preds = %loop_continue, %if_then
  %15 = load i32, i32* %.ret.10, align 4
  ret i32 %15

if_cont:                                          ; preds = %if_else
  store i32 0, i32* %i
  br label %loop_decide

loop_decide:                                      ; preds = %loop_increment, %if_cont
  %16 = getelementptr inbounds %string, %string* %str, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %i, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp slt i64 %19, %17
  br i1 %20, label %loop_body, label %loop_continue

loop_increment:                                   ; preds = %if_cont3
  %21 = load i32, i32* %i, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %i, align 4
  br label %loop_decide

loop_body:                                        ; preds = %loop_decide
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %cur, align 4
  %25 = add i32 %24, %23
  store i32 %25, i32* %bi
  %26 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %buf, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %bi, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp sge i64 %29, %27
  br i1 %30, label %if_then1, label %if_else2

loop_continue:                                    ; preds = %if_then1, %loop_decide
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %cur, align 4
  %33 = add i32 %32, %31
  store i32 %33, i32* %.ret.10, align 4
  br label %exit

if_then1:                                         ; preds = %loop_body
  br label %loop_continue

if_else2:                                         ; preds = %loop_body
  br label %if_cont3

if_cont3:                                         ; preds = %if_else2
  %34 = load i32, i32* %i, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %string, %string* %str, i32 0, i32 1
  %37 = load i8*, i8** %36
  %38 = getelementptr inbounds i8, i8* %37, i64 %35
  %39 = load i8, i8* %38, align 1
  %40 = load i32, i32* %bi, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %buf, i32 0, i32 1
  %43 = load i8*, i8** %42
  %44 = getelementptr inbounds i8, i8* %43, i64 %41
  store i8 %39, i8* %44, align 1
  br label %loop_increment
}

define i64 @s64_from_u8_ptr(i8*, i32) {
entry:
  %.ret.15 = alloca i64, align 8
  %bit_count = alloca i32, align 4
  %ptr = alloca i8*, align 8
  store i32 %1, i32* %bit_count
  store i8* %0, i8** %ptr
  %2 = load i32, i32* %bit_count, align 4
  %3 = icmp eq i32 %2, 64
  br i1 %3, label %if_then, label %if_else

if_then:                                          ; preds = %entry
  %4 = load i8*, i8** %ptr, align 8
  %5 = bitcast i8* %4 to i64*
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %.ret.15, align 8
  br label %exit

if_else:                                          ; preds = %entry
  br label %if_cont

exit:                                             ; preds = %if_cont9, %if_then7, %if_then4, %if_then1, %if_then
  %7 = load i64, i64* %.ret.15, align 8
  ret i64 %7

if_cont:                                          ; preds = %if_else
  %8 = load i32, i32* %bit_count, align 4
  %9 = icmp eq i32 %8, 32
  br i1 %9, label %if_then1, label %if_else2

if_then1:                                         ; preds = %if_cont
  %10 = load i8*, i8** %ptr, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %.ret.15, align 8
  br label %exit

if_else2:                                         ; preds = %if_cont
  br label %if_cont3

if_cont3:                                         ; preds = %if_else2
  %14 = load i32, i32* %bit_count, align 4
  %15 = icmp eq i32 %14, 16
  br i1 %15, label %if_then4, label %if_else5

if_then4:                                         ; preds = %if_cont3
  %16 = load i8*, i8** %ptr, align 8
  %17 = bitcast i8* %16 to i16*
  %18 = load i16, i16* %17, align 2
  %19 = sext i16 %18 to i64
  store i64 %19, i64* %.ret.15, align 8
  br label %exit

if_else5:                                         ; preds = %if_cont3
  br label %if_cont6

if_cont6:                                         ; preds = %if_else5
  %20 = load i32, i32* %bit_count, align 4
  %21 = icmp eq i32 %20, 8
  br i1 %21, label %if_then7, label %if_else8

if_then7:                                         ; preds = %if_cont6
  %22 = load i8*, i8** %ptr, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i64
  store i64 %24, i64* %.ret.15, align 8
  br label %exit

if_else8:                                         ; preds = %if_cont6
  br label %if_cont9

if_cont9:                                         ; preds = %if_else8
  store i64 0, i64* %.ret.15, align 8
  br label %exit
}

define i64 @u64_from_u8_ptr(i8*, i32) {
entry:
  %.ret.16 = alloca i64, align 8
  %bit_count = alloca i32, align 4
  %ptr = alloca i8*, align 8
  store i32 %1, i32* %bit_count
  store i8* %0, i8** %ptr
  %2 = load i32, i32* %bit_count, align 4
  %3 = icmp eq i32 %2, 64
  br i1 %3, label %if_then, label %if_else

if_then:                                          ; preds = %entry
  %4 = load i8*, i8** %ptr, align 8
  %5 = bitcast i8* %4 to i64*
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %.ret.16, align 8
  br label %exit

if_else:                                          ; preds = %entry
  br label %if_cont

exit:                                             ; preds = %if_cont9, %if_then7, %if_then4, %if_then1, %if_then
  %7 = load i64, i64* %.ret.16, align 8
  ret i64 %7

if_cont:                                          ; preds = %if_else
  %8 = load i32, i32* %bit_count, align 4
  %9 = icmp eq i32 %8, 32
  br i1 %9, label %if_then1, label %if_else2

if_then1:                                         ; preds = %if_cont
  %10 = load i8*, i8** %ptr, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %.ret.16, align 8
  br label %exit

if_else2:                                         ; preds = %if_cont
  br label %if_cont3

if_cont3:                                         ; preds = %if_else2
  %14 = load i32, i32* %bit_count, align 4
  %15 = icmp eq i32 %14, 16
  br i1 %15, label %if_then4, label %if_else5

if_then4:                                         ; preds = %if_cont3
  %16 = load i8*, i8** %ptr, align 8
  %17 = bitcast i8* %16 to i16*
  %18 = load i16, i16* %17, align 2
  %19 = zext i16 %18 to i64
  store i64 %19, i64* %.ret.16, align 8
  br label %exit

if_else5:                                         ; preds = %if_cont3
  br label %if_cont6

if_cont6:                                         ; preds = %if_else5
  %20 = load i32, i32* %bit_count, align 4
  %21 = icmp eq i32 %20, 8
  br i1 %21, label %if_then7, label %if_else8

if_then7:                                         ; preds = %if_cont6
  %22 = load i8*, i8** %ptr, align 8
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i64
  store i64 %24, i64* %.ret.16, align 8
  br label %exit

if_else8:                                         ; preds = %if_cont6
  br label %if_cont9

if_cont9:                                         ; preds = %if_else8
  store i64 0, i64* %.ret.16, align 8
  br label %exit
}

define i32 @print_u64(i64, i64, i32, i64) {
entry:
  %.ret.13 = alloca i32, align 4
  %v = alloca i64, align 8
  %cur = alloca i32, align 4
  %buf = alloca { i64, i8* }, align 8
  %base = alloca i64, align 8
  %div = alloca i64, align 8
  %hit_non_zero = alloca i1, align 1
  %d = alloca i64, align 8
  store i64 %3, i64* %v
  store i32 %2, i32* %cur
  %4 = bitcast { i64, i8* }* %buf to { i64, i64 }*
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %0, i64* %5
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %1, i64* %6
  %7 = load i64, i64* %v, align 8
  %8 = icmp eq i64 %7, 0
  %9 = alloca { i64, i8* }
  %10 = alloca %string
  %11 = alloca { i64, i8* }
  br i1 %8, label %if_then, label %if_else

if_then:                                          ; preds = %entry
  %12 = load i32, i32* %cur, align 4
  %13 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %13, { i64, i8* }* %9
  %14 = bitcast { i64, i8* }* %9 to { i64, i64 }*
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 0
  %16 = load i64, i64* %15
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 1
  %18 = load i64, i64* %17
  store %string { i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.317, i32 0, i32 0) }, %string* %10
  %19 = bitcast %string* %10 to { i64, i64 }*
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 0
  %21 = load i64, i64* %20
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 1
  %23 = load i64, i64* %22
  %24 = call i32 @print_string(i64 %16, i64 %18, i32 %12, i64 %21, i64 %23)
  store i32 %24, i32* %.ret.13, align 4
  br label %exit

if_else:                                          ; preds = %entry
  br label %if_cont

exit:                                             ; preds = %loop_continue, %if_then
  %25 = load i32, i32* %.ret.13, align 4
  ret i32 %25

if_cont:                                          ; preds = %if_else
  store i64 10, i64* %base
  store i64 -8446744073709551616, i64* %div
  store i1 false, i1* %hit_non_zero
  br label %loop_decide

loop_decide:                                      ; preds = %if_cont6, %if_cont
  %26 = load i64, i64* %div, align 8
  %27 = icmp ugt i64 %26, 0
  br i1 %27, label %loop_body, label %loop_continue

loop_body:                                        ; preds = %loop_decide
  %28 = load i64, i64* %div, align 8
  %29 = load i64, i64* %v, align 8
  %30 = udiv i64 %29, %28
  store i64 %30, i64* %d
  %31 = load i64, i64* %div, align 8
  %32 = load i64, i64* %v, align 8
  %33 = urem i64 %32, %31
  store i64 %33, i64* %v, align 8
  %34 = load i64, i64* %div, align 8
  %35 = udiv i64 %34, 10
  store i64 %35, i64* %div, align 8
  %36 = load i64, i64* %d, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %if_then1, label %if_else2

loop_continue:                                    ; preds = %loop_decide
  %38 = load i32, i32* %cur, align 4
  store i32 %38, i32* %.ret.13, align 4
  br label %exit

if_then1:                                         ; preds = %loop_body
  store i1 true, i1* %hit_non_zero, align 1
  br label %if_cont3

if_else2:                                         ; preds = %loop_body
  br label %if_cont3

if_cont3:                                         ; preds = %if_else2, %if_then1
  %39 = load i1, i1* %hit_non_zero, align 1
  br i1 %39, label %if_then4, label %if_else5

if_then4:                                         ; preds = %if_cont3
  %40 = load i64, i64* %d, align 8
  %41 = add i64 %40, 48
  %42 = trunc i64 %41 to i8
  %43 = load i32, i32* %cur, align 4
  %44 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %44, { i64, i8* }* %11
  %45 = bitcast { i64, i8* }* %11 to { i64, i64 }*
  %46 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %45, i32 0, i32 0
  %47 = load i64, i64* %46
  %48 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %45, i32 0, i32 1
  %49 = load i64, i64* %48
  %50 = call i32 @print_char(i64 %47, i64 %49, i32 %43, i8 %42)
  store i32 %50, i32* %cur, align 4
  br label %if_cont6

if_else5:                                         ; preds = %if_cont3
  br label %if_cont6

if_cont6:                                         ; preds = %if_else5, %if_then4
  br label %loop_decide
}

define double @f64_from_u8_ptr(i8*, i32) {
entry:
  %.ret.17 = alloca double, align 8
  %bit_count = alloca i32, align 4
  %ptr = alloca i8*, align 8
  store i32 %1, i32* %bit_count
  store i8* %0, i8** %ptr
  %2 = load i32, i32* %bit_count, align 4
  %3 = icmp eq i32 %2, 64
  br i1 %3, label %if_then, label %if_else

if_then:                                          ; preds = %entry
  %4 = load i8*, i8** %ptr, align 8
  %5 = bitcast i8* %4 to double*
  %6 = load double, double* %5, align 8
  store double %6, double* %.ret.17, align 8
  br label %exit

if_else:                                          ; preds = %entry
  br label %if_cont

exit:                                             ; preds = %if_cont3, %if_then1, %if_then
  %7 = load double, double* %.ret.17, align 8
  ret double %7

if_cont:                                          ; preds = %if_else
  %8 = load i32, i32* %bit_count, align 4
  %9 = icmp eq i32 %8, 32
  br i1 %9, label %if_then1, label %if_else2

if_then1:                                         ; preds = %if_cont
  %10 = load i8*, i8** %ptr, align 8
  %11 = bitcast i8* %10 to float*
  %12 = load float, float* %11, align 4
  %13 = fpext float %12 to double
  store double %13, double* %.ret.17, align 8
  br label %exit

if_else2:                                         ; preds = %if_cont
  br label %if_cont3

if_cont3:                                         ; preds = %if_else2
  store double 0.000000e+00, double* %.ret.17, align 8
  br label %exit
}

define i32 @print_f64(i64, i64, i32, double) {
entry:
  %.ret.14 = alloca i32, align 4
  %v = alloca double, align 8
  %cur = alloca i32, align 4
  %buf = alloca { i64, i8* }, align 8
  %precision = alloca double, align 8
  %m = alloca i32, align 4
  %weight = alloca double, align 8
  %d = alloca i8, align 1
  store double %3, double* %v
  store i32 %2, i32* %cur
  %4 = bitcast { i64, i8* }* %buf to { i64, i64 }*
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %0, i64* %5
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %1, i64* %6
  store double 0x3EB0C6F7A0B5ED8D, double* %precision
  %7 = load double, double* %v, align 8
  %8 = call double @log10(double %7)
  %9 = fptosi double %8 to i32
  store i32 %9, i32* %m
  %10 = load i32, i32* %m, align 4
  %11 = icmp slt i32 %10, 0
  %12 = alloca { i64, i8* }
  %13 = alloca { i64, i8* }
  br i1 %11, label %if_then, label %if_else

if_then:                                          ; preds = %entry
  store i32 0, i32* %m, align 4
  br label %if_cont

if_else:                                          ; preds = %entry
  br label %if_cont

exit:                                             ; preds = %loop_continue
  %14 = load i32, i32* %.ret.14, align 4
  ret i32 %14

if_cont:                                          ; preds = %if_else, %if_then
  br label %loop_decide

loop_decide:                                      ; preds = %if_cont7, %if_cont
  %15 = load double, double* %v, align 8
  %16 = fcmp ogt double %15, 0x3EB0C6F7A0B5ED8D
  br i1 %16, label %end_block, label %rhs_block

end_block:                                        ; preds = %rhs_block, %loop_decide
  %17 = phi i1 [ true, %loop_decide ], [ %19, %rhs_block ]
  br i1 %17, label %loop_body, label %loop_continue

rhs_block:                                        ; preds = %loop_decide
  %18 = load i32, i32* %m, align 4
  %19 = icmp sge i32 %18, 0
  br label %end_block

loop_body:                                        ; preds = %end_block
  %20 = load i32, i32* %m, align 4
  %21 = sitofp i32 %20 to double
  %22 = call double @pow(double 1.000000e+01, double %21)
  store double %22, double* %weight
  %23 = load double, double* %weight, align 8
  %24 = fcmp ogt double %23, 0.000000e+00
  br i1 %24, label %if_then1, label %if_else2

if_then1:                                         ; preds = %loop_body
  %25 = load double, double* %weight, align 8
  %26 = load double, double* %v, align 8
  %27 = fdiv double %26, %25
  %28 = call double @floor(double %27)
  %29 = fptoui double %28 to i8
  store i8 %29, i8* %d
  %30 = load double, double* %weight, align 8
  %31 = load i8, i8* %d, align 1
  %32 = uitofp i8 %31 to double
  %33 = fmul double %32, %30
  %34 = load double, double* %v, align 8
  %35 = fsub double %34, %33
  store double %35, double* %v, align 8
  %36 = load i8, i8* %d, align 1
  %37 = add i8 %36, 48
  %38 = load i32, i32* %cur, align 4
  %39 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %39, { i64, i8* }* %12
  %40 = bitcast { i64, i8* }* %12 to { i64, i64 }*
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %40, i32 0, i32 0
  %42 = load i64, i64* %41
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %40, i32 0, i32 1
  %44 = load i64, i64* %43
  %45 = call i32 @print_char(i64 %42, i64 %44, i32 %38, i8 %37)
  store i32 %45, i32* %cur, align 4
  br label %if_cont3

if_else2:                                         ; preds = %loop_body
  br label %if_cont3

loop_continue:                                    ; preds = %end_block
  %46 = load i32, i32* %cur, align 4
  store i32 %46, i32* %.ret.14, align 4
  br label %exit

if_cont3:                                         ; preds = %if_else2, %if_then1
  %47 = load i32, i32* %m, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %rhs_block4, label %end_block5

rhs_block4:                                       ; preds = %if_cont3
  %49 = load double, double* %v, align 8
  %50 = fcmp ogt double %49, 0.000000e+00
  br label %end_block5

end_block5:                                       ; preds = %rhs_block4, %if_cont3
  %51 = phi i1 [ false, %if_cont3 ], [ %50, %rhs_block4 ]
  br i1 %51, label %if_then6, label %if_else8

if_then6:                                         ; preds = %end_block5
  %52 = load i32, i32* %cur, align 4
  %53 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %53, { i64, i8* }* %13
  %54 = bitcast { i64, i8* }* %13 to { i64, i64 }*
  %55 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %54, i32 0, i32 0
  %56 = load i64, i64* %55
  %57 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %54, i32 0, i32 1
  %58 = load i64, i64* %57
  %59 = call i32 @print_char(i64 %56, i64 %58, i32 %52, i8 46)
  store i32 %59, i32* %cur, align 4
  br label %if_cont7

if_cont7:                                         ; preds = %if_else8, %if_then6
  %60 = load i32, i32* %m, align 4
  %61 = sub i32 %60, 1
  store i32 %61, i32* %m, align 4
  br label %loop_decide

if_else8:                                         ; preds = %end_block5
  br label %if_cont7
}

define i8* @ptr_from_ptr(i8*) {
entry:
  %.ret.18 = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  store i8* %0, i8** %ptr
  %1 = load i8*, i8** %ptr, align 8
  %2 = bitcast i8* %1 to i64*
  %3 = load i64, i64* %2, align 8
  %4 = inttoptr i64 %3 to i8*
  store i8* %4, i8** %.ret.18, align 8
  br label %exit

exit:                                             ; preds = %entry
  %5 = load i8*, i8** %.ret.18, align 8
  ret i8* %5
}

define i32 @print_u64_hex(i64, i64, i32, i64) {
entry:
  %.ret.12 = alloca i32, align 4
  %v = alloca i64, align 8
  %cur = alloca i32, align 4
  %buf = alloca { i64, i8* }, align 8
  %digits = alloca [16 x i8], align 1
  %mask = alloca i64, align 8
  %hit_non_zero = alloca i1, align 1
  %i = alloca i32, align 4
  %d = alloca i64, align 8
  store i64 %3, i64* %v
  store i32 %2, i32* %cur
  %4 = bitcast { i64, i8* }* %buf to { i64, i64 }*
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %0, i64* %5
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %1, i64* %6
  %7 = load i32, i32* %cur, align 4
  %8 = alloca { i64, i8* }
  %9 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %9, { i64, i8* }* %8
  %10 = bitcast { i64, i8* }* %8 to { i64, i64 }*
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  %12 = load i64, i64* %11
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  %14 = alloca %string
  %15 = load i64, i64* %13
  store %string { i64 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.316, i32 0, i32 0) }, %string* %14
  %16 = bitcast %string* %14 to { i64, i64 }*
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 0
  %18 = load i64, i64* %17
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 1
  %20 = load i64, i64* %19
  %21 = call i32 @print_string(i64 %12, i64 %15, i32 %7, i64 %18, i64 %20)
  store i32 %21, i32* %cur, align 4
  %22 = load i64, i64* %v, align 8
  %23 = icmp eq i64 %22, 0
  %24 = alloca { i64, i8* }
  %25 = alloca %string
  %26 = alloca { i64, i8* }
  br i1 %23, label %if_then, label %if_else

if_then:                                          ; preds = %entry
  %27 = load i32, i32* %cur, align 4
  %28 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %28, { i64, i8* }* %24
  %29 = bitcast { i64, i8* }* %24 to { i64, i64 }*
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 0
  %31 = load i64, i64* %30
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 1
  %33 = load i64, i64* %32
  store %string { i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.317, i32 0, i32 0) }, %string* %25
  %34 = bitcast %string* %25 to { i64, i64 }*
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %34, i32 0, i32 0
  %36 = load i64, i64* %35
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %34, i32 0, i32 1
  %38 = load i64, i64* %37
  %39 = call i32 @print_string(i64 %31, i64 %33, i32 %27, i64 %36, i64 %38)
  store i32 %39, i32* %.ret.12, align 4
  br label %exit

if_else:                                          ; preds = %entry
  br label %if_cont

exit:                                             ; preds = %loop_continue, %if_then
  %40 = load i32, i32* %.ret.12, align 4
  ret i32 %40

if_cont:                                          ; preds = %if_else
  %41 = bitcast [16 x i8]* %digits to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i64 16, i1 false)
  store i64 -1152921504606846976, i64* %mask
  store i1 false, i1* %hit_non_zero
  store i32 0, i32* %i
  br label %loop_decide

loop_decide:                                      ; preds = %loop_increment, %if_cont
  %42 = load i32, i32* %i, align 4
  %43 = icmp slt i32 %42, 16
  br i1 %43, label %loop_body, label %loop_continue

loop_increment:                                   ; preds = %if_cont6
  %44 = load i32, i32* %i, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %i, align 4
  br label %loop_decide

loop_body:                                        ; preds = %loop_decide
  %46 = load i64, i64* %mask, align 8
  %47 = load i64, i64* %v, align 8
  %48 = and i64 %47, %46
  store i64 %48, i64* %d
  %49 = load i64, i64* %v, align 8
  %50 = shl i64 %49, 4
  store i64 %50, i64* %v, align 8
  %51 = load i64, i64* %d, align 8
  %52 = lshr i64 %51, 60
  store i64 %52, i64* %d, align 8
  %53 = load i64, i64* %d, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %if_then1, label %if_else2

loop_continue:                                    ; preds = %loop_decide
  %55 = load i32, i32* %cur, align 4
  store i32 %55, i32* %.ret.12, align 4
  br label %exit

if_then1:                                         ; preds = %loop_body
  store i1 true, i1* %hit_non_zero, align 1
  br label %if_cont3

if_else2:                                         ; preds = %loop_body
  br label %if_cont3

if_cont3:                                         ; preds = %if_else2, %if_then1
  %56 = load i1, i1* %hit_non_zero, align 1
  br i1 %56, label %if_then4, label %if_else5

if_then4:                                         ; preds = %if_cont3
  %57 = load i64, i64* %d, align 8
  %58 = getelementptr [16 x i8], [16 x i8]* %digits, i64 0, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = load i32, i32* %cur, align 4
  %61 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %61, { i64, i8* }* %26
  %62 = bitcast { i64, i8* }* %26 to { i64, i64 }*
  %63 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %62, i32 0, i32 0
  %64 = load i64, i64* %63
  %65 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %62, i32 0, i32 1
  %66 = load i64, i64* %65
  %67 = call i32 @print_char(i64 %64, i64 %66, i32 %60, i8 %59)
  store i32 %67, i32* %cur, align 4
  br label %if_cont6

if_else5:                                         ; preds = %if_cont3
  br label %if_cont6

if_cont6:                                         ; preds = %if_else5, %if_then4
  br label %loop_increment
}

define i32 @print_type(i64, i64, i32, %TypeInfo*) {
entry:
  %.ret.9 = alloca i32, align 4
  %info = alloca %TypeInfo*, align 8
  %cur = alloca i32, align 4
  %buf = alloca { i64, i8* }, align 8
  %c = alloca %TypeInfoInt*, align 8
  %c1 = alloca %TypeInfoReal*, align 8
  %c2 = alloca %TypeInfoPtr*, align 8
  %c3 = alloca %TypeInfoArray*, align 8
  %c4 = alloca %TypeInfoStruct*, align 8
  %i = alloca i32, align 4
  %member = alloca %TypeInfoStructMember, align 8
  %c5 = alloca %TypeInfoFn*, align 8
  %i6 = alloca i32, align 4
  %arg = alloca %TypeInfo*, align 8
  %c7 = alloca %TypeInfoEnum*, align 8
  %i8 = alloca i32, align 4
  %variant = alloca %TypeInfoEnumVariant, align 8
  store %TypeInfo* %3, %TypeInfo** %info
  store i32 %2, i32* %cur
  %4 = bitcast { i64, i8* }* %buf to { i64, i64 }*
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %0, i64* %5
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %1, i64* %6
  %7 = load %TypeInfo*, %TypeInfo** %info, align 8
  %8 = getelementptr inbounds %TypeInfo, %TypeInfo* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 3
  %11 = alloca { i64, i8* }
  %12 = alloca %string
  %13 = alloca { i64, i8* }
  %14 = alloca %string
  %15 = alloca { i64, i8* }
  %16 = alloca { i64, i8* }
  %17 = alloca %string
  %18 = alloca { i64, i8* }
  %19 = alloca { i64, i8* }
  %20 = alloca %string
  %21 = alloca { i64, i8* }
  %22 = alloca %string
  %23 = alloca { i64, i8* }
  %24 = alloca { i64, i8* }
  %25 = alloca %string
  %26 = alloca { i64, i8* }
  %27 = alloca { i64, i8* }
  %28 = alloca %string
  %29 = alloca { i64, i8* }
  %30 = alloca { i64, i8* }
  %31 = alloca %string
  %32 = alloca { i64, i8* }
  %33 = alloca %string
  %34 = alloca { i64, i8* }
  %35 = alloca %string
  %36 = alloca { i64, i8* }
  %37 = alloca { i64, i8* }
  %38 = alloca %string
  %39 = alloca { i64, i8* }
  %40 = alloca %string
  %41 = alloca { i64, i8* }
  %42 = alloca %string
  %43 = alloca { i64, i8* }
  %44 = alloca { i64, i8* }
  %45 = alloca %string
  %46 = alloca { i64, i8* }
  %47 = alloca { i64, i8* }
  %48 = alloca %string
  %49 = alloca { i64, i8* }
  %50 = alloca %string
  %51 = alloca { i64, i8* }
  %52 = alloca { i64, i8* }
  %53 = alloca %string
  %54 = alloca { i64, i8* }
  %55 = alloca %string
  %56 = alloca { i64, i8* }
  %57 = alloca %string
  %58 = alloca { i64, i8* }
  %59 = alloca { i64, i8* }
  %60 = alloca %string
  %61 = alloca { i64, i8* }
  %62 = alloca %string
  %63 = alloca { i64, i8* }
  %64 = alloca %string
  %65 = alloca { i64, i8* }
  %66 = alloca %string
  %67 = alloca { i64, i8* }
  %68 = alloca %string
  br i1 %10, label %if_then, label %if_else

if_then:                                          ; preds = %entry
  %69 = load %TypeInfo*, %TypeInfo** %info, align 8
  %70 = bitcast %TypeInfo* %69 to %TypeInfoInt*
  store %TypeInfoInt* %70, %TypeInfoInt** %c
  %71 = load %TypeInfoInt*, %TypeInfoInt** %c, align 8
  %72 = getelementptr inbounds %TypeInfoInt, %TypeInfoInt* %71, i32 0, i32 2
  %73 = load i1, i1* %72, align 1
  br i1 %73, label %if_then9, label %if_else10

if_else:                                          ; preds = %entry
  %74 = load %TypeInfo*, %TypeInfo** %info, align 8
  %75 = getelementptr inbounds %TypeInfo, %TypeInfo* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 4
  br i1 %77, label %if_then11, label %if_else12

exit:                                             ; preds = %if_then55, %if_then52, %if_then43, %loop_continue48, %loop_continue38, %loop_continue, %if_then20, %if_then17, %if_then14, %if_then11, %if_cont13, %if_cont
  %78 = load i32, i32* %.ret.9, align 4
  ret i32 %78

if_then9:                                         ; preds = %if_then
  %79 = load i32, i32* %cur, align 4
  %80 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %80, { i64, i8* }* %11
  %81 = bitcast { i64, i8* }* %11 to { i64, i64 }*
  %82 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %81, i32 0, i32 0
  %83 = load i64, i64* %82
  %84 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %81, i32 0, i32 1
  %85 = load i64, i64* %84
  store %string { i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.305, i32 0, i32 0) }, %string* %12
  %86 = bitcast %string* %12 to { i64, i64 }*
  %87 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %86, i32 0, i32 0
  %88 = load i64, i64* %87
  %89 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %86, i32 0, i32 1
  %90 = load i64, i64* %89
  %91 = call i32 @print_string(i64 %83, i64 %85, i32 %79, i64 %88, i64 %90)
  store i32 %91, i32* %cur, align 4
  br label %if_cont13

if_else10:                                        ; preds = %if_then
  %92 = load i32, i32* %cur, align 4
  %93 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %93, { i64, i8* }* %13
  %94 = bitcast { i64, i8* }* %13 to { i64, i64 }*
  %95 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %94, i32 0, i32 0
  %96 = load i64, i64* %95
  %97 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %94, i32 0, i32 1
  %98 = load i64, i64* %97
  store %string { i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.306, i32 0, i32 0) }, %string* %14
  %99 = bitcast %string* %14 to { i64, i64 }*
  %100 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %99, i32 0, i32 0
  %101 = load i64, i64* %100
  %102 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %99, i32 0, i32 1
  %103 = load i64, i64* %102
  %104 = call i32 @print_string(i64 %96, i64 %98, i32 %92, i64 %101, i64 %103)
  store i32 %104, i32* %cur, align 4
  br label %if_cont13

if_then11:                                        ; preds = %if_else
  %105 = load %TypeInfo*, %TypeInfo** %info, align 8
  %106 = bitcast %TypeInfo* %105 to %TypeInfoReal*
  store %TypeInfoReal* %106, %TypeInfoReal** %c1
  %107 = load i32, i32* %cur, align 4
  %108 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %108, { i64, i8* }* %16
  %109 = bitcast { i64, i8* }* %16 to { i64, i64 }*
  %110 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %109, i32 0, i32 0
  %111 = load i64, i64* %110
  %112 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %109, i32 0, i32 1
  %113 = load i64, i64* %112
  store %string { i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.307, i32 0, i32 0) }, %string* %17
  %114 = bitcast %string* %17 to { i64, i64 }*
  %115 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %114, i32 0, i32 0
  %116 = load i64, i64* %115
  %117 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %114, i32 0, i32 1
  %118 = load i64, i64* %117
  %119 = call i32 @print_string(i64 %111, i64 %113, i32 %107, i64 %116, i64 %118)
  store i32 %119, i32* %cur, align 4
  %120 = load %TypeInfoReal*, %TypeInfoReal** %c1, align 8
  %121 = getelementptr inbounds %TypeInfoReal, %TypeInfoReal* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = zext i32 %122 to i64
  %124 = load i32, i32* %cur, align 4
  %125 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %125, { i64, i8* }* %18
  %126 = bitcast { i64, i8* }* %18 to { i64, i64 }*
  %127 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %126, i32 0, i32 0
  %128 = load i64, i64* %127
  %129 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %126, i32 0, i32 1
  %130 = load i64, i64* %129
  %131 = call i32 @print_u64(i64 %128, i64 %130, i32 %124, i64 %123)
  store i32 %131, i32* %.ret.9, align 4
  br label %exit

if_else12:                                        ; preds = %if_else
  %132 = load %TypeInfo*, %TypeInfo** %info, align 8
  %133 = getelementptr inbounds %TypeInfo, %TypeInfo* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 7
  br i1 %135, label %if_then14, label %if_else15

if_cont:                                          ; preds = %if_cont16
  store i32 0, i32* %.ret.9, align 4
  br label %exit

if_cont13:                                        ; preds = %if_else10, %if_then9
  %136 = load %TypeInfoInt*, %TypeInfoInt** %c, align 8
  %137 = getelementptr inbounds %TypeInfoInt, %TypeInfoInt* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = zext i32 %138 to i64
  %140 = load i32, i32* %cur, align 4
  %141 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %141, { i64, i8* }* %15
  %142 = bitcast { i64, i8* }* %15 to { i64, i64 }*
  %143 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %142, i32 0, i32 0
  %144 = load i64, i64* %143
  %145 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %142, i32 0, i32 1
  %146 = load i64, i64* %145
  %147 = call i32 @print_u64(i64 %144, i64 %146, i32 %140, i64 %139)
  store i32 %147, i32* %.ret.9, align 4
  br label %exit

if_then14:                                        ; preds = %if_else12
  %148 = load i32, i32* %cur, align 4
  %149 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %149, { i64, i8* }* %19
  %150 = bitcast { i64, i8* }* %19 to { i64, i64 }*
  %151 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %150, i32 0, i32 0
  %152 = load i64, i64* %151
  %153 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %150, i32 0, i32 1
  %154 = load i64, i64* %153
  store %string { i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.277, i32 0, i32 0) }, %string* %20
  %155 = bitcast %string* %20 to { i64, i64 }*
  %156 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %155, i32 0, i32 0
  %157 = load i64, i64* %156
  %158 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %155, i32 0, i32 1
  %159 = load i64, i64* %158
  %160 = call i32 @print_string(i64 %152, i64 %154, i32 %148, i64 %157, i64 %159)
  store i32 %160, i32* %.ret.9, align 4
  br label %exit

if_else15:                                        ; preds = %if_else12
  %161 = load %TypeInfo*, %TypeInfo** %info, align 8
  %162 = getelementptr inbounds %TypeInfo, %TypeInfo* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 6
  br i1 %164, label %if_then17, label %if_else18

if_cont16:                                        ; preds = %if_cont19
  br label %if_cont

if_then17:                                        ; preds = %if_else15
  %165 = load %TypeInfo*, %TypeInfo** %info, align 8
  %166 = bitcast %TypeInfo* %165 to %TypeInfoPtr*
  store %TypeInfoPtr* %166, %TypeInfoPtr** %c2
  %167 = load i32, i32* %cur, align 4
  %168 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %168, { i64, i8* }* %21
  %169 = bitcast { i64, i8* }* %21 to { i64, i64 }*
  %170 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %169, i32 0, i32 0
  %171 = load i64, i64* %170
  %172 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %169, i32 0, i32 1
  %173 = load i64, i64* %172
  store %string { i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.308, i32 0, i32 0) }, %string* %22
  %174 = bitcast %string* %22 to { i64, i64 }*
  %175 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %174, i32 0, i32 0
  %176 = load i64, i64* %175
  %177 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %174, i32 0, i32 1
  %178 = load i64, i64* %177
  %179 = call i32 @print_string(i64 %171, i64 %173, i32 %167, i64 %176, i64 %178)
  store i32 %179, i32* %cur, align 4
  %180 = load %TypeInfoPtr*, %TypeInfoPtr** %c2, align 8
  %181 = getelementptr inbounds %TypeInfoPtr, %TypeInfoPtr* %180, i32 0, i32 1
  %182 = load %TypeInfo*, %TypeInfo** %181, align 8
  %183 = load i32, i32* %cur, align 4
  %184 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %184, { i64, i8* }* %23
  %185 = bitcast { i64, i8* }* %23 to { i64, i64 }*
  %186 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %185, i32 0, i32 0
  %187 = load i64, i64* %186
  %188 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %185, i32 0, i32 1
  %189 = load i64, i64* %188
  %190 = call i32 @print_type(i64 %187, i64 %189, i32 %183, %TypeInfo* %182)
  store i32 %190, i32* %.ret.9, align 4
  br label %exit

if_else18:                                        ; preds = %if_else15
  %191 = load %TypeInfo*, %TypeInfo** %info, align 8
  %192 = getelementptr inbounds %TypeInfo, %TypeInfo* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %193, 8
  br i1 %194, label %if_then20, label %if_else21

if_cont19:                                        ; preds = %if_cont22
  br label %if_cont16

if_then20:                                        ; preds = %if_else18
  %195 = load %TypeInfo*, %TypeInfo** %info, align 8
  %196 = bitcast %TypeInfo* %195 to %TypeInfoArray*
  store %TypeInfoArray* %196, %TypeInfoArray** %c3
  %197 = load i32, i32* %cur, align 4
  %198 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %198, { i64, i8* }* %24
  %199 = bitcast { i64, i8* }* %24 to { i64, i64 }*
  %200 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %199, i32 0, i32 0
  %201 = load i64, i64* %200
  %202 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %199, i32 0, i32 1
  %203 = load i64, i64* %202
  store %string { i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.294, i32 0, i32 0) }, %string* %25
  %204 = bitcast %string* %25 to { i64, i64 }*
  %205 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %204, i32 0, i32 0
  %206 = load i64, i64* %205
  %207 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %204, i32 0, i32 1
  %208 = load i64, i64* %207
  %209 = call i32 @print_string(i64 %201, i64 %203, i32 %197, i64 %206, i64 %208)
  store i32 %209, i32* %cur, align 4
  %210 = load %TypeInfoArray*, %TypeInfoArray** %c3, align 8
  %211 = getelementptr inbounds %TypeInfoArray, %TypeInfoArray* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = load i32, i32* %cur, align 4
  %214 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %214, { i64, i8* }* %26
  %215 = bitcast { i64, i8* }* %26 to { i64, i64 }*
  %216 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %215, i32 0, i32 0
  %217 = load i64, i64* %216
  %218 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %215, i32 0, i32 1
  %219 = load i64, i64* %218
  %220 = call i32 @print_u64(i64 %217, i64 %219, i32 %213, i64 %212)
  store i32 %220, i32* %cur, align 4
  %221 = load i32, i32* %cur, align 4
  %222 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %222, { i64, i8* }* %27
  %223 = bitcast { i64, i8* }* %27 to { i64, i64 }*
  %224 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %223, i32 0, i32 0
  %225 = load i64, i64* %224
  %226 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %223, i32 0, i32 1
  %227 = load i64, i64* %226
  store %string { i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.295, i32 0, i32 0) }, %string* %28
  %228 = bitcast %string* %28 to { i64, i64 }*
  %229 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %228, i32 0, i32 0
  %230 = load i64, i64* %229
  %231 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %228, i32 0, i32 1
  %232 = load i64, i64* %231
  %233 = call i32 @print_string(i64 %225, i64 %227, i32 %221, i64 %230, i64 %232)
  store i32 %233, i32* %cur, align 4
  %234 = load %TypeInfoArray*, %TypeInfoArray** %c3, align 8
  %235 = getelementptr inbounds %TypeInfoArray, %TypeInfoArray* %234, i32 0, i32 2
  %236 = load %TypeInfo*, %TypeInfo** %235, align 8
  %237 = load i32, i32* %cur, align 4
  %238 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %238, { i64, i8* }* %29
  %239 = bitcast { i64, i8* }* %29 to { i64, i64 }*
  %240 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %239, i32 0, i32 0
  %241 = load i64, i64* %240
  %242 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %239, i32 0, i32 1
  %243 = load i64, i64* %242
  %244 = call i32 @print_type(i64 %241, i64 %243, i32 %237, %TypeInfo* %236)
  store i32 %244, i32* %.ret.9, align 4
  br label %exit

if_else21:                                        ; preds = %if_else18
  %245 = load %TypeInfo*, %TypeInfo** %info, align 8
  %246 = getelementptr inbounds %TypeInfo, %TypeInfo* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = icmp eq i32 %247, 9
  br i1 %248, label %if_then23, label %if_else24

if_cont22:                                        ; preds = %if_cont25
  br label %if_cont19

if_then23:                                        ; preds = %if_else21
  %249 = load %TypeInfo*, %TypeInfo** %info, align 8
  %250 = bitcast %TypeInfo* %249 to %TypeInfoStruct*
  store %TypeInfoStruct* %250, %TypeInfoStruct** %c4
  %251 = load i32, i32* %cur, align 4
  %252 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %252, { i64, i8* }* %30
  %253 = bitcast { i64, i8* }* %30 to { i64, i64 }*
  %254 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %253, i32 0, i32 0
  %255 = load i64, i64* %254
  %256 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %253, i32 0, i32 1
  %257 = load i64, i64* %256
  store %string { i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.309, i32 0, i32 0) }, %string* %31
  %258 = bitcast %string* %31 to { i64, i64 }*
  %259 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %258, i32 0, i32 0
  %260 = load i64, i64* %259
  %261 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %258, i32 0, i32 1
  %262 = load i64, i64* %261
  %263 = call i32 @print_string(i64 %255, i64 %257, i32 %251, i64 %260, i64 %262)
  store i32 %263, i32* %cur, align 4
  store i32 0, i32* %i
  br label %loop_decide

if_else24:                                        ; preds = %if_else21
  %264 = load %TypeInfo*, %TypeInfo** %info, align 8
  %265 = getelementptr inbounds %TypeInfo, %TypeInfo* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = icmp eq i32 %266, 5
  br i1 %267, label %if_then26, label %if_else27

if_cont25:                                        ; preds = %if_cont28
  br label %if_cont22

loop_decide:                                      ; preds = %loop_increment, %if_then23
  %268 = load %TypeInfoStruct*, %TypeInfoStruct** %c4, align 8
  %269 = getelementptr inbounds %TypeInfoStruct, %TypeInfoStruct* %268, i32 0, i32 2
  %270 = getelementptr inbounds { i64, %TypeInfoStructMember* }, { i64, %TypeInfoStructMember* }* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load i32, i32* %i, align 4
  %273 = sext i32 %272 to i64
  %274 = icmp slt i64 %273, %271
  br i1 %274, label %loop_body, label %loop_continue

if_then26:                                        ; preds = %if_else24
  %275 = load %TypeInfo*, %TypeInfo** %info, align 8
  %276 = bitcast %TypeInfo* %275 to %TypeInfoFn*
  store %TypeInfoFn* %276, %TypeInfoFn** %c5
  %277 = load i32, i32* %cur, align 4
  %278 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %278, { i64, i8* }* %41
  %279 = bitcast { i64, i8* }* %41 to { i64, i64 }*
  %280 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %279, i32 0, i32 0
  %281 = load i64, i64* %280
  %282 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %279, i32 0, i32 1
  %283 = load i64, i64* %282
  store %string { i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.311, i32 0, i32 0) }, %string* %42
  %284 = bitcast %string* %42 to { i64, i64 }*
  %285 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %284, i32 0, i32 0
  %286 = load i64, i64* %285
  %287 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %284, i32 0, i32 1
  %288 = load i64, i64* %287
  %289 = call i32 @print_string(i64 %281, i64 %283, i32 %277, i64 %286, i64 %288)
  store i32 %289, i32* %cur, align 4
  store i32 0, i32* %i6
  br label %loop_decide32

if_else27:                                        ; preds = %if_else24
  %290 = load %TypeInfo*, %TypeInfo** %info, align 8
  %291 = getelementptr inbounds %TypeInfo, %TypeInfo* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = icmp eq i32 %292, 10
  br i1 %293, label %if_then33, label %if_else34

if_cont28:                                        ; preds = %if_cont35
  br label %if_cont25

loop_increment:                                   ; preds = %if_cont31
  %294 = load i32, i32* %i, align 4
  %295 = add i32 %294, 1
  store i32 %295, i32* %i, align 4
  br label %loop_decide

loop_body:                                        ; preds = %loop_decide
  %296 = load %TypeInfoStruct*, %TypeInfoStruct** %c4, align 8
  %297 = getelementptr inbounds %TypeInfoStruct, %TypeInfoStruct* %296, i32 0, i32 2
  %298 = load i32, i32* %i, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds { i64, %TypeInfoStructMember* }, { i64, %TypeInfoStructMember* }* %297, i32 0, i32 1
  %301 = load %TypeInfoStructMember*, %TypeInfoStructMember** %300
  %302 = getelementptr inbounds %TypeInfoStructMember, %TypeInfoStructMember* %301, i64 %299
  %303 = load %TypeInfoStructMember, %TypeInfoStructMember* %302, align 8
  store %TypeInfoStructMember %303, %TypeInfoStructMember* %member
  %304 = getelementptr inbounds %TypeInfoStructMember, %TypeInfoStructMember* %member, i32 0, i32 0
  %305 = load %string, %string* %304, align 8
  %306 = load i32, i32* %cur, align 4
  %307 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %307, { i64, i8* }* %32
  %308 = bitcast { i64, i8* }* %32 to { i64, i64 }*
  %309 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %308, i32 0, i32 0
  %310 = load i64, i64* %309
  %311 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %308, i32 0, i32 1
  %312 = load i64, i64* %311
  store %string %305, %string* %33
  %313 = bitcast %string* %33 to { i64, i64 }*
  %314 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %313, i32 0, i32 0
  %315 = load i64, i64* %314
  %316 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %313, i32 0, i32 1
  %317 = load i64, i64* %316
  %318 = call i32 @print_string(i64 %310, i64 %312, i32 %306, i64 %315, i64 %317)
  store i32 %318, i32* %cur, align 4
  %319 = load i32, i32* %cur, align 4
  %320 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %320, { i64, i8* }* %34
  %321 = bitcast { i64, i8* }* %34 to { i64, i64 }*
  %322 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %321, i32 0, i32 0
  %323 = load i64, i64* %322
  %324 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %321, i32 0, i32 1
  %325 = load i64, i64* %324
  store %string { i64 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.310, i32 0, i32 0) }, %string* %35
  %326 = bitcast %string* %35 to { i64, i64 }*
  %327 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %326, i32 0, i32 0
  %328 = load i64, i64* %327
  %329 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %326, i32 0, i32 1
  %330 = load i64, i64* %329
  %331 = call i32 @print_string(i64 %323, i64 %325, i32 %319, i64 %328, i64 %330)
  store i32 %331, i32* %cur, align 4
  %332 = getelementptr inbounds %TypeInfoStructMember, %TypeInfoStructMember* %member, i32 0, i32 1
  %333 = load %TypeInfo*, %TypeInfo** %332, align 8
  %334 = load i32, i32* %cur, align 4
  %335 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %335, { i64, i8* }* %36
  %336 = bitcast { i64, i8* }* %36 to { i64, i64 }*
  %337 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %336, i32 0, i32 0
  %338 = load i64, i64* %337
  %339 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %336, i32 0, i32 1
  %340 = load i64, i64* %339
  %341 = call i32 @print_type(i64 %338, i64 %340, i32 %334, %TypeInfo* %333)
  store i32 %341, i32* %cur, align 4
  %342 = load %TypeInfoStruct*, %TypeInfoStruct** %c4, align 8
  %343 = getelementptr inbounds %TypeInfoStruct, %TypeInfoStruct* %342, i32 0, i32 2
  %344 = getelementptr inbounds { i64, %TypeInfoStructMember* }, { i64, %TypeInfoStructMember* }* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = sub i64 %345, 1
  %347 = load i32, i32* %i, align 4
  %348 = sext i32 %347 to i64
  %349 = icmp slt i64 %348, %346
  br i1 %349, label %if_then29, label %if_else30

loop_continue:                                    ; preds = %loop_decide
  %350 = load i32, i32* %cur, align 4
  %351 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %351, { i64, i8* }* %37
  %352 = bitcast { i64, i8* }* %37 to { i64, i64 }*
  %353 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %352, i32 0, i32 0
  %354 = load i64, i64* %353
  %355 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %352, i32 0, i32 1
  %356 = load i64, i64* %355
  store %string { i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.299, i32 0, i32 0) }, %string* %38
  %357 = bitcast %string* %38 to { i64, i64 }*
  %358 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %357, i32 0, i32 0
  %359 = load i64, i64* %358
  %360 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %357, i32 0, i32 1
  %361 = load i64, i64* %360
  %362 = call i32 @print_string(i64 %354, i64 %356, i32 %350, i64 %359, i64 %361)
  store i32 %362, i32* %.ret.9, align 4
  br label %exit

if_then29:                                        ; preds = %loop_body
  %363 = load i32, i32* %cur, align 4
  %364 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %364, { i64, i8* }* %39
  %365 = bitcast { i64, i8* }* %39 to { i64, i64 }*
  %366 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %365, i32 0, i32 0
  %367 = load i64, i64* %366
  %368 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %365, i32 0, i32 1
  %369 = load i64, i64* %368
  store %string { i64 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.296, i32 0, i32 0) }, %string* %40
  %370 = bitcast %string* %40 to { i64, i64 }*
  %371 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %370, i32 0, i32 0
  %372 = load i64, i64* %371
  %373 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %370, i32 0, i32 1
  %374 = load i64, i64* %373
  %375 = call i32 @print_string(i64 %367, i64 %369, i32 %363, i64 %372, i64 %374)
  store i32 %375, i32* %cur, align 4
  br label %if_cont31

if_else30:                                        ; preds = %loop_body
  br label %if_cont31

if_cont31:                                        ; preds = %if_else30, %if_then29
  br label %loop_increment

loop_decide32:                                    ; preds = %loop_increment36, %if_then26
  %376 = load %TypeInfoFn*, %TypeInfoFn** %c5, align 8
  %377 = getelementptr inbounds %TypeInfoFn, %TypeInfoFn* %376, i32 0, i32 1
  %378 = getelementptr inbounds { i64, %TypeInfo** }, { i64, %TypeInfo** }* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = load i32, i32* %i6, align 4
  %381 = sext i32 %380 to i64
  %382 = icmp slt i64 %381, %379
  br i1 %382, label %loop_body37, label %loop_continue38

if_then33:                                        ; preds = %if_else27
  %383 = load %TypeInfo*, %TypeInfo** %info, align 8
  %384 = bitcast %TypeInfo* %383 to %TypeInfoEnum*
  store %TypeInfoEnum* %384, %TypeInfoEnum** %c7
  %385 = load i32, i32* %cur, align 4
  %386 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %386, { i64, i8* }* %49
  %387 = bitcast { i64, i8* }* %49 to { i64, i64 }*
  %388 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %387, i32 0, i32 0
  %389 = load i64, i64* %388
  %390 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %387, i32 0, i32 1
  %391 = load i64, i64* %390
  store %string { i64 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.312, i32 0, i32 0) }, %string* %50
  %392 = bitcast %string* %50 to { i64, i64 }*
  %393 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %392, i32 0, i32 0
  %394 = load i64, i64* %393
  %395 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %392, i32 0, i32 1
  %396 = load i64, i64* %395
  %397 = call i32 @print_string(i64 %389, i64 %391, i32 %385, i64 %394, i64 %396)
  store i32 %397, i32* %cur, align 4
  %398 = load %TypeInfoEnum*, %TypeInfoEnum** %c7, align 8
  %399 = getelementptr inbounds %TypeInfoEnum, %TypeInfoEnum* %398, i32 0, i32 2
  %400 = load %TypeInfo*, %TypeInfo** %399, align 8
  %401 = load i32, i32* %cur, align 4
  %402 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %402, { i64, i8* }* %51
  %403 = bitcast { i64, i8* }* %51 to { i64, i64 }*
  %404 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %403, i32 0, i32 0
  %405 = load i64, i64* %404
  %406 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %403, i32 0, i32 1
  %407 = load i64, i64* %406
  %408 = call i32 @print_type(i64 %405, i64 %407, i32 %401, %TypeInfo* %400)
  store i32 %408, i32* %cur, align 4
  %409 = load i32, i32* %cur, align 4
  %410 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %410, { i64, i8* }* %52
  %411 = bitcast { i64, i8* }* %52 to { i64, i64 }*
  %412 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %411, i32 0, i32 0
  %413 = load i64, i64* %412
  %414 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %411, i32 0, i32 1
  %415 = load i64, i64* %414
  store %string { i64 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.297, i32 0, i32 0) }, %string* %53
  %416 = bitcast %string* %53 to { i64, i64 }*
  %417 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %416, i32 0, i32 0
  %418 = load i64, i64* %417
  %419 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %416, i32 0, i32 1
  %420 = load i64, i64* %419
  %421 = call i32 @print_string(i64 %413, i64 %415, i32 %409, i64 %418, i64 %420)
  store i32 %421, i32* %cur, align 4
  store i32 0, i32* %i8
  br label %loop_decide42

if_else34:                                        ; preds = %if_else27
  %422 = load %TypeInfo*, %TypeInfo** %info, align 8
  %423 = getelementptr inbounds %TypeInfo, %TypeInfo* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 4
  %425 = icmp eq i32 %424, 12
  br i1 %425, label %if_then43, label %if_else44

if_cont35:                                        ; preds = %if_cont45
  br label %if_cont28

loop_increment36:                                 ; preds = %if_cont41
  %426 = load i32, i32* %i6, align 4
  %427 = add i32 %426, 1
  store i32 %427, i32* %i6, align 4
  br label %loop_decide32

loop_body37:                                      ; preds = %loop_decide32
  %428 = load %TypeInfoFn*, %TypeInfoFn** %c5, align 8
  %429 = getelementptr inbounds %TypeInfoFn, %TypeInfoFn* %428, i32 0, i32 1
  %430 = load i32, i32* %i6, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds { i64, %TypeInfo** }, { i64, %TypeInfo** }* %429, i32 0, i32 1
  %433 = load %TypeInfo**, %TypeInfo*** %432
  %434 = getelementptr inbounds %TypeInfo*, %TypeInfo** %433, i64 %431
  %435 = load %TypeInfo*, %TypeInfo** %434, align 8
  store %TypeInfo* %435, %TypeInfo** %arg
  %436 = load %TypeInfo*, %TypeInfo** %arg, align 8
  %437 = load i32, i32* %cur, align 4
  %438 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %438, { i64, i8* }* %43
  %439 = bitcast { i64, i8* }* %43 to { i64, i64 }*
  %440 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %439, i32 0, i32 0
  %441 = load i64, i64* %440
  %442 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %439, i32 0, i32 1
  %443 = load i64, i64* %442
  %444 = call i32 @print_type(i64 %441, i64 %443, i32 %437, %TypeInfo* %436)
  store i32 %444, i32* %cur, align 4
  %445 = load %TypeInfoFn*, %TypeInfoFn** %c5, align 8
  %446 = getelementptr inbounds %TypeInfoFn, %TypeInfoFn* %445, i32 0, i32 1
  %447 = getelementptr inbounds { i64, %TypeInfo** }, { i64, %TypeInfo** }* %446, i32 0, i32 0
  %448 = load i64, i64* %447, align 8
  %449 = sub i64 %448, 1
  %450 = load i32, i32* %i6, align 4
  %451 = sext i32 %450 to i64
  %452 = icmp slt i64 %451, %449
  br i1 %452, label %if_then39, label %if_else40

loop_continue38:                                  ; preds = %loop_decide32
  %453 = load i32, i32* %cur, align 4
  %454 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %454, { i64, i8* }* %44
  %455 = bitcast { i64, i8* }* %44 to { i64, i64 }*
  %456 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %455, i32 0, i32 0
  %457 = load i64, i64* %456
  %458 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %455, i32 0, i32 1
  %459 = load i64, i64* %458
  store %string { i64 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.269, i32 0, i32 0) }, %string* %45
  %460 = bitcast %string* %45 to { i64, i64 }*
  %461 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %460, i32 0, i32 0
  %462 = load i64, i64* %461
  %463 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %460, i32 0, i32 1
  %464 = load i64, i64* %463
  %465 = call i32 @print_string(i64 %457, i64 %459, i32 %453, i64 %462, i64 %464)
  store i32 %465, i32* %cur, align 4
  %466 = load %TypeInfoFn*, %TypeInfoFn** %c5, align 8
  %467 = getelementptr inbounds %TypeInfoFn, %TypeInfoFn* %466, i32 0, i32 2
  %468 = load %TypeInfo*, %TypeInfo** %467, align 8
  %469 = load i32, i32* %cur, align 4
  %470 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %470, { i64, i8* }* %46
  %471 = bitcast { i64, i8* }* %46 to { i64, i64 }*
  %472 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %471, i32 0, i32 0
  %473 = load i64, i64* %472
  %474 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %471, i32 0, i32 1
  %475 = load i64, i64* %474
  %476 = call i32 @print_type(i64 %473, i64 %475, i32 %469, %TypeInfo* %468)
  store i32 %476, i32* %.ret.9, align 4
  br label %exit

if_then39:                                        ; preds = %loop_body37
  %477 = load i32, i32* %cur, align 4
  %478 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %478, { i64, i8* }* %47
  %479 = bitcast { i64, i8* }* %47 to { i64, i64 }*
  %480 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %479, i32 0, i32 0
  %481 = load i64, i64* %480
  %482 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %479, i32 0, i32 1
  %483 = load i64, i64* %482
  store %string { i64 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.296, i32 0, i32 0) }, %string* %48
  %484 = bitcast %string* %48 to { i64, i64 }*
  %485 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %484, i32 0, i32 0
  %486 = load i64, i64* %485
  %487 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %484, i32 0, i32 1
  %488 = load i64, i64* %487
  %489 = call i32 @print_string(i64 %481, i64 %483, i32 %477, i64 %486, i64 %488)
  store i32 %489, i32* %cur, align 4
  br label %if_cont41

if_else40:                                        ; preds = %loop_body37
  br label %if_cont41

if_cont41:                                        ; preds = %if_else40, %if_then39
  br label %loop_increment36

loop_decide42:                                    ; preds = %loop_increment46, %if_then33
  %490 = load %TypeInfoEnum*, %TypeInfoEnum** %c7, align 8
  %491 = getelementptr inbounds %TypeInfoEnum, %TypeInfoEnum* %490, i32 0, i32 3
  %492 = getelementptr inbounds { i64, %TypeInfoEnumVariant* }, { i64, %TypeInfoEnumVariant* }* %491, i32 0, i32 0
  %493 = load i64, i64* %492, align 8
  %494 = load i32, i32* %i8, align 4
  %495 = sext i32 %494 to i64
  %496 = icmp slt i64 %495, %493
  br i1 %496, label %loop_body47, label %loop_continue48

if_then43:                                        ; preds = %if_else34
  %497 = load i32, i32* %cur, align 4
  %498 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %498, { i64, i8* }* %63
  %499 = bitcast { i64, i8* }* %63 to { i64, i64 }*
  %500 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %499, i32 0, i32 0
  %501 = load i64, i64* %500
  %502 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %499, i32 0, i32 1
  %503 = load i64, i64* %502
  store %string { i64 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.314, i32 0, i32 0) }, %string* %64
  %504 = bitcast %string* %64 to { i64, i64 }*
  %505 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %504, i32 0, i32 0
  %506 = load i64, i64* %505
  %507 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %504, i32 0, i32 1
  %508 = load i64, i64* %507
  %509 = call i32 @print_string(i64 %501, i64 %503, i32 %497, i64 %506, i64 %508)
  store i32 %509, i32* %.ret.9, align 4
  br label %exit

if_else44:                                        ; preds = %if_else34
  %510 = load %TypeInfo*, %TypeInfo** %info, align 8
  %511 = getelementptr inbounds %TypeInfo, %TypeInfo* %510, i32 0, i32 0
  %512 = load i32, i32* %511, align 4
  %513 = icmp eq i32 %512, 2
  br i1 %513, label %if_then52, label %if_else53

if_cont45:                                        ; preds = %if_cont54
  br label %if_cont35

loop_increment46:                                 ; preds = %if_cont51
  %514 = load i32, i32* %i8, align 4
  %515 = add i32 %514, 1
  store i32 %515, i32* %i8, align 4
  br label %loop_decide42

loop_body47:                                      ; preds = %loop_decide42
  %516 = load %TypeInfoEnum*, %TypeInfoEnum** %c7, align 8
  %517 = getelementptr inbounds %TypeInfoEnum, %TypeInfoEnum* %516, i32 0, i32 3
  %518 = load i32, i32* %i8, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds { i64, %TypeInfoEnumVariant* }, { i64, %TypeInfoEnumVariant* }* %517, i32 0, i32 1
  %521 = load %TypeInfoEnumVariant*, %TypeInfoEnumVariant** %520
  %522 = getelementptr inbounds %TypeInfoEnumVariant, %TypeInfoEnumVariant* %521, i64 %519
  %523 = load %TypeInfoEnumVariant, %TypeInfoEnumVariant* %522, align 8
  store %TypeInfoEnumVariant %523, %TypeInfoEnumVariant* %variant
  %524 = getelementptr inbounds %TypeInfoEnumVariant, %TypeInfoEnumVariant* %variant, i32 0, i32 0
  %525 = load %string, %string* %524, align 8
  %526 = load i32, i32* %cur, align 4
  %527 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %527, { i64, i8* }* %54
  %528 = bitcast { i64, i8* }* %54 to { i64, i64 }*
  %529 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %528, i32 0, i32 0
  %530 = load i64, i64* %529
  %531 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %528, i32 0, i32 1
  %532 = load i64, i64* %531
  store %string %525, %string* %55
  %533 = bitcast %string* %55 to { i64, i64 }*
  %534 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %533, i32 0, i32 0
  %535 = load i64, i64* %534
  %536 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %533, i32 0, i32 1
  %537 = load i64, i64* %536
  %538 = call i32 @print_string(i64 %530, i64 %532, i32 %526, i64 %535, i64 %537)
  store i32 %538, i32* %cur, align 4
  %539 = load i32, i32* %cur, align 4
  %540 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %540, { i64, i8* }* %56
  %541 = bitcast { i64, i8* }* %56 to { i64, i64 }*
  %542 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %541, i32 0, i32 0
  %543 = load i64, i64* %542
  %544 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %541, i32 0, i32 1
  %545 = load i64, i64* %544
  store %string { i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.313, i32 0, i32 0) }, %string* %57
  %546 = bitcast %string* %57 to { i64, i64 }*
  %547 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %546, i32 0, i32 0
  %548 = load i64, i64* %547
  %549 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %546, i32 0, i32 1
  %550 = load i64, i64* %549
  %551 = call i32 @print_string(i64 %543, i64 %545, i32 %539, i64 %548, i64 %550)
  store i32 %551, i32* %cur, align 4
  %552 = getelementptr inbounds %TypeInfoEnumVariant, %TypeInfoEnumVariant* %variant, i32 0, i32 1
  %553 = load i64, i64* %552, align 8
  %554 = load i32, i32* %cur, align 4
  %555 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %555, { i64, i8* }* %58
  %556 = bitcast { i64, i8* }* %58 to { i64, i64 }*
  %557 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %556, i32 0, i32 0
  %558 = load i64, i64* %557
  %559 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %556, i32 0, i32 1
  %560 = load i64, i64* %559
  %561 = call i32 @print_u64(i64 %558, i64 %560, i32 %554, i64 %553)
  store i32 %561, i32* %cur, align 4
  %562 = load %TypeInfoEnum*, %TypeInfoEnum** %c7, align 8
  %563 = getelementptr inbounds %TypeInfoEnum, %TypeInfoEnum* %562, i32 0, i32 3
  %564 = getelementptr inbounds { i64, %TypeInfoEnumVariant* }, { i64, %TypeInfoEnumVariant* }* %563, i32 0, i32 0
  %565 = load i64, i64* %564, align 8
  %566 = sub i64 %565, 1
  %567 = load i32, i32* %i8, align 4
  %568 = sext i32 %567 to i64
  %569 = icmp slt i64 %568, %566
  br i1 %569, label %if_then49, label %if_else50

loop_continue48:                                  ; preds = %loop_decide42
  %570 = load i32, i32* %cur, align 4
  %571 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %571, { i64, i8* }* %59
  %572 = bitcast { i64, i8* }* %59 to { i64, i64 }*
  %573 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %572, i32 0, i32 0
  %574 = load i64, i64* %573
  %575 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %572, i32 0, i32 1
  %576 = load i64, i64* %575
  store %string { i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.299, i32 0, i32 0) }, %string* %60
  %577 = bitcast %string* %60 to { i64, i64 }*
  %578 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %577, i32 0, i32 0
  %579 = load i64, i64* %578
  %580 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %577, i32 0, i32 1
  %581 = load i64, i64* %580
  %582 = call i32 @print_string(i64 %574, i64 %576, i32 %570, i64 %579, i64 %581)
  store i32 %582, i32* %.ret.9, align 4
  br label %exit

if_then49:                                        ; preds = %loop_body47
  %583 = load i32, i32* %cur, align 4
  %584 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %584, { i64, i8* }* %61
  %585 = bitcast { i64, i8* }* %61 to { i64, i64 }*
  %586 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %585, i32 0, i32 0
  %587 = load i64, i64* %586
  %588 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %585, i32 0, i32 1
  %589 = load i64, i64* %588
  store %string { i64 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.296, i32 0, i32 0) }, %string* %62
  %590 = bitcast %string* %62 to { i64, i64 }*
  %591 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %590, i32 0, i32 0
  %592 = load i64, i64* %591
  %593 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %590, i32 0, i32 1
  %594 = load i64, i64* %593
  %595 = call i32 @print_string(i64 %587, i64 %589, i32 %583, i64 %592, i64 %594)
  store i32 %595, i32* %cur, align 4
  br label %if_cont51

if_else50:                                        ; preds = %loop_body47
  br label %if_cont51

if_cont51:                                        ; preds = %if_else50, %if_then49
  br label %loop_increment46

if_then52:                                        ; preds = %if_else44
  %596 = load i32, i32* %cur, align 4
  %597 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %597, { i64, i8* }* %65
  %598 = bitcast { i64, i8* }* %65 to { i64, i64 }*
  %599 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %598, i32 0, i32 0
  %600 = load i64, i64* %599
  %601 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %598, i32 0, i32 1
  %602 = load i64, i64* %601
  store %string { i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.315, i32 0, i32 0) }, %string* %66
  %603 = bitcast %string* %66 to { i64, i64 }*
  %604 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %603, i32 0, i32 0
  %605 = load i64, i64* %604
  %606 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %603, i32 0, i32 1
  %607 = load i64, i64* %606
  %608 = call i32 @print_string(i64 %600, i64 %602, i32 %596, i64 %605, i64 %607)
  store i32 %608, i32* %.ret.9, align 4
  br label %exit

if_else53:                                        ; preds = %if_else44
  %609 = load %TypeInfo*, %TypeInfo** %info, align 8
  %610 = getelementptr inbounds %TypeInfo, %TypeInfo* %609, i32 0, i32 0
  %611 = load i32, i32* %610, align 4
  %612 = icmp eq i32 %611, 11
  br i1 %612, label %if_then55, label %if_else56

if_cont54:                                        ; preds = %if_cont57
  br label %if_cont45

if_then55:                                        ; preds = %if_else53
  %613 = load i32, i32* %cur, align 4
  %614 = load { i64, i8* }, { i64, i8* }* %buf, align 8
  store { i64, i8* } %614, { i64, i8* }* %67
  %615 = bitcast { i64, i8* }* %67 to { i64, i64 }*
  %616 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %615, i32 0, i32 0
  %617 = load i64, i64* %616
  %618 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %615, i32 0, i32 1
  %619 = load i64, i64* %618
  store %string { i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.288, i32 0, i32 0) }, %string* %68
  %620 = bitcast %string* %68 to { i64, i64 }*
  %621 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %620, i32 0, i32 0
  %622 = load i64, i64* %621
  %623 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %620, i32 0, i32 1
  %624 = load i64, i64* %623
  %625 = call i32 @print_string(i64 %617, i64 %619, i32 %613, i64 %622, i64 %624)
  store i32 %625, i32* %.ret.9, align 4
  br label %exit

if_else56:                                        ; preds = %if_else53
  br label %if_cont58

if_cont57:                                        ; preds = %if_cont58
  br label %if_cont54

if_cont58:                                        ; preds = %if_else56
  br label %if_cont57
}

declare double @log10(double)

declare double @pow(double, double)

declare double @floor(double)

declare i8* @clang_parseTranslationUnit(i8*, i8*, i8*, i32, %CXUnsavedFile*, i32, i32)

declare i8* @malloc(i64)

declare void @free(i8*)

declare double @sin(double)

declare double @cos(double)

declare float @fabs(float)

declare double @sqrt(double)

declare i32 @rand()

declare void @srand(i32)

declare float @sinf(float)

declare float @cosf(float)

declare float @powf(float, float)

declare float @sqrtf(float)

declare float @floorf(float)

; Function Attrs: alwaysinline
define float @lerp(float, float, float) #2 {
entry:
  %.ret.19 = alloca float, align 4
  %fraction = alloca float, align 4
  %b = alloca float, align 4
  %a = alloca float, align 4
  store float %2, float* %fraction
  store float %1, float* %b
  store float %0, float* %a
  %3 = load float, float* %a, align 4
  %4 = load float, float* %b, align 4
  %5 = fsub float %4, %3
  %6 = load float, float* %fraction, align 4
  %7 = fmul float %6, %5
  %8 = load float, float* %a, align 4
  %9 = fadd float %8, %7
  store float %9, float* %.ret.19, align 4
  br label %exit

exit:                                             ; preds = %entry
  %10 = load float, float* %.ret.19, align 4
  ret float %10
}

; Function Attrs: alwaysinline
define i32 @max_u32(i32, i32) #2 {
entry:
  %.ret.20 = alloca i32, align 4
  %b = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 %1, i32* %b
  store i32 %0, i32* %a
  %2 = load i32, i32* %b, align 4
  %3 = load i32, i32* %a, align 4
  %4 = icmp ugt i32 %3, %2
  br i1 %4, label %if_then, label %if_else

if_then:                                          ; preds = %entry
  %5 = load i32, i32* %a, align 4
  store i32 %5, i32* %.ret.20, align 4
  br label %exit

if_else:                                          ; preds = %entry
  br label %if_cont

exit:                                             ; preds = %if_cont, %if_then
  %6 = load i32, i32* %.ret.20, align 4
  ret i32 %6

if_cont:                                          ; preds = %if_else
  %7 = load i32, i32* %b, align 4
  store i32 %7, i32* %.ret.20, align 4
  br label %exit
}

; Function Attrs: alwaysinline
define i32 @min_u32(i32, i32) #2 {
entry:
  %.ret.21 = alloca i32, align 4
  %b = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 %1, i32* %b
  store i32 %0, i32* %a
  %2 = load i32, i32* %b, align 4
  %3 = load i32, i32* %a, align 4
  %4 = icmp ult i32 %3, %2
  br i1 %4, label %if_then, label %if_else

if_then:                                          ; preds = %entry
  %5 = load i32, i32* %a, align 4
  store i32 %5, i32* %.ret.21, align 4
  br label %exit

if_else:                                          ; preds = %entry
  br label %if_cont

exit:                                             ; preds = %if_cont, %if_then
  %6 = load i32, i32* %.ret.21, align 4
  ret i32 %6

if_cont:                                          ; preds = %if_else
  %7 = load i32, i32* %b, align 4
  store i32 %7, i32* %.ret.21, align 4
  br label %exit
}

declare i32 @putchar(i32)

declare i8* @memset(i8*, i32, i64)

declare i32 @strcmp(i8*, i8*)

declare i32 @system(i8*)

declare i8* @fopen(i8*, i8*)

declare i32 @fclose(i8*)

declare i32 @fseek(i8*, i32, i32)

declare i64 @fread(i8*, i64, i64, i8*)

declare i32 @ftell(i8*)

define void @assert(i1) {
entry:
  %cond = alloca i1, align 1
  store i1 %0, i1* %cond
  %1 = load i1, i1* %cond, align 1
  %2 = xor i1 %1, true
  br i1 %2, label %if_then, label %if_else

if_then:                                          ; preds = %entry
  call void @llvm.debugtrap()
  br label %if_cont

if_else:                                          ; preds = %entry
  br label %if_cont

exit:                                             ; preds = %if_cont
  ret void

if_cont:                                          ; preds = %if_else, %if_then
  br label %exit
}

define i8* @mem_alloc(i64) {
entry:
  %.ret.22 = alloca i8*, align 8
  %size = alloca i64, align 8
  store i64 %0, i64* %size
  %1 = load i64, i64* %size, align 8
  %2 = load i8* (i64)*, i8* (i64)** getelementptr inbounds (%_Context, %_Context* @_context, i32 0, i32 0), align 8
  %3 = call i8* %2(i64 %1)
  store i8* %3, i8** %.ret.22, align 8
  br label %exit

exit:                                             ; preds = %entry
  %4 = load i8*, i8** %.ret.22, align 8
  ret i8* %4
}

define i8* @mem_calloc(i64, i64) {
entry:
  %.ret.23 = alloca i8*, align 8
  %size = alloca i64, align 8
  %num = alloca i64, align 8
  %tmp = alloca i8*, align 8
  store i64 %1, i64* %size
  store i64 %0, i64* %num
  %2 = load i64, i64* %num, align 8
  %3 = load i64, i64* %size, align 8
  %4 = mul i64 %3, %2
  %5 = load i8* (i64)*, i8* (i64)** getelementptr inbounds (%_Context, %_Context* @_context, i32 0, i32 0), align 8
  %6 = call i8* %5(i64 %4)
  store i8* %6, i8** %tmp
  %7 = load i64, i64* %num, align 8
  %8 = load i64, i64* %size, align 8
  %9 = mul i64 %8, %7
  %10 = load i8*, i8** %tmp, align 8
  %11 = call i8* @memset(i8* %10, i32 0, i64 %9)
  store i8* %11, i8** %.ret.23, align 8
  br label %exit

exit:                                             ; preds = %entry
  %12 = load i8*, i8** %.ret.23, align 8
  ret i8* %12
}

define i8* @mem_realloc(i8*, i64) {
entry:
  %.ret.24 = alloca i8*, align 8
  %size = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  store i64 %1, i64* %size
  store i8* %0, i8** %ptr
  %2 = load i8*, i8** %ptr, align 8
  %3 = icmp eq i8* %2, null
  br i1 %3, label %if_then, label %if_else

if_then:                                          ; preds = %entry
  %4 = load i64, i64* %size, align 8
  %5 = load i8* (i64)*, i8* (i64)** getelementptr inbounds (%_Context, %_Context* @_context, i32 0, i32 0), align 8
  %6 = call i8* %5(i64 %4)
  store i8* %6, i8** %.ret.24, align 8
  br label %exit

if_else:                                          ; preds = %entry
  br label %if_cont

exit:                                             ; preds = %if_cont, %if_then
  %7 = load i8*, i8** %.ret.24, align 8
  ret i8* %7

if_cont:                                          ; preds = %if_else
  %8 = load i64, i64* %size, align 8
  %9 = load i8* (i64)*, i8* (i64)** getelementptr inbounds (%_Context, %_Context* @_context, i32 0, i32 0), align 8
  %10 = call i8* %9(i64 %8)
  store i8* %10, i8** %tmp
  %11 = load i64, i64* %size, align 8
  %12 = load i8*, i8** %ptr, align 8
  %13 = load i8*, i8** %tmp, align 8
  call void @mem_copy(i8* %13, i8* %12, i64 %11)
  %14 = load i8*, i8** %ptr, align 8
  %15 = load void (i8*)*, void (i8*)** getelementptr inbounds (%_Context, %_Context* @_context, i32 0, i32 1), align 8
  call void %15(i8* %14)
  %16 = load i8*, i8** %tmp, align 8
  store i8* %16, i8** %.ret.24, align 8
  br label %exit
}

define void @mem_copy(i8*, i8*, i64) {
entry:
  %size = alloca i64, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %m = alloca i64, align 8
  %d = alloca i64, align 8
  %i = alloca i64, align 8
  %tmp = alloca i64*, align 8
  %i1 = alloca i64, align 8
  %tmp2 = alloca i8*, align 8
  store i64 %2, i64* %size
  store i8* %1, i8** %src
  store i8* %0, i8** %dest
  %3 = load i64, i64* %size, align 8
  %4 = udiv i64 %3, 8
  store i64 %4, i64* %m
  %5 = load i64, i64* %m, align 8
  %6 = mul i64 %5, 8
  %7 = load i64, i64* %size, align 8
  %8 = sub i64 %7, %6
  store i64 %8, i64* %d
  store i64 0, i64* %i
  br label %loop_decide

loop_decide:                                      ; preds = %loop_increment, %entry
  %9 = load i64, i64* %m, align 8
  %10 = load i64, i64* %i, align 8
  %11 = icmp ult i64 %10, %9
  br i1 %11, label %loop_body, label %loop_continue

exit:                                             ; preds = %loop_continue6
  ret void

loop_increment:                                   ; preds = %loop_body
  %12 = load i64, i64* %i, align 8
  %13 = add i64 %12, 1
  store i64 %13, i64* %i, align 8
  br label %loop_decide

loop_body:                                        ; preds = %loop_decide
  %14 = load i8*, i8** %dest, align 8
  %15 = bitcast i8* %14 to i64*
  store i64* %15, i64** %tmp
  %16 = load i8*, i8** %src, align 8
  %17 = bitcast i8* %16 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = load i64*, i64** %tmp, align 8
  store i64 %18, i64* %19, align 8
  %20 = load i8*, i8** %dest, align 8
  %21 = call i8* @ptr_shift_bytes(i8* %20, i64 8)
  store i8* %21, i8** %dest, align 8
  %22 = load i8*, i8** %src, align 8
  %23 = call i8* @ptr_shift_bytes(i8* %22, i64 8)
  store i8* %23, i8** %src, align 8
  br label %loop_increment

loop_continue:                                    ; preds = %loop_decide
  store i64 0, i64* %i1
  br label %loop_decide3

loop_decide3:                                     ; preds = %loop_increment4, %loop_continue
  %24 = load i64, i64* %d, align 8
  %25 = load i64, i64* %i1, align 8
  %26 = icmp ult i64 %25, %24
  br i1 %26, label %loop_body5, label %loop_continue6

loop_increment4:                                  ; preds = %loop_body5
  %27 = load i64, i64* %i1, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %i1, align 8
  br label %loop_decide3

loop_body5:                                       ; preds = %loop_decide3
  %29 = load i8*, i8** %dest, align 8
  store i8* %29, i8** %tmp2
  %30 = load i8*, i8** %src, align 8
  %31 = load i8, i8* %30, align 1
  %32 = load i8*, i8** %dest, align 8
  store i8 %31, i8* %32, align 1
  %33 = load i8*, i8** %dest, align 8
  %34 = call i8* @ptr_shift_bytes(i8* %33, i64 1)
  store i8* %34, i8** %dest, align 8
  %35 = load i8*, i8** %src, align 8
  %36 = call i8* @ptr_shift_bytes(i8* %35, i64 1)
  store i8* %36, i8** %src, align 8
  br label %loop_increment4

loop_continue6:                                   ; preds = %loop_decide3
  br label %exit
}

define void @mem_free(i8*) {
entry:
  %ptr = alloca i8*, align 8
  store i8* %0, i8** %ptr
  %1 = load i8*, i8** %ptr, align 8
  %2 = load void (i8*)*, void (i8*)** getelementptr inbounds (%_Context, %_Context* @_context, i32 0, i32 1), align 8
  call void %2(i8* %1)
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: alwaysinline
define i8* @ptr_shift_bytes(i8*, i64) #2 {
entry:
  %.ret.27 = alloca i8*, align 8
  %bytes = alloca i64, align 8
  %ptr = alloca i8*, align 8
  store i64 %1, i64* %bytes
  store i8* %0, i8** %ptr
  %2 = load i64, i64* %bytes, align 8
  %3 = load i8*, i8** %ptr, align 8
  %4 = ptrtoint i8* %3 to i64
  %5 = add i64 %4, %2
  %6 = inttoptr i64 %5 to i8*
  store i8* %6, i8** %.ret.27, align 8
  br label %exit

exit:                                             ; preds = %entry
  %7 = load i8*, i8** %.ret.27, align 8
  ret i8* %7
}

; Function Attrs: alwaysinline
define i1 @is_flag_u32(i32, i32) #2 {
entry:
  %.ret.25 = alloca i1, align 1
  %flag = alloca i32, align 4
  %v = alloca i32, align 4
  store i32 %1, i32* %flag
  store i32 %0, i32* %v
  %2 = load i32, i32* %flag, align 4
  %3 = load i32, i32* %v, align 4
  %4 = and i32 %3, %2
  %5 = icmp ugt i32 %4, 0
  store i1 %5, i1* %.ret.25, align 1
  br label %exit

exit:                                             ; preds = %entry
  %6 = load i1, i1* %.ret.25, align 1
  ret i1 %6
}

; Function Attrs: alwaysinline
define void @cstr_to_str(%string* noalias sret, i8*) #2 {
entry:
  %.ret.26 = alloca %string, align 8
  %cstr = alloca i8*, align 8
  %.compound.157 = alloca %string, align 8
  store i8* %1, i8** %cstr
  %2 = load i8*, i8** %cstr, align 8
  %3 = load i8*, i8** %cstr, align 8
  %4 = call i64 @strlen(i8* %3)
  %5 = getelementptr inbounds %string, %string* %.compound.157, i32 0, i32 0
  store i64 %4, i64* %5
  %6 = getelementptr inbounds %string, %string* %.compound.157, i32 0, i32 1
  store i8* %2, i8** %6
  %7 = load %string, %string* %.compound.157
  store %string %7, %string* %.ret.26, align 8
  br label %exit

exit:                                             ; preds = %entry
  %8 = load %string, %string* %.ret.26, align 8
  store %string %8, %string* %0
  ret void
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { alwaysinline }

