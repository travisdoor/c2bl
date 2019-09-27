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

enum Day2 {
	Sunday,
	Monday
};


typedef enum Day2 Day2;

typedef enum {
	January,
	February
} Month;

typedef struct Person_S {
    int age;
    const char *name;
} Person;
