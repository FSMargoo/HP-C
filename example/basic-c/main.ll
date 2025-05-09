; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [13 x i8] c"add_int PASS\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"sub_int PASS\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"mul_int PASS\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"div_int PASS\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"mod_int PASS\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"add_long PASS\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"mul_short PASS\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"add_float PASS\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"add_double PASS\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"if_true PASS\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"if_false PASS\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"for_loop PASS\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"while_loop PASS\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"do_while_loop PASS\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"switch_case PASS\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"fact_5 PASS\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"fact_0 PASS\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"struct_access_x PASS\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"struct_access_y PASS\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"enum_red PASS\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"enum_green PASS\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"enum_blue PASS\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"arr_0 PASS\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"arr_1 PASS\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"arr_4 PASS\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"bit_and PASS\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"bit_or PASS\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"bit_xor PASS\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"bit_not PASS\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"logical_and PASS\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"logical_or PASS\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"logical_not PASS\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"cast_int_to_char PASS\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"cast_double_to_int PASS\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"cast_int_to_float PASS\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"square_3 PASS\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"max_4_7 PASS\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"All tests completed.\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @test_arithmetic() local_unnamed_addr #0 {
  tail call void @print(ptr noundef nonnull @.str) #4
  tail call void @print(ptr noundef nonnull @.str.1) #4
  tail call void @print(ptr noundef nonnull @.str.2) #4
  tail call void @print(ptr noundef nonnull @.str.3) #4
  tail call void @print(ptr noundef nonnull @.str.4) #4
  tail call void @print(ptr noundef nonnull @.str.5) #4
  tail call void @print(ptr noundef nonnull @.str.6) #4
  tail call void @print(ptr noundef nonnull @.str.7) #4
  tail call void @print(ptr noundef nonnull @.str.8) #4
  ret void
}

declare dso_local void @print(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @test_control_flow() local_unnamed_addr #0 {
  tail call void @print(ptr noundef nonnull @.str.9) #4
  tail call void @print(ptr noundef nonnull @.str.11) #4
  tail call void @print(ptr noundef nonnull @.str.13) #4
  tail call void @print(ptr noundef nonnull @.str.15) #4
  tail call void @print(ptr noundef nonnull @.str.17) #4
  tail call void @print(ptr noundef nonnull @.str.19) #4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local range(i32 1, -2147483648) i32 @factorial(i32 noundef %0) local_unnamed_addr #2 {
  %2 = icmp slt i32 %0, 2
  br i1 %2, label %36, label %3

3:                                                ; preds = %1
  %4 = add nsw i32 %0, -1
  %5 = icmp ult i32 %0, 9
  br i1 %5, label %27, label %6

6:                                                ; preds = %3
  %7 = and i32 %4, -8
  %8 = sub i32 %0, %7
  %9 = insertelement <4 x i32> poison, i32 %0, i64 0
  %10 = shufflevector <4 x i32> %9, <4 x i32> poison, <4 x i32> zeroinitializer
  %11 = add nsw <4 x i32> %10, <i32 0, i32 -1, i32 -2, i32 -3>
  br label %12

12:                                               ; preds = %12, %6
  %13 = phi i32 [ 0, %6 ], [ %20, %12 ]
  %14 = phi <4 x i32> [ %11, %6 ], [ %21, %12 ]
  %15 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %6 ], [ %18, %12 ]
  %16 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %6 ], [ %19, %12 ]
  %17 = add <4 x i32> %14, <i32 -4, i32 -4, i32 -4, i32 -4>
  %18 = mul <4 x i32> %14, %15
  %19 = mul <4 x i32> %17, %16
  %20 = add nuw i32 %13, 8
  %21 = add <4 x i32> %14, <i32 -8, i32 -8, i32 -8, i32 -8>
  %22 = icmp eq i32 %20, %7
  br i1 %22, label %23, label %12, !llvm.loop !5

23:                                               ; preds = %12
  %24 = mul <4 x i32> %19, %18
  %25 = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %24)
  %26 = icmp eq i32 %4, %7
  br i1 %26, label %36, label %27

27:                                               ; preds = %23, %3
  %28 = phi i32 [ %0, %3 ], [ %8, %23 ]
  %29 = phi i32 [ 1, %3 ], [ %25, %23 ]
  br label %30

30:                                               ; preds = %27, %30
  %31 = phi i32 [ %33, %30 ], [ %28, %27 ]
  %32 = phi i32 [ %34, %30 ], [ %29, %27 ]
  %33 = add nsw i32 %31, -1
  %34 = mul nuw nsw i32 %31, %32
  %35 = icmp ult i32 %31, 3
  br i1 %35, label %36, label %30, !llvm.loop !8

