; ModuleID = 'stencil_1.c'
source_filename = "stencil_1.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"insize\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"output\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  call void @__dp_func_entry(i32 16393, i32 1)
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %insize = alloca i32, align 4
  %input = alloca [16 x i32], align 16
  %output = alloca [14 x i32], align 16
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !14, metadata !DIExpression()), !dbg !15
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %insize, metadata !18, metadata !DIExpression()), !dbg !20
  %0 = ptrtoint i32* %insize to i64
  call void @__dp_write(i32 16395, i64 %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0))
  store i32 16, i32* %insize, align 4, !dbg !20
  call void @llvm.dbg.declare(metadata [16 x i32]* %input, metadata !21, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata [14 x i32]* %output, metadata !26, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %i, metadata !31, metadata !DIExpression()), !dbg !33
  %1 = ptrtoint i32* %i to i64
  call void @__dp_write(i32 16402, i64 %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %i, align 4, !dbg !33
  br label %for.cond, !dbg !34

for.cond:                                         ; preds = %for.inc, %entry
  call void @__dp_loop_entry(i32 16402, i32 0)
  %2 = ptrtoint i32* %i to i64
  call void @__dp_read(i32 16402, i64 %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %3 = load i32, i32* %i, align 4, !dbg !35
  %cmp = icmp slt i32 %3, 16, !dbg !37
  br i1 %cmp, label %for.body, label %for.end, !dbg !38

for.body:                                         ; preds = %for.cond
  call void @__dp_call(i32 16403), !dbg !39
  %call = call i32 @rand() #3, !dbg !39
  %rem = srem i32 %call, 100, !dbg !41
  %4 = ptrtoint i32* %i to i64
  call void @__dp_read(i32 16403, i64 %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %5 = load i32, i32* %i, align 4, !dbg !42
  %idxprom = sext i32 %5 to i64, !dbg !43
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* %input, i64 0, i64 %idxprom, !dbg !43
  %6 = ptrtoint i32* %arrayidx to i64
  call void @__dp_write(i32 16403, i64 %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0))
  store i32 %rem, i32* %arrayidx, align 4, !dbg !44
  br label %for.inc, !dbg !45

for.inc:                                          ; preds = %for.body
  %7 = ptrtoint i32* %i to i64
  call void @__dp_read(i32 16402, i64 %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %8 = load i32, i32* %i, align 4, !dbg !46
  %inc = add nsw i32 %8, 1, !dbg !46
  %9 = ptrtoint i32* %i to i64
  call void @__dp_write(i32 16402, i64 %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store i32 %inc, i32* %i, align 4, !dbg !46
  br label %for.cond, !dbg !47, !llvm.loop !48

for.end:                                          ; preds = %for.cond
  call void @__dp_loop_exit(i32 16407, i32 0)
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !50, metadata !DIExpression()), !dbg !52
  %10 = ptrtoint i32* %i1 to i64
  call void @__dp_write(i32 16407, i64 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  store i32 1, i32* %i1, align 4, !dbg !52
  br label %for.cond2, !dbg !53

for.cond2:                                        ; preds = %for.inc16, %for.end
  call void @__dp_loop_entry(i32 16407, i32 1)
  %11 = ptrtoint i32* %i1 to i64
  call void @__dp_read(i32 16407, i64 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  %12 = load i32, i32* %i1, align 4, !dbg !54
  %cmp3 = icmp slt i32 %12, 15, !dbg !56
  br i1 %cmp3, label %for.body4, label %for.end18, !dbg !57

for.body4:                                        ; preds = %for.cond2
  %13 = ptrtoint i32* %i1 to i64
  call void @__dp_read(i32 16408, i64 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  %14 = load i32, i32* %i1, align 4, !dbg !58
  %sub = sub nsw i32 %14, 1, !dbg !60
  %idxprom5 = sext i32 %sub to i64, !dbg !61
  %arrayidx6 = getelementptr inbounds [16 x i32], [16 x i32]* %input, i64 0, i64 %idxprom5, !dbg !61
  %15 = ptrtoint i32* %arrayidx6 to i64
  call void @__dp_read(i32 16408, i64 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0))
  %16 = load i32, i32* %arrayidx6, align 4, !dbg !61
  %17 = ptrtoint i32* %i1 to i64
  call void @__dp_read(i32 16408, i64 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  %18 = load i32, i32* %i1, align 4, !dbg !62
  %idxprom7 = sext i32 %18 to i64, !dbg !63
  %arrayidx8 = getelementptr inbounds [16 x i32], [16 x i32]* %input, i64 0, i64 %idxprom7, !dbg !63
  %19 = ptrtoint i32* %arrayidx8 to i64
  call void @__dp_read(i32 16408, i64 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0))
  %20 = load i32, i32* %arrayidx8, align 4, !dbg !63
  %add = add nsw i32 %16, %20, !dbg !64
  %21 = ptrtoint i32* %i1 to i64
  call void @__dp_read(i32 16408, i64 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  %22 = load i32, i32* %i1, align 4, !dbg !65
  %add9 = add nsw i32 %22, 1, !dbg !66
  %idxprom10 = sext i32 %add9 to i64, !dbg !67
  %arrayidx11 = getelementptr inbounds [16 x i32], [16 x i32]* %input, i64 0, i64 %idxprom10, !dbg !67
  %23 = ptrtoint i32* %arrayidx11 to i64
  call void @__dp_read(i32 16408, i64 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0))
  %24 = load i32, i32* %arrayidx11, align 4, !dbg !67
  %add12 = add nsw i32 %add, %24, !dbg !68
  %25 = ptrtoint i32* %i1 to i64
  call void @__dp_read(i32 16408, i64 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  %26 = load i32, i32* %i1, align 4, !dbg !69
  %sub13 = sub nsw i32 %26, 1, !dbg !70
  %idxprom14 = sext i32 %sub13 to i64, !dbg !71
  %arrayidx15 = getelementptr inbounds [14 x i32], [14 x i32]* %output, i64 0, i64 %idxprom14, !dbg !71
  %27 = ptrtoint i32* %arrayidx15 to i64
  call void @__dp_write(i32 16408, i64 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0))
  store i32 %add12, i32* %arrayidx15, align 4, !dbg !72
  br label %for.inc16, !dbg !73

for.inc16:                                        ; preds = %for.body4
  %28 = ptrtoint i32* %i1 to i64
  call void @__dp_read(i32 16407, i64 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  %29 = load i32, i32* %i1, align 4, !dbg !74
  %inc17 = add nsw i32 %29, 1, !dbg !74
  %30 = ptrtoint i32* %i1 to i64
  call void @__dp_write(i32 16407, i64 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  store i32 %inc17, i32* %i1, align 4, !dbg !74
  br label %for.cond2, !dbg !75, !llvm.loop !76

for.end18:                                        ; preds = %for.cond2
  call void @__dp_loop_exit(i32 16424, i32 1)
  call void @__dp_finalize(i32 16424), !dbg !78
  ret i32 0, !dbg !78
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

declare void @__dp_init(i32, i32, i32)

declare void @__dp_finalize(i32)

declare void @__dp_read(i32, i64, i8*)

declare void @__dp_write(i32, i64, i8*)

declare void @__dp_call(i32)

declare void @__dp_func_entry(i32, i32)

declare void @__dp_func_exit(i32, i32)

declare void @__dp_loop_entry(i32, i32)

declare void @__dp_loop_exit(i32, i32)

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 8.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "stencil_1.c", directory: "/project/code_snippets/stencil")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 8.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 9, type: !8, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 9, type: !10)
!15 = !DILocation(line: 9, column: 14, scope: !7)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 9, type: !11)
!17 = !DILocation(line: 9, column: 27, scope: !7)
!18 = !DILocalVariable(name: "insize", scope: !7, file: !1, line: 11, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!20 = !DILocation(line: 11, column: 12, scope: !7)
!21 = !DILocalVariable(name: "input", scope: !7, file: !1, line: 14, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 512, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 16)
!25 = !DILocation(line: 14, column: 6, scope: !7)
!26 = !DILocalVariable(name: "output", scope: !7, file: !1, line: 15, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 448, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 14)
!30 = !DILocation(line: 15, column: 6, scope: !7)
!31 = !DILocalVariable(name: "i", scope: !32, file: !1, line: 18, type: !10)
!32 = distinct !DILexicalBlock(scope: !7, file: !1, line: 18, column: 2)
!33 = !DILocation(line: 18, column: 11, scope: !32)
!34 = !DILocation(line: 18, column: 7, scope: !32)
!35 = !DILocation(line: 18, column: 18, scope: !36)
!36 = distinct !DILexicalBlock(scope: !32, file: !1, line: 18, column: 2)
!37 = !DILocation(line: 18, column: 20, scope: !36)
!38 = !DILocation(line: 18, column: 2, scope: !32)
!39 = !DILocation(line: 19, column: 14, scope: !40)
!40 = distinct !DILexicalBlock(scope: !36, file: !1, line: 18, column: 35)
!41 = !DILocation(line: 19, column: 21, scope: !40)
!42 = !DILocation(line: 19, column: 9, scope: !40)
!43 = !DILocation(line: 19, column: 3, scope: !40)
!44 = !DILocation(line: 19, column: 12, scope: !40)
!45 = !DILocation(line: 20, column: 2, scope: !40)
!46 = !DILocation(line: 18, column: 31, scope: !36)
!47 = !DILocation(line: 18, column: 2, scope: !36)
!48 = distinct !{!48, !38, !49}
!49 = !DILocation(line: 20, column: 2, scope: !32)
!50 = !DILocalVariable(name: "i", scope: !51, file: !1, line: 23, type: !10)
!51 = distinct !DILexicalBlock(scope: !7, file: !1, line: 23, column: 2)
!52 = !DILocation(line: 23, column: 11, scope: !51)
!53 = !DILocation(line: 23, column: 7, scope: !51)
!54 = !DILocation(line: 23, column: 18, scope: !55)
!55 = distinct !DILexicalBlock(scope: !51, file: !1, line: 23, column: 2)
!56 = !DILocation(line: 23, column: 20, scope: !55)
!57 = !DILocation(line: 23, column: 2, scope: !51)
!58 = !DILocation(line: 24, column: 25, scope: !59)
!59 = distinct !DILexicalBlock(scope: !55, file: !1, line: 23, column: 39)
!60 = !DILocation(line: 24, column: 27, scope: !59)
!61 = !DILocation(line: 24, column: 19, scope: !59)
!62 = !DILocation(line: 24, column: 40, scope: !59)
!63 = !DILocation(line: 24, column: 34, scope: !59)
!64 = !DILocation(line: 24, column: 32, scope: !59)
!65 = !DILocation(line: 24, column: 51, scope: !59)
!66 = !DILocation(line: 24, column: 53, scope: !59)
!67 = !DILocation(line: 24, column: 45, scope: !59)
!68 = !DILocation(line: 24, column: 43, scope: !59)
!69 = !DILocation(line: 24, column: 10, scope: !59)
!70 = !DILocation(line: 24, column: 12, scope: !59)
!71 = !DILocation(line: 24, column: 3, scope: !59)
!72 = !DILocation(line: 24, column: 17, scope: !59)
!73 = !DILocation(line: 25, column: 2, scope: !59)
!74 = !DILocation(line: 23, column: 35, scope: !55)
!75 = !DILocation(line: 23, column: 2, scope: !55)
!76 = distinct !{!76, !57, !77}
!77 = !DILocation(line: 25, column: 2, scope: !51)
!78 = !DILocation(line: 40, column: 2, scope: !7)
