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

typedef int Int;

enum Month;
enum Month;
enum Month;

typedef enum Day2 Day;

enum Day2 {
	Sunday,
	Monday
};

typedef enum Month2 {
	January,
	February
} Month;
