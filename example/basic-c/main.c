#include "../../clib/sys/io.h"

#define PASS "PASS: "
#define FAIL "FAIL: "

/* 简单的断言宏 */
#define ASSERT(expr, desc) \
    do { \
        if (expr) { \
            print(PASS desc); \
        } else { \
            print(FAIL desc); \
        } \
    } while (0)

/* 全局变量测试 */
int g_int = 42;
static int s_int = -1;
const int c_int = 100;
static int arr[2][3] = {{1,2,3},{4,5,6}};
static int arrPrime[2][3];
volatile int v_int = 0;

typedef enum { E_ZERO, E_ONE = 1, E_TWO } MyEnum;

typedef struct {
    int a;
    unsigned b : 3;
    signed c : 5;
} MyStruct;

MyStruct structArrayTest[2] = { { .a = 1, .b = 3, .c = -5 }, { .a = 1, .b = 3, .c = -5 } };

typedef union {
    int x;
    char y[4];
} MyUnion;

static int add(int a, int b) {
    return a + b + arrPrime[1][2] + structArrayTest[0].a;
}

int factorial(int n) {
    if (n <= 1) return 1;
    return n * factorial(n - 1);
}

void pointer_test(int *p) {
    *p += 10;
}

void array_test(int arr[2][3]) {
    arr[1][2] = 99;
}

int (*fp_add)(int, int) = add;

#define STR1 "Hello, "
#define STR2 "World!\n"
#define FULL_STR STR1 STR2

int main(void) {
    ASSERT(1 + 2 == 3, "加法");
    ASSERT(5 - 3 == 2, "减法");
    ASSERT(2 * 3 == 6, "乘法");
    ASSERT(8 / 4 == 2, "除法");
    ASSERT(10 % 3 == 1, "取余");
    ASSERT((1 << 2) == 4, "左移");
    ASSERT((8 >> 1) == 4, "右移");
    ASSERT((5 & 3) == 1, "位与");
    ASSERT((5 | 2) == 7, "位或");
    ASSERT((5 ^ 1) == 4, "位异或");
    ASSERT(~0 == -1, "位非");
    ASSERT(!0, "逻辑非");
    ASSERT(1 && 1, "逻辑与");
    ASSERT(1 || 0, "逻辑或");
    ASSERT((3 > 2) ? 10 : 20 == 10, "三元运算");

    MyStruct localStruct;
    localStruct.a = 10;
    localStruct.b = 1;
    localStruct.c = 10;
    MyStruct localStructArray[2];
    localStructArray[1].a = 10;
    localStructArray[1].b = 1;
    localStructArray[1].c = 10;

    {
        int x = 0;
        ASSERT(++x == 1, "前置递增");
        ASSERT(x++ == 1, "后置递增");
        ASSERT(x-- == 2, "后置递减");
        ASSERT(--x == 0, "前置递减");
        x += 5; ASSERT(x == 5, "+= 操作");
        x *= 2; ASSERT(x == 10, "*= 操作");
        x /= 2; ASSERT(x == 5, "/= 操作");
        x %= 3; ASSERT(x == 2, "%= 操作");
    }

    {
        int x = 0;
        if (x == 0) x = 1;
        else x = -1;
        ASSERT(x == 1, "if-else");

        switch (x) {
            case 0: x = 10; break;
            case 1: x = 20; break;
            default: x = -1;
        }
        ASSERT(x == 20, "switch-case");

        x = 0;
        for (int i = 0; i < 3; ++i) x += i;
        ASSERT(x == 3, "for 循环");

        x = 0;
        while (x < 3) { x++; }
        ASSERT(x == 3, "while 循环");

        x = 0;
        do { x++; } while (x < 3);
        ASSERT(x == 3, "do-while 循环");

        x = 0;
        for (int i = 0; i < 5; ++i) {
            if (i == 2) continue;
            if (i == 4) break;
            x++;
        }
        ASSERT(x == 3, "break & continue");

        x = 0;
    start:
        if (x < 2) {
            x++;
            goto start;
        }
        ASSERT(x == 2, "goto 标签");
    }

    {
        extern int g_int;
        static int local_static = 5;
        ASSERT(g_int == 42, "extern 全局变量");
        ASSERT(s_int == -1, "static 全局变量");
        ASSERT(local_static == 5, "static 局部变量");
    }

    {
        int temp = c_int;
        ASSERT(temp == 100, "const 变量");
        v_int = 7;
        ASSERT(v_int == 7, "volatile 变量");
    }

    {
        MyEnum e = E_TWO;
        ASSERT(e == 2, "enum");

        MyStruct st = { .a = 1, .b = 3, .c = -5 };
        ASSERT(st.a == 1 && st.b == 3 && st.c == -5, "struct & 位域");

        MyUnion u;
        u.x = 0x41424344;
        ASSERT(u.y[0] == 'D', "union");
    }

    {
        int a = 5;
        pointer_test(&a);
        ASSERT(a == 15, "指针测试");

        int arr[2][3] = {{1,2,3},{4,5,6}};
        array_test(arr);
        ASSERT(arr[1][2] == 99, "二维数组测试");

        int res = fp_add(3, 4);
        ASSERT(res == 7, "函数指针调用");
    }

    {
        print("输出测试: ");
        print(STR1);
        print(STR2);
    }

    {
        int f5 = factorial(5);
        ASSERT(f5 == 120, "递归 factorial");
    }

#ifdef HAVE_STDC99
    print("C99 检测：支持");
#else
    print("C99 检测：不支持");
#endif

    print("单元测试结束。");
    return 0;
}