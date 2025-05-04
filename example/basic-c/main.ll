; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.MyStruct = type { i32, i32 }
%union.MyUnion = type { i32 }

@g_int = dso_local global i32 42, align 4
@c_int = dso_local constant i32 100, align 4
@v_int = dso_local global i32 0, align 4
@structArrayTest = dso_local global [2 x { i32, i8 }] [{ i32, i8 } { i32 1, i8 -37 }, { i32, i8 } { i32 1, i8 -37 }], align 16
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
  %10 = load i32, ptr @structArrayTest, align 16
  %11 = add nsw i32 %9, %10
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.MyStruct, align 4
  %3 = alloca [2 x %struct.MyStruct], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.MyStruct, align 4
  %11 = alloca %union.MyUnion, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x [3 x i32]], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %16

16:                                               ; preds = %0
  call void @print(ptr noundef @.str)
  br label %17

17:                                               ; preds = %16
  br label %18

18:                                               ; preds = %17
  call void @print(ptr noundef @.str.1)
  br label %19

19:                                               ; preds = %18
  br label %20

20:                                               ; preds = %19
  call void @print(ptr noundef @.str.2)
  br label %21

21:                                               ; preds = %20
  br label %22

22:                                               ; preds = %21
  call void @print(ptr noundef @.str.3)
  br label %23

23:                                               ; preds = %22
  br label %24

24:                                               ; preds = %23
  call void @print(ptr noundef @.str.4)
  br label %25

25:                                               ; preds = %24
  br label %26

26:                                               ; preds = %25
  call void @print(ptr noundef @.str.5)
  br label %27

27:                                               ; preds = %26
  br label %28

28:                                               ; preds = %27
  call void @print(ptr noundef @.str.6)
  br label %29

29:                                               ; preds = %28
  br label %30

30:                                               ; preds = %29
  call void @print(ptr noundef @.str.7)
  br label %31

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %31
  call void @print(ptr noundef @.str.8)
  br label %33

33:                                               ; preds = %32
  br label %34

34:                                               ; preds = %33
  call void @print(ptr noundef @.str.9)
  br label %35

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %35
  call void @print(ptr noundef @.str.10)
  br label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37
  call void @print(ptr noundef @.str.11)
  br label %39

39:                                               ; preds = %38
  br label %40

40:                                               ; preds = %39
  call void @print(ptr noundef @.str.12)
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41
  call void @print(ptr noundef @.str.13)
  br label %43

43:                                               ; preds = %42
  br label %44

44:                                               ; preds = %43
  call void @print(ptr noundef @.str.14)
  br label %45

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.MyStruct, ptr %2, i32 0, i32 0
  store i32 10, ptr %46, align 4
  %47 = getelementptr inbounds %struct.MyStruct, ptr %2, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, -8
  %50 = or i32 %49, 1
  store i32 %50, ptr %47, align 4
  %51 = getelementptr inbounds %struct.MyStruct, ptr %2, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, -249
  %54 = or i32 %53, 80
  store i32 %54, ptr %51, align 4
  %55 = getelementptr inbounds [2 x %struct.MyStruct], ptr %3, i64 0, i64 1
  %56 = getelementptr inbounds %struct.MyStruct, ptr %55, i32 0, i32 0
  store i32 10, ptr %56, align 8
  %57 = getelementptr inbounds [2 x %struct.MyStruct], ptr %3, i64 0, i64 1
  %58 = getelementptr inbounds %struct.MyStruct, ptr %57, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, -8
  %61 = or i32 %60, 1
  store i32 %61, ptr %58, align 4
  %62 = getelementptr inbounds [2 x %struct.MyStruct], ptr %3, i64 0, i64 1
  %63 = getelementptr inbounds %struct.MyStruct, ptr %62, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, -249
  %66 = or i32 %65, 80
  store i32 %66, ptr %63, align 4
  store i32 0, ptr %4, align 4
  br label %67

67:                                               ; preds = %45
  %68 = load i32, ptr %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr %4, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  call void @print(ptr noundef @.str.15)
  br label %73

72:                                               ; preds = %67
  call void @print(ptr noundef @.str.16)
  br label %73