36:                                               ; preds = %30, %23, %1
  %37 = phi i32 [ 1, %1 ], [ %25, %23 ], [ %34, %30 ]
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define dso_local void @test_functions() local_unnamed_addr #0 {
  tail call void @print(ptr noundef nonnull @.str.21) #4
  tail call void @print(ptr noundef nonnull @.str.23) #4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @test_struct_enum() local_unnamed_addr #0 {
  tail call void @print(ptr noundef nonnull @.str.25) #4
  tail call void @print(ptr noundef nonnull @.str.27) #4
  tail call void @print(ptr noundef nonnull @.str.29) #4
  tail call void @print(ptr noundef nonnull @.str.31) #4
  tail call void @print(ptr noundef nonnull @.str.33) #4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @test_arrays() local_unnamed_addr #0 {
  tail call void @print(ptr noundef nonnull @.str.35) #4
  tail call void @print(ptr noundef nonnull @.str.37) #4
  tail call void @print(ptr noundef nonnull @.str.39) #4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @test_bitwise_logical() local_unnamed_addr #0 {
  tail call void @print(ptr noundef nonnull @.str.41) #4
  tail call void @print(ptr noundef nonnull @.str.42) #4
  tail call void @print(ptr noundef nonnull @.str.43) #4
  tail call void @print(ptr noundef nonnull @.str.44) #4
  tail call void @print(ptr noundef nonnull @.str.45) #4
  tail call void @print(ptr noundef nonnull @.str.46) #4
  tail call void @print(ptr noundef nonnull @.str.47) #4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @test_cast() local_unnamed_addr #0 {
  tail call void @print(ptr noundef nonnull @.str.48) #4
  tail call void @print(ptr noundef nonnull @.str.49) #4
  tail call void @print(ptr noundef nonnull @.str.50) #4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @test_macros() local_unnamed_addr #0 {
  tail call void @print(ptr noundef nonnull @.str.51) #4
  tail call void @print(ptr noundef nonnull @.str.52) #4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  tail call void @print(ptr noundef nonnull @.str) #4
  tail call void @print(ptr noundef nonnull @.str.1) #4
  tail call void @print(ptr noundef nonnull @.str.2) #4
  tail call void @print(ptr noundef nonnull @.str.3) #4
  tail call void @print(ptr noundef nonnull @.str.4) #4
  tail call void @print(ptr noundef nonnull @.str.5) #4
  tail call void @print(ptr noundef nonnull @.str.6) #4
  tail call void @print(ptr noundef nonnull @.str.7) #4
  tail call void @print(ptr noundef nonnull @.str.8) #4
  tail call void @print(ptr noundef nonnull @.str.9) #4
  tail call void @print(ptr noundef nonnull @.str.11) #4
  tail call void @print(ptr noundef nonnull @.str.13) #4
  tail call void @print(ptr noundef nonnull @.str.15) #4
  tail call void @print(ptr noundef nonnull @.str.17) #4
  tail call void @print(ptr noundef nonnull @.str.19) #4
  tail call void @print(ptr noundef nonnull @.str.21) #4
  tail call void @print(ptr noundef nonnull @.str.23) #4
  tail call void @print(ptr noundef nonnull @.str.25) #4
  tail call void @print(ptr noundef nonnull @.str.27) #4
  tail call void @print(ptr noundef nonnull @.str.29) #4
  tail call void @print(ptr noundef nonnull @.str.31) #4
  tail call void @print(ptr noundef nonnull @.str.33) #4
  tail call void @print(ptr noundef nonnull @.str.35) #4
  tail call void @print(ptr noundef nonnull @.str.37) #4
  tail call void @print(ptr noundef nonnull @.str.39) #4
  tail call void @print(ptr noundef nonnull @.str.41) #4
  tail call void @print(ptr noundef nonnull @.str.42) #4
  tail call void @print(ptr noundef nonnull @.str.43) #4
  tail call void @print(ptr noundef nonnull @.str.44) #4
  tail call void @print(ptr noundef nonnull @.str.45) #4
  tail call void @print(ptr noundef nonnull @.str.46) #4
  tail call void @print(ptr noundef nonnull @.str.47) #4
  tail call void @print(ptr noundef nonnull @.str.48) #4
  tail call void @print(ptr noundef nonnull @.str.49) #4
  tail call void @print(ptr noundef nonnull @.str.50) #4
  tail call void @print(ptr noundef nonnull @.str.51) #4
  tail call void @print(ptr noundef nonnull @.str.52) #4
  tail call void @print(ptr noundef nonnull @.str.53) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"MaxTLSAlign", i32 65536}
!4 = !{!"clang version 19.1.5"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.isvectorized", i32 1}
!7 = !{!"llvm.loop.unroll.runtime.disable"}
!8 = distinct !{!8, !7, !6}
