; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.MyStruct = type { i32, i32 }
%union.MyUnion = type { i32 }

@g_int = dso_local global i32 42, align 4
@c_int = dso_local constant i32 100, align 4
@v_int = dso_local global i32 0, align 4
@fp_add = dso_local global ptr @add, align 8
@.str = private unnamed_addr constant [13 x i8] c"PASS: \E5\8A\A0\E6\B3\95\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"PASS: \E5\87\8F\E6\B3\95\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"PASS: \E4\B9\98\E6\B3\95\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"PASS: \E9\99\A4\E6\B3\95\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"PASS: \E5\8F\96\E4\BD\99\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"PASS: \E5\B7\A6\E7\A7\BB\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"PASS: \E5\8F\B3\E7\A7\BB\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"PASS: \E4\BD\8D\E4\B8\8E\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"PASS: \E4\BD\8D\E6\88\96\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"PASS: \E4\BD\8D\E5\BC\82\E6\88\96\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"PASS: \E4\BD\8D\E9\9D\9E\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"PASS: \E9\80\BB\E8\BE\91\E9\9D\9E\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"PASS: \E9\80\BB\E8\BE\91\E4\B8\8E\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"PASS: \E9\80\BB\E8\BE\91\E6\88\96\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"PASS: \E4\B8\89\E5\85\83\E8\BF\90\E7\AE\97\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"PASS: \E5\89\8D\E7\BD\AE\E9\80\92\E5\A2\9E\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"FAIL: \E5\89\8D\E7\BD\AE\E9\80\92\E5\A2\9E\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"PASS: \E5\90\8E\E7\BD\AE\E9\80\92\E5\A2\9E\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"FAIL: \E5\90\8E\E7\BD\AE\E9\80\92\E5\A2\9E\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"PASS: \E5\90\8E\E7\BD\AE\E9\80\92\E5\87\8F\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"FAIL: \E5\90\8E\E7\BD\AE\E9\80\92\E5\87\8F\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"PASS: \E5\89\8D\E7\BD\AE\E9\80\92\E5\87\8F\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"FAIL: \E5\89\8D\E7\BD\AE\E9\80\92\E5\87\8F\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"PASS: += \E6\93\8D\E4\BD\9C\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"FAIL: += \E6\93\8D\E4\BD\9C\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"PASS: *= \E6\93\8D\E4\BD\9C\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"FAIL: *= \E6\93\8D\E4\BD\9C\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"PASS: /= \E6\93\8D\E4\BD\9C\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"FAIL: /= \E6\93\8D\E4\BD\9C\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"PASS: %= \E6\93\8D\E4\BD\9C\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"FAIL: %= \E6\93\8D\E4\BD\9C\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"PASS: if-else\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"FAIL: if-else\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"PASS: switch-case\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"FAIL: switch-case\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"PASS: for \E5\BE\AA\E7\8E\AF\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"FAIL: for \E5\BE\AA\E7\8E\AF\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"PASS: while \E5\BE\AA\E7\8E\AF\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"FAIL: while \E5\BE\AA\E7\8E\AF\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"PASS: do-while \E5\BE\AA\E7\8E\AF\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"FAIL: do-while \E5\BE\AA\E7\8E\AF\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"PASS: break & continue\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"FAIL: break & continue\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"PASS: goto \E6\A0\87\E7\AD\BE\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"FAIL: goto \E6\A0\87\E7\AD\BE\00", align 1
@main.local_static = internal global i32 5, align 4
@.str.45 = private unnamed_addr constant [26 x i8] c"PASS: extern \E5\85\A8\E5\B1\80\E5\8F\98\E9\87\8F\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"FAIL: extern \E5\85\A8\E5\B1\80\E5\8F\98\E9\87\8F\00", align 1
@s_int = internal global i32 -1, align 4
@.str.47 = private unnamed_addr constant [26 x i8] c"PASS: static \E5\85\A8\E5\B1\80\E5\8F\98\E9\87\8F\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"FAIL: static \E5\85\A8\E5\B1\80\E5\8F\98\E9\87\8F\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"PASS: static \E5\B1\80\E9\83\A8\E5\8F\98\E9\87\8F\00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"FAIL: static \E5\B1\80\E9\83\A8\E5\8F\98\E9\87\8F\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"PASS: const \E5\8F\98\E9\87\8F\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"FAIL: const \E5\8F\98\E9\87\8F\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"PASS: volatile \E5\8F\98\E9\87\8F\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"FAIL: volatile \E5\8F\98\E9\87\8F\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"PASS: enum\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"FAIL: enum\00", align 1
@__const.main.st = private unnamed_addr constant { i32, i8 } { i32 1, i8 -37 }, align 4
@.str.57 = private unnamed_addr constant [22 x i8] c"PASS: struct & \E4\BD\8D\E5\9F\9F\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"FAIL: struct & \E4\BD\8D\E5\9F\9F\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"PASS: union\00", align 1
@.str.60 = private unnamed_addr constant [12 x i8] c"FAIL: union\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"PASS: \E6\8C\87\E9\92\88\E6\B5\8B\E8\AF\95\00", align 1
@.str.62 = private unnamed_addr constant [19 x i8] c"FAIL: \E6\8C\87\E9\92\88\E6\B5\8B\E8\AF\95\00", align 1
@__const.main.arr = private unnamed_addr constant [2 x [3 x i32]] [[3 x i32] [i32 1, i32 2, i32 3], [3 x i32] [i32 4, i32 5, i32 6]], align 16
@.str.63 = private unnamed_addr constant [25 x i8] c"PASS: \E4\BA\8C\E7\BB\B4\E6\95\B0\E7\BB\84\E6\B5\8B\E8\AF\95\00", align 1
@.str.64 = private unnamed_addr constant [25 x i8] c"FAIL: \E4\BA\8C\E7\BB\B4\E6\95\B0\E7\BB\84\E6\B5\8B\E8\AF\95\00", align 1
@.str.65 = private unnamed_addr constant [25 x i8] c"PASS: \E5\87\BD\E6\95\B0\E6\8C\87\E9\92\88\E8\B0\83\E7\94\A8\00", align 1
@.str.66 = private unnamed_addr constant [25 x i8] c"FAIL: \E5\87\BD\E6\95\B0\E6\8C\87\E9\92\88\E8\B0\83\E7\94\A8\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"\E8\BE\93\E5\87\BA\E6\B5\8B\E8\AF\95: \00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"Hello, \00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"World!\0A\00", align 1
@.str.70 = private unnamed_addr constant [23 x i8] c"PASS: \E9\80\92\E5\BD\92 factorial\00", align 1
@.str.71 = private unnamed_addr constant [23 x i8] c"FAIL: \E9\80\92\E5\BD\92 factorial\00", align 1
@.str.72 = private unnamed_addr constant [23 x i8] c"C99 \E6\A3\80\E6\B5\8B\EF\BC\9A\E4\B8\8D\E6\94\AF\E6\8C\81\00", align 1
@.str.73 = private unnamed_addr constant [22 x i8] c"\E5\8D\95\E5\85\83\E6\B5\8B\E8\AF\95\E7\BB\93\E6\9D\9F\E3\80\82\00", align 1
@arrPrime = internal global [2 x [3 x i32]] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @factorial(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp sle i32 %4, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, ptr %2, align 4
  br label %13

7:                                                ; preds = %1
  %8 = load i32, ptr %3, align 4
  %9 = load i32, ptr %3, align 4
  %10 = sub nsw i32 %9, 1
  %11 = call i32 @factorial(i32 noundef %10)
  %12 = mul nsw i32 %8, %11
  store i32 %12, ptr %2, align 4
  br label %13

13:                                               ; preds = %7, %6
  %14 = load i32, ptr %2, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pointer_test(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %3, align 4
  %5 = add nsw i32 %4, 10
  store i32 %5, ptr %3, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @array_test(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds [3 x i32], ptr %3, i64 1
  %5 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 2
  store i32 99, ptr %5, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr %4, align 4
  %7 = add nsw i32 %5, %6
  %8 = load i32, ptr getelementptr inbounds ([3 x i32], ptr getelementptr inbounds ([2 x [3 x i32]], ptr @arrPrime, i64 0, i64 1), i64 0, i64 2), align 4
  %9 = add nsw i32 %7, %8
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.MyStruct, align 4
  %9 = alloca %union.MyUnion, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x [3 x i32]], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %14

14:                                               ; preds = %0
  call void @print(ptr noundef @.str)
  br label %15

15:                                               ; preds = %14
  br label %16

16:                                               ; preds = %15
  call void @print(ptr noundef @.str.1)
  br label %17

17:                                               ; preds = %16
  br label %18

18:                                               ; preds = %17
  call void @print(ptr noundef @.str.2)
  br label %19

19:                                               ; preds = %18
  br label %20

20:                                               ; preds = %19
  call void @print(ptr noundef @.str.3)
  br label %21

21:                                               ; preds = %20
  br label %22

22:                                               ; preds = %21
  call void @print(ptr noundef @.str.4)
  br label %23

23:                                               ; preds = %22
  br label %24

24:                                               ; preds = %23
  call void @print(ptr noundef @.str.5)
  br label %25

25:                                               ; preds = %24
  br label %26

26:                                               ; preds = %25
  call void @print(ptr noundef @.str.6)
  br label %27

27:                                               ; preds = %26
  br label %28

28:                                               ; preds = %27
  call void @print(ptr noundef @.str.7)
  br label %29

29:                                               ; preds = %28
  br label %30

30:                                               ; preds = %29
  call void @print(ptr noundef @.str.8)
  br label %31

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %31
  call void @print(ptr noundef @.str.9)
  br label %33

33:                                               ; preds = %32
  br label %34

34:                                               ; preds = %33
  call void @print(ptr noundef @.str.10)
  br label %35

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %35
  call void @print(ptr noundef @.str.11)
  br label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37
  call void @print(ptr noundef @.str.12)
  br label %39

39:                                               ; preds = %38
  br label %40

40:                                               ; preds = %39
  call void @print(ptr noundef @.str.13)
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41
  call void @print(ptr noundef @.str.14)
  br label %43

43:                                               ; preds = %42
  store i32 0, ptr %2, align 4
  br label %44

44:                                               ; preds = %43
  %45 = load i32, ptr %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %2, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  call void @print(ptr noundef @.str.15)
  br label %50

49:                                               ; preds = %44
  call void @print(ptr noundef @.str.16)
  br label %50

50:                                               ; preds = %49, %48
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51
  %53 = load i32, ptr %2, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, ptr %2, align 4
  %55 = icmp eq i32 %53, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  call void @print(ptr noundef @.str.17)
  br label %58

57:                                               ; preds = %52
  call void @print(ptr noundef @.str.18)
  br label %58

58:                                               ; preds = %57, %56
  br label %59

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %59
  %61 = load i32, ptr %2, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, ptr %2, align 4
  %63 = icmp eq i32 %61, 2
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  call void @print(ptr noundef @.str.19)
  br label %66

65:                                               ; preds = %60
  call void @print(ptr noundef @.str.20)
  br label %66

66:                                               ; preds = %65, %64
  br label %67

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67
  %69 = load i32, ptr %2, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, ptr %2, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  call void @print(ptr noundef @.str.21)
  br label %74

73:                                               ; preds = %68
  call void @print(ptr noundef @.str.22)
  br label %74

74:                                               ; preds = %73, %72
  br label %75

75:                                               ; preds = %74
  %76 = load i32, ptr %2, align 4
  %77 = add nsw i32 %76, 5
  store i32 %77, ptr %2, align 4
  br label %78

78:                                               ; preds = %75
  %79 = load i32, ptr %2, align 4
  %80 = icmp eq i32 %79, 5
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  call void @print(ptr noundef @.str.23)
  br label %83

82:                                               ; preds = %78
  call void @print(ptr noundef @.str.24)
  br label %83

83:                                               ; preds = %82, %81
  br label %84

84:                                               ; preds = %83
  %85 = load i32, ptr %2, align 4
  %86 = mul nsw i32 %85, 2
  store i32 %86, ptr %2, align 4
  br label %87

87:                                               ; preds = %84
  %88 = load i32, ptr %2, align 4
  %89 = icmp eq i32 %88, 10
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  call void @print(ptr noundef @.str.25)
  br label %92

91:                                               ; preds = %87
  call void @print(ptr noundef @.str.26)
  br label %92

92:                                               ; preds = %91, %90
  br label %93

93:                                               ; preds = %92
  %94 = load i32, ptr %2, align 4
  %95 = sdiv i32 %94, 2
  store i32 %95, ptr %2, align 4
  br label %96

96:                                               ; preds = %93
  %97 = load i32, ptr %2, align 4
  %98 = icmp eq i32 %97, 5
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  call void @print(ptr noundef @.str.27)
  br label %101

100:                                              ; preds = %96
  call void @print(ptr noundef @.str.28)
  br label %101

101:                                              ; preds = %100, %99
  br label %102

102:                                              ; preds = %101
  %103 = load i32, ptr %2, align 4
  %104 = srem i32 %103, 3
  store i32 %104, ptr %2, align 4
  br label %105

105:                                              ; preds = %102
  %106 = load i32, ptr %2, align 4
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  call void @print(ptr noundef @.str.29)
  br label %110

109:                                              ; preds = %105
  call void @print(ptr noundef @.str.30)
  br label %110

110:                                              ; preds = %109, %108
  br label %111

111:                                              ; preds = %110
  store i32 0, ptr %3, align 4
  %112 = load i32, ptr %3, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i32 1, ptr %3, align 4
  br label %116

115:                                              ; preds = %111
  store i32 -1, ptr %3, align 4
  br label %116

116:                                              ; preds = %115, %114
  br label %117

117:                                              ; preds = %116
  %118 = load i32, ptr %3, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  call void @print(ptr noundef @.str.31)
  br label %122

121:                                              ; preds = %117
  call void @print(ptr noundef @.str.32)
  br label %122

122:                                              ; preds = %121, %120
  br label %123

123:                                              ; preds = %122
  %124 = load i32, ptr %3, align 4
  switch i32 %124, label %127 [
    i32 0, label %125
    i32 1, label %126
  ]

125:                                              ; preds = %123
  store i32 10, ptr %3, align 4
  br label %128

126:                                              ; preds = %123
  store i32 20, ptr %3, align 4
  br label %128

127:                                              ; preds = %123
  store i32 -1, ptr %3, align 4
  br label %128

128:                                              ; preds = %127, %126, %125
  br label %129

129:                                              ; preds = %128
  %130 = load i32, ptr %3, align 4
  %131 = icmp eq i32 %130, 20
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  call void @print(ptr noundef @.str.33)
  br label %134

133:                                              ; preds = %129
  call void @print(ptr noundef @.str.34)
  br label %134

134:                                              ; preds = %133, %132
  br label %135

135:                                              ; preds = %134
  store i32 0, ptr %3, align 4
  store i32 0, ptr %4, align 4
  br label %136

136:                                              ; preds = %143, %135
  %137 = load i32, ptr %4, align 4
  %138 = icmp slt i32 %137, 3
  br i1 %138, label %139, label %146

139:                                              ; preds = %136
  %140 = load i32, ptr %4, align 4
  %141 = load i32, ptr %3, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, ptr %3, align 4
  br label %143

143:                                              ; preds = %139
  %144 = load i32, ptr %4, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, ptr %4, align 4
  br label %136, !llvm.loop !5

146:                                              ; preds = %136
  br label %147

147:                                              ; preds = %146
  %148 = load i32, ptr %3, align 4
  %149 = icmp eq i32 %148, 3
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  call void @print(ptr noundef @.str.35)
  br label %152

151:                                              ; preds = %147
  call void @print(ptr noundef @.str.36)
  br label %152

152:                                              ; preds = %151, %150
  br label %153

153:                                              ; preds = %152
  store i32 0, ptr %3, align 4
  br label %154

154:                                              ; preds = %157, %153
  %155 = load i32, ptr %3, align 4
  %156 = icmp slt i32 %155, 3
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i32, ptr %3, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, ptr %3, align 4
  br label %154, !llvm.loop !7

160:                                              ; preds = %154
  br label %161

161:                                              ; preds = %160
  %162 = load i32, ptr %3, align 4
  %163 = icmp eq i32 %162, 3
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  call void @print(ptr noundef @.str.37)
  br label %166

165:                                              ; preds = %161
  call void @print(ptr noundef @.str.38)
  br label %166

166:                                              ; preds = %165, %164
  br label %167

167:                                              ; preds = %166
  store i32 0, ptr %3, align 4
  br label %168

168:                                              ; preds = %171, %167
  %169 = load i32, ptr %3, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, ptr %3, align 4
  br label %171

171:                                              ; preds = %168
  %172 = load i32, ptr %3, align 4
  %173 = icmp slt i32 %172, 3
  br i1 %173, label %168, label %174, !llvm.loop !8

174:                                              ; preds = %171
  br label %175

175:                                              ; preds = %174
  %176 = load i32, ptr %3, align 4
  %177 = icmp eq i32 %176, 3
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  call void @print(ptr noundef @.str.39)
  br label %180

179:                                              ; preds = %175
  call void @print(ptr noundef @.str.40)
  br label %180

180:                                              ; preds = %179, %178
  br label %181

181:                                              ; preds = %180
  store i32 0, ptr %3, align 4
  store i32 0, ptr %5, align 4
  br label %182

182:                                              ; preds = %196, %181
  %183 = load i32, ptr %5, align 4
  %184 = icmp slt i32 %183, 5
  br i1 %184, label %185, label %199

185:                                              ; preds = %182
  %186 = load i32, ptr %5, align 4
  %187 = icmp eq i32 %186, 2
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  br label %196

189:                                              ; preds = %185
  %190 = load i32, ptr %5, align 4
  %191 = icmp eq i32 %190, 4
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  br label %199

193:                                              ; preds = %189
  %194 = load i32, ptr %3, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, ptr %3, align 4
  br label %196

196:                                              ; preds = %193, %188
  %197 = load i32, ptr %5, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, ptr %5, align 4
  br label %182, !llvm.loop !9

199:                                              ; preds = %192, %182
  br label %200

200:                                              ; preds = %199
  %201 = load i32, ptr %3, align 4
  %202 = icmp eq i32 %201, 3
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  call void @print(ptr noundef @.str.41)
  br label %205

204:                                              ; preds = %200
  call void @print(ptr noundef @.str.42)
  br label %205

205:                                              ; preds = %204, %203
  br label %206

206:                                              ; preds = %205
  store i32 0, ptr %3, align 4
  br label %207

207:                                              ; preds = %210, %206
  %208 = load i32, ptr %3, align 4
  %209 = icmp slt i32 %208, 2
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load i32, ptr %3, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, ptr %3, align 4
  br label %207

213:                                              ; preds = %207
  br label %214

214:                                              ; preds = %213
  %215 = load i32, ptr %3, align 4
  %216 = icmp eq i32 %215, 2
  br i1 %216, label %217, label %218

217:                                              ; preds = %214
  call void @print(ptr noundef @.str.43)
  br label %219

218:                                              ; preds = %214
  call void @print(ptr noundef @.str.44)
  br label %219

219:                                              ; preds = %218, %217
  br label %220

220:                                              ; preds = %219
  br label %221

221:                                              ; preds = %220
  %222 = load i32, ptr @g_int, align 4
  %223 = icmp eq i32 %222, 42
  br i1 %223, label %224, label %225

224:                                              ; preds = %221
  call void @print(ptr noundef @.str.45)
  br label %226

225:                                              ; preds = %221
  call void @print(ptr noundef @.str.46)
  br label %226

226:                                              ; preds = %225, %224
  br label %227

227:                                              ; preds = %226
  br label %228

228:                                              ; preds = %227
  %229 = load i32, ptr @s_int, align 4
  %230 = icmp eq i32 %229, -1
  br i1 %230, label %231, label %232

231:                                              ; preds = %228
  call void @print(ptr noundef @.str.47)
  br label %233

232:                                              ; preds = %228
  call void @print(ptr noundef @.str.48)
  br label %233

233:                                              ; preds = %232, %231
  br label %234

234:                                              ; preds = %233
  br label %235

235:                                              ; preds = %234
  %236 = load i32, ptr @main.local_static, align 4
  %237 = icmp eq i32 %236, 5
  br i1 %237, label %238, label %239

238:                                              ; preds = %235
  call void @print(ptr noundef @.str.49)
  br label %240

239:                                              ; preds = %235
  call void @print(ptr noundef @.str.50)
  br label %240

240:                                              ; preds = %239, %238
  br label %241

241:                                              ; preds = %240
  store i32 100, ptr %6, align 4
  br label %242

242:                                              ; preds = %241
  %243 = load i32, ptr %6, align 4
  %244 = icmp eq i32 %243, 100
  br i1 %244, label %245, label %246

245:                                              ; preds = %242
  call void @print(ptr noundef @.str.51)
  br label %247

246:                                              ; preds = %242
  call void @print(ptr noundef @.str.52)
  br label %247

247:                                              ; preds = %246, %245
  br label %248

248:                                              ; preds = %247
  store volatile i32 7, ptr @v_int, align 4
  br label %249

249:                                              ; preds = %248
  %250 = load volatile i32, ptr @v_int, align 4
  %251 = icmp eq i32 %250, 7
  br i1 %251, label %252, label %253

252:                                              ; preds = %249
  call void @print(ptr noundef @.str.53)
  br label %254

253:                                              ; preds = %249
  call void @print(ptr noundef @.str.54)
  br label %254

254:                                              ; preds = %253, %252
  br label %255

255:                                              ; preds = %254
  store i32 2, ptr %7, align 4
  br label %256

256:                                              ; preds = %255
  %257 = load i32, ptr %7, align 4
  %258 = icmp eq i32 %257, 2
  br i1 %258, label %259, label %260

259:                                              ; preds = %256
  call void @print(ptr noundef @.str.55)
  br label %261

260:                                              ; preds = %256
  call void @print(ptr noundef @.str.56)
  br label %261

261:                                              ; preds = %260, %259
  br label %262

262:                                              ; preds = %261
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 @__const.main.st, i64 8, i1 false)
  br label %263

263:                                              ; preds = %262
  %264 = getelementptr inbounds %struct.MyStruct, ptr %8, i32 0, i32 0
  %265 = load i32, ptr %264, align 4
  %266 = icmp eq i32 %265, 1
  br i1 %266, label %267, label %279

267:                                              ; preds = %263
  %268 = getelementptr inbounds %struct.MyStruct, ptr %8, i32 0, i32 1
  %269 = load i32, ptr %268, align 4
  %270 = and i32 %269, 7
  %271 = icmp eq i32 %270, 3
  br i1 %271, label %272, label %279

272:                                              ; preds = %267
  %273 = getelementptr inbounds %struct.MyStruct, ptr %8, i32 0, i32 1
  %274 = load i32, ptr %273, align 4
  %275 = shl i32 %274, 24
  %276 = ashr i32 %275, 27
  %277 = icmp eq i32 %276, -5
  br i1 %277, label %278, label %279

278:                                              ; preds = %272
  call void @print(ptr noundef @.str.57)
  br label %280

279:                                              ; preds = %272, %267, %263
  call void @print(ptr noundef @.str.58)
  br label %280

280:                                              ; preds = %279, %278
  br label %281

281:                                              ; preds = %280
  store i32 1094861636, ptr %9, align 4
  br label %282

282:                                              ; preds = %281
  %283 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 0
  %284 = load i8, ptr %283, align 4
  %285 = sext i8 %284 to i32
  %286 = icmp eq i32 %285, 68
  br i1 %286, label %287, label %288

287:                                              ; preds = %282
  call void @print(ptr noundef @.str.59)
  br label %289

288:                                              ; preds = %282
  call void @print(ptr noundef @.str.60)
  br label %289

289:                                              ; preds = %288, %287
  br label %290

290:                                              ; preds = %289
  store i32 5, ptr %10, align 4
  call void @pointer_test(ptr noundef %10)
  br label %291

291:                                              ; preds = %290
  %292 = load i32, ptr %10, align 4
  %293 = icmp eq i32 %292, 15
  br i1 %293, label %294, label %295

294:                                              ; preds = %291
  call void @print(ptr noundef @.str.61)
  br label %296

295:                                              ; preds = %291
  call void @print(ptr noundef @.str.62)
  br label %296

296:                                              ; preds = %295, %294
  br label %297

297:                                              ; preds = %296
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %11, ptr align 16 @__const.main.arr, i64 24, i1 false)
  %298 = getelementptr inbounds [2 x [3 x i32]], ptr %11, i64 0, i64 0
  call void @array_test(ptr noundef %298)
  br label %299