73:                                               ; preds = %72, %71
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74
  %76 = load i32, ptr %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, ptr %4, align 4
  %78 = icmp eq i32 %76, 1
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  call void @print(ptr noundef @.str.17)
  br label %81

80:                                               ; preds = %75
  call void @print(ptr noundef @.str.18)
  br label %81

81:                                               ; preds = %80, %79
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82
  %84 = load i32, ptr %4, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, ptr %4, align 4
  %86 = icmp eq i32 %84, 2
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  call void @print(ptr noundef @.str.19)
  br label %89

88:                                               ; preds = %83
  call void @print(ptr noundef @.str.20)
  br label %89

89:                                               ; preds = %88, %87
  br label %90

90:                                               ; preds = %89
  br label %91

91:                                               ; preds = %90
  %92 = load i32, ptr %4, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, ptr %4, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  call void @print(ptr noundef @.str.21)
  br label %97

96:                                               ; preds = %91
  call void @print(ptr noundef @.str.22)
  br label %97

97:                                               ; preds = %96, %95
  br label %98

98:                                               ; preds = %97
  %99 = load i32, ptr %4, align 4
  %100 = add nsw i32 %99, 5
  store i32 %100, ptr %4, align 4
  br label %101

101:                                              ; preds = %98
  %102 = load i32, ptr %4, align 4
  %103 = icmp eq i32 %102, 5
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  call void @print(ptr noundef @.str.23)
  br label %106

105:                                              ; preds = %101
  call void @print(ptr noundef @.str.24)
  br label %106

106:                                              ; preds = %105, %104
  br label %107

107:                                              ; preds = %106
  %108 = load i32, ptr %4, align 4
  %109 = mul nsw i32 %108, 2
  store i32 %109, ptr %4, align 4
  br label %110

110:                                              ; preds = %107
  %111 = load i32, ptr %4, align 4
  %112 = icmp eq i32 %111, 10
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  call void @print(ptr noundef @.str.25)
  br label %115

114:                                              ; preds = %110
  call void @print(ptr noundef @.str.26)
  br label %115

115:                                              ; preds = %114, %113
  br label %116

116:                                              ; preds = %115
  %117 = load i32, ptr %4, align 4
  %118 = sdiv i32 %117, 2
  store i32 %118, ptr %4, align 4
  br label %119

119:                                              ; preds = %116
  %120 = load i32, ptr %4, align 4
  %121 = icmp eq i32 %120, 5
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  call void @print(ptr noundef @.str.27)
  br label %124

123:                                              ; preds = %119
  call void @print(ptr noundef @.str.28)
  br label %124

124:                                              ; preds = %123, %122
  br label %125

125:                                              ; preds = %124
  %126 = load i32, ptr %4, align 4
  %127 = srem i32 %126, 3
  store i32 %127, ptr %4, align 4
  br label %128

128:                                              ; preds = %125
  %129 = load i32, ptr %4, align 4
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  call void @print(ptr noundef @.str.29)
  br label %133

132:                                              ; preds = %128
  call void @print(ptr noundef @.str.30)
  br label %133

133:                                              ; preds = %132, %131
  br label %134

134:                                              ; preds = %133
  store i32 0, ptr %5, align 4
  %135 = load i32, ptr %5, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store i32 1, ptr %5, align 4
  br label %139

138:                                              ; preds = %134
  store i32 -1, ptr %5, align 4
  br label %139

139:                                              ; preds = %138, %137
  br label %140

140:                                              ; preds = %139
  %141 = load i32, ptr %5, align 4
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  call void @print(ptr noundef @.str.31)
  br label %145

144:                                              ; preds = %140
  call void @print(ptr noundef @.str.32)
  br label %145

145:                                              ; preds = %144, %143
  br label %146

146:                                              ; preds = %145
  %147 = load i32, ptr %5, align 4
  switch i32 %147, label %150 [
    i32 0, label %148
    i32 1, label %149
  ]

148:                                              ; preds = %146
  store i32 10, ptr %5, align 4
  br label %151

149:                                              ; preds = %146
  store i32 20, ptr %5, align 4
  br label %151

150:                                              ; preds = %146
  store i32 -1, ptr %5, align 4
  br label %151

151:                                              ; preds = %150, %149, %148
  br label %152

