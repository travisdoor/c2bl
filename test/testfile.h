typedef void *CXIndex;
typedef void *CXType;
typedef void *CXCursor;

CXType
clang_getTypedefDeclUnderlyingType(CXCursor C);

int
foo(int number, char c);

int
bar(void);

int
bar2(void *ptr, long **i);
enum Bar;
struct Homo;
enum Bar { A = 10, B, C };
typedef enum Bar Bar2;
typedef enum E_Foo { I = 10, J, K } Foo;
typedef int Int;

typedef struct {
        int       a;
        char      b;
        long long c;
} Homo;