299:                                              ; preds = %297
  %300 = getelementptr inbounds [2 x [3 x i32]], ptr %11, i64 0, i64 1
  %301 = getelementptr inbounds [3 x i32], ptr %300, i64 0, i64 2
  %302 = load i32, ptr %301, align 4
  %303 = icmp eq i32 %302, 99
  br i1 %303, label %304, label %305

304:                                              ; preds = %299
  call void @print(ptr noundef @.str.63)
  br label %306

305:                                              ; preds = %299
  call void @print(ptr noundef @.str.64)
  br label %306

306:                                              ; preds = %305, %304
  br label %307

307:                                              ; preds = %306
  %308 = load ptr, ptr @fp_add, align 8
  %309 = call i32 %308(i32 noundef 3, i32 noundef 4)
  store i32 %309, ptr %12, align 4
  br label %310

310:                                              ; preds = %307
  %311 = load i32, ptr %12, align 4
  %312 = icmp eq i32 %311, 7
  br i1 %312, label %313, label %314

313:                                              ; preds = %310
  call void @print(ptr noundef @.str.65)
  br label %315

314:                                              ; preds = %310
  call void @print(ptr noundef @.str.66)
  br label %315

315:                                              ; preds = %314, %313
  br label %316

316:                                              ; preds = %315
  call void @print(ptr noundef @.str.67)
  call void @print(ptr noundef @.str.68)
  call void @print(ptr noundef @.str.69)
  %317 = call i32 @factorial(i32 noundef 5)
  store i32 %317, ptr %13, align 4
  br label %318

318:                                              ; preds = %316
  %319 = load i32, ptr %13, align 4
  %320 = icmp eq i32 %319, 120
  br i1 %320, label %321, label %322

321:                                              ; preds = %318
  call void @print(ptr noundef @.str.70)
  br label %323

322:                                              ; preds = %318
  call void @print(ptr noundef @.str.71)
  br label %323

323:                                              ; preds = %322, %321
  br label %324

324:                                              ; preds = %323
  call void @print(ptr noundef @.str.72)
  call void @print(ptr noundef @.str.73)
  ret i32 0
}

declare dso_local void @print(ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"MaxTLSAlign", i32 65536}
!4 = !{!"clang version 19.1.5"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