152:                                              ; preds = %151
  %153 = load i32, ptr %5, align 4
  %154 = icmp eq i32 %153, 20
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  call void @print(ptr noundef @.str.33)
  br label %157

156:                                              ; preds = %152
  call void @print(ptr noundef @.str.34)
  br label %157

157:                                              ; preds = %156, %155
  br label %158

158:                                              ; preds = %157
  store i32 0, ptr %5, align 4
  store i32 0, ptr %6, align 4
  br label %159

159:                                              ; preds = %166, %158
  %160 = load i32, ptr %6, align 4
  %161 = icmp slt i32 %160, 3
  br i1 %161, label %162, label %169

162:                                              ; preds = %159
  %163 = load i32, ptr %6, align 4
  %164 = load i32, ptr %5, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, ptr %5, align 4
  br label %166

166:                                              ; preds = %162
  %167 = load i32, ptr %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, ptr %6, align 4
  br label %159, !llvm.loop !5

169:                                              ; preds = %159
  br label %170

170:                                              ; preds = %169
  %171 = load i32, ptr %5, align 4
  %172 = icmp eq i32 %171, 3
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  call void @print(ptr noundef @.str.35)
  br label %175

174:                                              ; preds = %170
  call void @print(ptr noundef @.str.36)
  br label %175

175:                                              ; preds = %174, %173
  br label %176

176:                                              ; preds = %175
  store i32 0, ptr %5, align 4
  br label %177

177:                                              ; preds = %180, %176
  %178 = load i32, ptr %5, align 4
  %179 = icmp slt i32 %178, 3
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load i32, ptr %5, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, ptr %5, align 4
  br label %177, !llvm.loop !7

183:                                              ; preds = %177
  br label %184

184:                                              ; preds = %183
  %185 = load i32, ptr %5, align 4
  %186 = icmp eq i32 %185, 3
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  call void @print(ptr noundef @.str.37)
  br label %189

188:                                              ; preds = %184
  call void @print(ptr noundef @.str.38)
  br label %189

189:                                              ; preds = %188, %187
  br label %190

190:                                              ; preds = %189
  store i32 0, ptr %5, align 4
  br label %191

191:                                              ; preds = %194, %190
  %192 = load i32, ptr %5, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, ptr %5, align 4
  br label %194

194:                                              ; preds = %191
  %195 = load i32, ptr %5, align 4
  %196 = icmp slt i32 %195, 3
  br i1 %196, label %191, label %197, !llvm.loop !8

197:                                              ; preds = %194
  br label %198

198:                                              ; preds = %197
  %199 = load i32, ptr %5, align 4
  %200 = icmp eq i32 %199, 3
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  call void @print(ptr noundef @.str.39)
  br label %203

202:                                              ; preds = %198
  call void @print(ptr noundef @.str.40)
  br label %203

203:                                              ; preds = %202, %201
  br label %204

204:                                              ; preds = %203
  store i32 0, ptr %5, align 4
  store i32 0, ptr %7, align 4
  br label %205

205:                                              ; preds = %219, %204
  %206 = load i32, ptr %7, align 4
  %207 = icmp slt i32 %206, 5
  br i1 %207, label %208, label %222

208:                                              ; preds = %205
  %209 = load i32, ptr %7, align 4
  %210 = icmp eq i32 %209, 2
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  br label %219

212:                                              ; preds = %208
  %213 = load i32, ptr %7, align 4
  %214 = icmp eq i32 %213, 4
  br i1 %214, label %215, label %216

215:                                              ; preds = %212
  br label %222

216:                                              ; preds = %212
  %217 = load i32, ptr %5, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, ptr %5, align 4
  br label %219

219:                                              ; preds = %216, %211
  %220 = load i32, ptr %7, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, ptr %7, align 4
  br label %205, !llvm.loop !9

222:                                              ; preds = %215, %205
  br label %223

223:                                              ; preds = %222
  %224 = load i32, ptr %5, align 4
  %225 = icmp eq i32 %224, 3
  br i1 %225, label %226, label %227

226:                                              ; preds = %223
  call void @print(ptr noundef @.str.41)
  br label %228

227:                                              ; preds = %223
  call void @print(ptr noundef @.str.42)
  br label %228

228:                                              ; preds = %227, %226
  br label %229

229:                                              ; preds = %228
  store i32 0, ptr %5, align 4
  br label %230

230:                                              ; preds = %233, %229
  %231 = load i32, ptr %5, align 4
  %232 = icmp slt i32 %231, 2
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = load i32, ptr %5, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, ptr %5, align 4
  br label %230

236:                                              ; preds = %230
  br label %237

237:                                              ; preds = %236
  %238 = load i32, ptr %5, align 4
  %239 = icmp eq i32 %238, 2
  br i1 %239, label %240, label %241

240:                                              ; preds = %237
  call void @print(ptr noundef @.str.43)
  br label %242

241:                                              ; preds = %237
  call void @print(ptr noundef @.str.44)
  br label %242

242:                                              ; preds = %241, %240
  br label %243

243:                                              ; preds = %242
  br label %244

244:                                              ; preds = %243
  %245 = load i32, ptr @g_int, align 4
  %246 = icmp eq i32 %245, 42
  br i1 %246, label %247, label %248

247:                                              ; preds = %244
  call void @print(ptr noundef @.str.45)
  br label %249

248:                                              ; preds = %244
  call void @print(ptr noundef @.str.46)
  br label %249

249:                                              ; preds = %248, %247
  br label %250

250:                                              ; preds = %249
  br label %251

251:                                              ; preds = %250
  %252 = load i32, ptr @s_int, align 4
  %253 = icmp eq i32 %252, -1
  br i1 %253, label %254, label %255

254:                                              ; preds = %251
  call void @print(ptr noundef @.str.47)
  br label %256

255:                                              ; preds = %251
  call void @print(ptr noundef @.str.48)
  br label %256

256:                                              ; preds = %255, %254
  br label %257

257:                                              ; preds = %256
  br label %258

258:                                              ; preds = %257
  %259 = load i32, ptr @main.local_static, align 4
  %260 = icmp eq i32 %259, 5
  br i1 %260, label %261, label %262

261:                                              ; preds = %258
  call void @print(ptr noundef @.str.49)
  br label %263

262:                                              ; preds = %258
  call void @print(ptr noundef @.str.50)
  br label %263

263:                                              ; preds = %262, %261
  br label %264

264:                                              ; preds = %263
  store i32 100, ptr %8, align 4
  br label %265

265:                                              ; preds = %264
  %266 = load i32, ptr %8, align 4
  %267 = icmp eq i32 %266, 100
  br i1 %267, label %268, label %269

268:                                              ; preds = %265
  call void @print(ptr noundef @.str.51)
  br label %270

269:                                              ; preds = %265
  call void @print(ptr noundef @.str.52)
  br label %270

270:                                              ; preds = %269, %268
  br label %271

271:                                              ; preds = %270
  store volatile i32 7, ptr @v_int, align 4
  br label %272

272:                                              ; preds = %271
  %273 = load volatile i32, ptr @v_int, align 4
  %274 = icmp eq i32 %273, 7
  br i1 %274, label %275, label %276

275:                                              ; preds = %272
  call void @print(ptr noundef @.str.53)
  br label %277

276:                                              ; preds = %272
  call void @print(ptr noundef @.str.54)
  br label %277

277:                                              ; preds = %276, %275
  br label %278

278:                                              ; preds = %277
  store i32 2, ptr %9, align 4
  br label %279

279:                                              ; preds = %278
  %280 = load i32, ptr %9, align 4
  %281 = icmp eq i32 %280, 2
  br i1 %281, label %282, label %283

282:                                              ; preds = %279
  call void @print(ptr noundef @.str.55)
  br label %284

283:                                              ; preds = %279
  call void @print(ptr noundef @.str.56)
  br label %284

284:                                              ; preds = %283, %282
  br label %285

285:                                              ; preds = %284
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %10, ptr align 4 @__const.main.st, i64 8, i1 false)
  br label %286

286:                                              ; preds = %285
  %287 = getelementptr inbounds %struct.MyStruct, ptr %10, i32 0, i32 0
  %288 = load i32, ptr %287, align 4
  %289 = icmp eq i32 %288, 1
  br i1 %289, label %290, label %302

290:                                              ; preds = %286
  %291 = getelementptr inbounds %struct.MyStruct, ptr %10, i32 0, i32 1
  %292 = load i32, ptr %291, align 4
  %293 = and i32 %292, 7
  %294 = icmp eq i32 %293, 3
  br i1 %294, label %295, label %302

295:                                              ; preds = %290
  %296 = getelementptr inbounds %struct.MyStruct, ptr %10, i32 0, i32 1
  %297 = load i32, ptr %296, align 4
  %298 = shl i32 %297, 24
  %299 = ashr i32 %298, 27
  %300 = icmp eq i32 %299, -5
  br i1 %300, label %301, label %302

301:                                              ; preds = %295
  call void @print(ptr noundef @.str.57)
  br label %303

302:                                              ; preds = %295, %290, %286
  call void @print(ptr noundef @.str.58)
  br label %303

303:                                              ; preds = %302, %301
  br label %304

304:                                              ; preds = %303
  store i32 1094861636, ptr %11, align 4
  br label %305

305:                                              ; preds = %304
  %306 = getelementptr inbounds [4 x i8], ptr %11, i64 0, i64 0
  %307 = load i8, ptr %306, align 4
  %308 = sext i8 %307 to i32
  %309 = icmp eq i32 %308, 68
  br i1 %309, label %310, label %311

310:                                              ; preds = %305
  call void @print(ptr noundef @.str.59)
  br label %312

311:                                              ; preds = %305
  call void @print(ptr noundef @.str.60)
  br label %312

312:                                              ; preds = %311, %310
  br label %313

313:                                              ; preds = %312
  store i32 5, ptr %12, align 4
  call void @pointer_test(ptr noundef %12)
  br label %314

314:                                              ; preds = %313
  %315 = load i32, ptr %12, align 4
  %316 = icmp eq i32 %315, 15
  br i1 %316, label %317, label %318

317:                                              ; preds = %314
  call void @print(ptr noundef @.str.61)
  br label %319

318:                                              ; preds = %314
  call void @print(ptr noundef @.str.62)
  br label %319

319:                                              ; preds = %318, %317
  br label %320

320:                                              ; preds = %319
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %13, ptr align 16 @__const.main.arr, i64 24, i1 false)
  %321 = getelementptr inbounds [2 x [3 x i32]], ptr %13, i64 0, i64 0
  call void @array_test(ptr noundef %321)
  br label %322

322:                                              ; preds = %320
  %323 = getelementptr inbounds [2 x [3 x i32]], ptr %13, i64 0, i64 1
  %324 = getelementptr inbounds [3 x i32], ptr %323, i64 0, i64 2
  %325 = load i32, ptr %324, align 4
  %326 = icmp eq i32 %325, 99
  br i1 %326, label %327, label %328

327:                                              ; preds = %322
  call void @print(ptr noundef @.str.63)
  br label %329

328:                                              ; preds = %322
  call void @print(ptr noundef @.str.64)
  br label %329

329:                                              ; preds = %328, %327
  br label %330

330:                                              ; preds = %329
  %331 = load ptr, ptr @fp_add, align 8
  %332 = call i32 %331(i32 noundef 3, i32 noundef 4)
  store i32 %332, ptr %14, align 4
  br label %333

333:                                              ; preds = %330
  %334 = load i32, ptr %14, align 4
  %335 = icmp eq i32 %334, 7
  br i1 %335, label %336, label %337

336:                                              ; preds = %333
  call void @print(ptr noundef @.str.65)
  br label %338

337:                                              ; preds = %333
  call void @print(ptr noundef @.str.66)
  br label %338

338:                                              ; preds = %337, %336
  br label %339

339:                                              ; preds = %338
  call void @print(ptr noundef @.str.67)
  call void @print(ptr noundef @.str.68)
  call void @print(ptr noundef @.str.69)
  %340 = call i32 @factorial(i32 noundef 5)
  store i32 %340, ptr %15, align 4
  br label %341

341:                                              ; preds = %339
  %342 = load i32, ptr %15, align 4
  %343 = icmp eq i32 %342, 120
  br i1 %343, label %344, label %345

344:                                              ; preds = %341
  call void @print(ptr noundef @.str.70)
  br label %346

345:                                              ; preds = %341
  call void @print(ptr noundef @.str.71)
  br label %346

346:                                              ; preds = %345, %344
  br label %347

347:                                              ; preds = %346
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
