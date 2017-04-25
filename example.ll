
define fastcc void @app0(i64* %sp, i64 %clos) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %apply
  ]

apply:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  tail call void %fn0(i64* %sp, i64 %clos)
  ret void

partial:
  ...
  ret void
}

define fastcc void @app1(i64* %sp, i64 %clos, i64 %a1) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %overapply0
    i64 1, label %apply
  ]

overapply0:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  ...
  ret void

apply:
  %fn1 = inttoptr i64 %fn to void (i64*, i64, i64)*
  tail call void %fn1(i64* %sp, i64 %clos, i64 %a1)
  ret void

partial:
  ...
  ret void
}

define fastcc void @app2(i64* %sp, i64 %clos, i64 %a1, i64 %a2) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %overapply0
    i64 1, label %overapply1
    i64 2, label %apply
  ]

overapply0:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  ...
  ret void

overapply1:
  %fn1 = inttoptr i64 %fn to void (i64*, i64, i64)*
  ...
  ret void

apply:
  %fn2 = inttoptr i64 %fn to void (i64*, i64, i64, i64)*
  tail call void %fn2(i64* %sp, i64 %clos, i64 %a1, i64 %a2)
  ret void

partial:
  ...
  ret void
}

define fastcc void @app3(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %overapply0
    i64 1, label %overapply1
    i64 2, label %overapply2
    i64 3, label %apply
  ]

overapply0:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  ...
  ret void

overapply1:
  %fn1 = inttoptr i64 %fn to void (i64*, i64, i64)*
  ...
  ret void

overapply2:
  %fn2 = inttoptr i64 %fn to void (i64*, i64, i64, i64)*
  ...
  ret void

apply:
  %fn3 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64)*
  tail call void %fn3(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3)
  ret void

partial:
  ...
  ret void
}

define fastcc void @app4(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %overapply0
    i64 1, label %overapply1
    i64 2, label %overapply2
    i64 3, label %overapply3
    i64 4, label %apply
  ]

overapply0:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  ...
  ret void

overapply1:
  %fn1 = inttoptr i64 %fn to void (i64*, i64, i64)*
  ...
  ret void

overapply2:
  %fn2 = inttoptr i64 %fn to void (i64*, i64, i64, i64)*
  ...
  ret void

overapply3:
  %fn3 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64)*
  ...
  ret void

apply:
  %fn4 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64)*
  tail call void %fn4(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4)
  ret void

partial:
  ...
  ret void
}

define fastcc void @app5(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %overapply0
    i64 1, label %overapply1
    i64 2, label %overapply2
    i64 3, label %overapply3
    i64 4, label %overapply4
    i64 5, label %apply
  ]

overapply0:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  ...
  ret void

overapply1:
  %fn1 = inttoptr i64 %fn to void (i64*, i64, i64)*
  ...
  ret void

overapply2:
  %fn2 = inttoptr i64 %fn to void (i64*, i64, i64, i64)*
  ...
  ret void

overapply3:
  %fn3 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64)*
  ...
  ret void

overapply4:
  %fn4 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64)*
  ...
  ret void

apply:
  %fn5 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64)*
  tail call void %fn5(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5)
  ret void

partial:
  ...
  ret void
}

define fastcc void @app6(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %overapply0
    i64 1, label %overapply1
    i64 2, label %overapply2
    i64 3, label %overapply3
    i64 4, label %overapply4
    i64 5, label %overapply5
    i64 6, label %apply
  ]

overapply0:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  ...
  ret void

overapply1:
  %fn1 = inttoptr i64 %fn to void (i64*, i64, i64)*
  ...
  ret void

overapply2:
  %fn2 = inttoptr i64 %fn to void (i64*, i64, i64, i64)*
  ...
  ret void

overapply3:
  %fn3 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64)*
  ...
  ret void

overapply4:
  %fn4 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply5:
  %fn5 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

apply:
  %fn6 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64)*
  tail call void %fn6(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6)
  ret void

partial:
  ...
  ret void
}

define fastcc void @app7(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %overapply0
    i64 1, label %overapply1
    i64 2, label %overapply2
    i64 3, label %overapply3
    i64 4, label %overapply4
    i64 5, label %overapply5
    i64 6, label %overapply6
    i64 7, label %apply
  ]

overapply0:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  ...
  ret void

overapply1:
  %fn1 = inttoptr i64 %fn to void (i64*, i64, i64)*
  ...
  ret void

overapply2:
  %fn2 = inttoptr i64 %fn to void (i64*, i64, i64, i64)*
  ...
  ret void

overapply3:
  %fn3 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64)*
  ...
  ret void

overapply4:
  %fn4 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply5:
  %fn5 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply6:
  %fn6 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

apply:
  %fn7 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64)*
  tail call void %fn7(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7)
  ret void

partial:
  ...
  ret void
}

define fastcc void @app8(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %overapply0
    i64 1, label %overapply1
    i64 2, label %overapply2
    i64 3, label %overapply3
    i64 4, label %overapply4
    i64 5, label %overapply5
    i64 6, label %overapply6
    i64 7, label %overapply7
    i64 8, label %apply
  ]

overapply0:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  ...
  ret void

overapply1:
  %fn1 = inttoptr i64 %fn to void (i64*, i64, i64)*
  ...
  ret void

overapply2:
  %fn2 = inttoptr i64 %fn to void (i64*, i64, i64, i64)*
  ...
  ret void

overapply3:
  %fn3 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64)*
  ...
  ret void

overapply4:
  %fn4 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply5:
  %fn5 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply6:
  %fn6 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply7:
  %fn7 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

apply:
  %fn8 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  tail call void %fn8(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8)
  ret void

partial:
  ...
  ret void
}

define fastcc void @app9(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %overapply0
    i64 1, label %overapply1
    i64 2, label %overapply2
    i64 3, label %overapply3
    i64 4, label %overapply4
    i64 5, label %overapply5
    i64 6, label %overapply6
    i64 7, label %overapply7
    i64 8, label %overapply8
    i64 9, label %apply
  ]

overapply0:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  ...
  ret void

overapply1:
  %fn1 = inttoptr i64 %fn to void (i64*, i64, i64)*
  ...
  ret void

overapply2:
  %fn2 = inttoptr i64 %fn to void (i64*, i64, i64, i64)*
  ...
  ret void

overapply3:
  %fn3 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64)*
  ...
  ret void

overapply4:
  %fn4 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply5:
  %fn5 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply6:
  %fn6 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply7:
  %fn7 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply8:
  %fn8 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

apply:
  %fn9 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  tail call void %fn9(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9)
  ret void

partial:
  ...
  ret void
}

define fastcc void @app10(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %overapply0
    i64 1, label %overapply1
    i64 2, label %overapply2
    i64 3, label %overapply3
    i64 4, label %overapply4
    i64 5, label %overapply5
    i64 6, label %overapply6
    i64 7, label %overapply7
    i64 8, label %overapply8
    i64 9, label %overapply9
    i64 10, label %apply
  ]

overapply0:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  ...
  ret void

overapply1:
  %fn1 = inttoptr i64 %fn to void (i64*, i64, i64)*
  ...
  ret void

overapply2:
  %fn2 = inttoptr i64 %fn to void (i64*, i64, i64, i64)*
  ...
  ret void

overapply3:
  %fn3 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64)*
  ...
  ret void

overapply4:
  %fn4 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply5:
  %fn5 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply6:
  %fn6 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply7:
  %fn7 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply8:
  %fn8 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply9:
  %fn9 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

apply:
  %fn10 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  tail call void %fn10(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10)
  ret void

partial:
  ...
  ret void
}

define fastcc void @app11(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %overapply0
    i64 1, label %overapply1
    i64 2, label %overapply2
    i64 3, label %overapply3
    i64 4, label %overapply4
    i64 5, label %overapply5
    i64 6, label %overapply6
    i64 7, label %overapply7
    i64 8, label %overapply8
    i64 9, label %overapply9
    i64 10, label %overapply10
    i64 11, label %apply
  ]

overapply0:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  ...
  ret void

overapply1:
  %fn1 = inttoptr i64 %fn to void (i64*, i64, i64)*
  ...
  ret void

overapply2:
  %fn2 = inttoptr i64 %fn to void (i64*, i64, i64, i64)*
  ...
  ret void

overapply3:
  %fn3 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64)*
  ...
  ret void

overapply4:
  %fn4 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply5:
  %fn5 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply6:
  %fn6 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply7:
  %fn7 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply8:
  %fn8 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply9:
  %fn9 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply10:
  %fn10 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

apply:
  %fn11 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  tail call void %fn11(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11)
  ret void

partial:
  ...
  ret void
}

define fastcc void @app12(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %overapply0
    i64 1, label %overapply1
    i64 2, label %overapply2
    i64 3, label %overapply3
    i64 4, label %overapply4
    i64 5, label %overapply5
    i64 6, label %overapply6
    i64 7, label %overapply7
    i64 8, label %overapply8
    i64 9, label %overapply9
    i64 10, label %overapply10
    i64 11, label %overapply11
    i64 12, label %apply
  ]

overapply0:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  ...
  ret void

overapply1:
  %fn1 = inttoptr i64 %fn to void (i64*, i64, i64)*
  ...
  ret void

overapply2:
  %fn2 = inttoptr i64 %fn to void (i64*, i64, i64, i64)*
  ...
  ret void

overapply3:
  %fn3 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64)*
  ...
  ret void

overapply4:
  %fn4 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply5:
  %fn5 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply6:
  %fn6 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply7:
  %fn7 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply8:
  %fn8 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply9:
  %fn9 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply10:
  %fn10 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply11:
  %fn11 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

apply:
  %fn12 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  tail call void %fn12(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12)
  ret void

partial:
  ...
  ret void
}

define fastcc void @app13(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %overapply0
    i64 1, label %overapply1
    i64 2, label %overapply2
    i64 3, label %overapply3
    i64 4, label %overapply4
    i64 5, label %overapply5
    i64 6, label %overapply6
    i64 7, label %overapply7
    i64 8, label %overapply8
    i64 9, label %overapply9
    i64 10, label %overapply10
    i64 11, label %overapply11
    i64 12, label %overapply12
    i64 13, label %apply
  ]

overapply0:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  ...
  ret void

overapply1:
  %fn1 = inttoptr i64 %fn to void (i64*, i64, i64)*
  ...
  ret void

overapply2:
  %fn2 = inttoptr i64 %fn to void (i64*, i64, i64, i64)*
  ...
  ret void

overapply3:
  %fn3 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64)*
  ...
  ret void

overapply4:
  %fn4 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply5:
  %fn5 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply6:
  %fn6 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply7:
  %fn7 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply8:
  %fn8 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply9:
  %fn9 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply10:
  %fn10 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply11:
  %fn11 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply12:
  %fn12 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

apply:
  %fn13 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  tail call void %fn13(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13)
  ret void

partial:
  ...
  ret void
}

define fastcc void @app14(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %overapply0
    i64 1, label %overapply1
    i64 2, label %overapply2
    i64 3, label %overapply3
    i64 4, label %overapply4
    i64 5, label %overapply5
    i64 6, label %overapply6
    i64 7, label %overapply7
    i64 8, label %overapply8
    i64 9, label %overapply9
    i64 10, label %overapply10
    i64 11, label %overapply11
    i64 12, label %overapply12
    i64 13, label %overapply13
    i64 14, label %apply
  ]

overapply0:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  ...
  ret void

overapply1:
  %fn1 = inttoptr i64 %fn to void (i64*, i64, i64)*
  ...
  ret void

overapply2:
  %fn2 = inttoptr i64 %fn to void (i64*, i64, i64, i64)*
  ...
  ret void

overapply3:
  %fn3 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64)*
  ...
  ret void

overapply4:
  %fn4 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply5:
  %fn5 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply6:
  %fn6 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply7:
  %fn7 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply8:
  %fn8 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply9:
  %fn9 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply10:
  %fn10 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply11:
  %fn11 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply12:
  %fn12 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply13:
  %fn13 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

apply:
  %fn14 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  tail call void %fn14(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14)
  ret void

partial:
  ...
  ret void
}

define fastcc void @app15(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %overapply0
    i64 1, label %overapply1
    i64 2, label %overapply2
    i64 3, label %overapply3
    i64 4, label %overapply4
    i64 5, label %overapply5
    i64 6, label %overapply6
    i64 7, label %overapply7
    i64 8, label %overapply8
    i64 9, label %overapply9
    i64 10, label %overapply10
    i64 11, label %overapply11
    i64 12, label %overapply12
    i64 13, label %overapply13
    i64 14, label %overapply14
    i64 15, label %apply
  ]

overapply0:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  ...
  ret void

overapply1:
  %fn1 = inttoptr i64 %fn to void (i64*, i64, i64)*
  ...
  ret void

overapply2:
  %fn2 = inttoptr i64 %fn to void (i64*, i64, i64, i64)*
  ...
  ret void

overapply3:
  %fn3 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64)*
  ...
  ret void

overapply4:
  %fn4 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply5:
  %fn5 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply6:
  %fn6 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply7:
  %fn7 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply8:
  %fn8 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply9:
  %fn9 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply10:
  %fn10 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply11:
  %fn11 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply12:
  %fn12 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply13:
  %fn13 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply14:
  %fn14 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

apply:
  %fn15 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  tail call void %fn15(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15)
  ret void

partial:
  ...
  ret void
}

define fastcc void @app16(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %overapply0
    i64 1, label %overapply1
    i64 2, label %overapply2
    i64 3, label %overapply3
    i64 4, label %overapply4
    i64 5, label %overapply5
    i64 6, label %overapply6
    i64 7, label %overapply7
    i64 8, label %overapply8
    i64 9, label %overapply9
    i64 10, label %overapply10
    i64 11, label %overapply11
    i64 12, label %overapply12
    i64 13, label %overapply13
    i64 14, label %overapply14
    i64 15, label %overapply15
    i64 16, label %apply
  ]

overapply0:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  ...
  ret void

overapply1:
  %fn1 = inttoptr i64 %fn to void (i64*, i64, i64)*
  ...
  ret void

overapply2:
  %fn2 = inttoptr i64 %fn to void (i64*, i64, i64, i64)*
  ...
  ret void

overapply3:
  %fn3 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64)*
  ...
  ret void

overapply4:
  %fn4 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply5:
  %fn5 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply6:
  %fn6 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply7:
  %fn7 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply8:
  %fn8 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply9:
  %fn9 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply10:
  %fn10 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply11:
  %fn11 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply12:
  %fn12 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply13:
  %fn13 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply14:
  %fn14 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply15:
  %fn15 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

apply:
  %fn16 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  tail call void %fn16(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16)
  ret void

partial:
  ...
  ret void
}

define fastcc void @app17(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16, i64 %a17) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %overapply0
    i64 1, label %overapply1
    i64 2, label %overapply2
    i64 3, label %overapply3
    i64 4, label %overapply4
    i64 5, label %overapply5
    i64 6, label %overapply6
    i64 7, label %overapply7
    i64 8, label %overapply8
    i64 9, label %overapply9
    i64 10, label %overapply10
    i64 11, label %overapply11
    i64 12, label %overapply12
    i64 13, label %overapply13
    i64 14, label %overapply14
    i64 15, label %overapply15
    i64 16, label %overapply16
    i64 17, label %apply
  ]

overapply0:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  ...
  ret void

overapply1:
  %fn1 = inttoptr i64 %fn to void (i64*, i64, i64)*
  ...
  ret void

overapply2:
  %fn2 = inttoptr i64 %fn to void (i64*, i64, i64, i64)*
  ...
  ret void

overapply3:
  %fn3 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64)*
  ...
  ret void

overapply4:
  %fn4 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply5:
  %fn5 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply6:
  %fn6 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply7:
  %fn7 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply8:
  %fn8 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply9:
  %fn9 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply10:
  %fn10 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply11:
  %fn11 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply12:
  %fn12 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply13:
  %fn13 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply14:
  %fn14 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply15:
  %fn15 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply16:
  %fn16 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

apply:
  %fn17 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  tail call void %fn17(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16, i64 %a17)
  ret void

partial:
  ...
  ret void
}

define fastcc void @app18(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16, i64 %a17, i64 %a18) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %overapply0
    i64 1, label %overapply1
    i64 2, label %overapply2
    i64 3, label %overapply3
    i64 4, label %overapply4
    i64 5, label %overapply5
    i64 6, label %overapply6
    i64 7, label %overapply7
    i64 8, label %overapply8
    i64 9, label %overapply9
    i64 10, label %overapply10
    i64 11, label %overapply11
    i64 12, label %overapply12
    i64 13, label %overapply13
    i64 14, label %overapply14
    i64 15, label %overapply15
    i64 16, label %overapply16
    i64 17, label %overapply17
    i64 18, label %apply
  ]

overapply0:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  ...
  ret void

overapply1:
  %fn1 = inttoptr i64 %fn to void (i64*, i64, i64)*
  ...
  ret void

overapply2:
  %fn2 = inttoptr i64 %fn to void (i64*, i64, i64, i64)*
  ...
  ret void

overapply3:
  %fn3 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64)*
  ...
  ret void

overapply4:
  %fn4 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply5:
  %fn5 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply6:
  %fn6 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply7:
  %fn7 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply8:
  %fn8 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply9:
  %fn9 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply10:
  %fn10 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply11:
  %fn11 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply12:
  %fn12 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply13:
  %fn13 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply14:
  %fn14 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply15:
  %fn15 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply16:
  %fn16 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply17:
  %fn17 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

apply:
  %fn18 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  tail call void %fn18(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16, i64 %a17, i64 %a18)
  ret void

partial:
  ...
  ret void
}

define fastcc void @app19(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16, i64 %a17, i64 %a18, i64 %a19) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %overapply0
    i64 1, label %overapply1
    i64 2, label %overapply2
    i64 3, label %overapply3
    i64 4, label %overapply4
    i64 5, label %overapply5
    i64 6, label %overapply6
    i64 7, label %overapply7
    i64 8, label %overapply8
    i64 9, label %overapply9
    i64 10, label %overapply10
    i64 11, label %overapply11
    i64 12, label %overapply12
    i64 13, label %overapply13
    i64 14, label %overapply14
    i64 15, label %overapply15
    i64 16, label %overapply16
    i64 17, label %overapply17
    i64 18, label %overapply18
    i64 19, label %apply
  ]

overapply0:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  ...
  ret void

overapply1:
  %fn1 = inttoptr i64 %fn to void (i64*, i64, i64)*
  ...
  ret void

overapply2:
  %fn2 = inttoptr i64 %fn to void (i64*, i64, i64, i64)*
  ...
  ret void

overapply3:
  %fn3 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64)*
  ...
  ret void

overapply4:
  %fn4 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply5:
  %fn5 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply6:
  %fn6 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply7:
  %fn7 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply8:
  %fn8 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply9:
  %fn9 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply10:
  %fn10 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply11:
  %fn11 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply12:
  %fn12 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply13:
  %fn13 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply14:
  %fn14 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply15:
  %fn15 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply16:
  %fn16 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply17:
  %fn17 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply18:
  %fn18 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

apply:
  %fn19 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  tail call void %fn19(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16, i64 %a17, i64 %a18, i64 %a19)
  ret void

partial:
  ...
  ret void
}

define fastcc void @app20(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16, i64 %a17, i64 %a18, i64 %a19, i64 %a20) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %overapply0
    i64 1, label %overapply1
    i64 2, label %overapply2
    i64 3, label %overapply3
    i64 4, label %overapply4
    i64 5, label %overapply5
    i64 6, label %overapply6
    i64 7, label %overapply7
    i64 8, label %overapply8
    i64 9, label %overapply9
    i64 10, label %overapply10
    i64 11, label %overapply11
    i64 12, label %overapply12
    i64 13, label %overapply13
    i64 14, label %overapply14
    i64 15, label %overapply15
    i64 16, label %overapply16
    i64 17, label %overapply17
    i64 18, label %overapply18
    i64 19, label %overapply19
    i64 20, label %apply
  ]

overapply0:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  ...
  ret void

overapply1:
  %fn1 = inttoptr i64 %fn to void (i64*, i64, i64)*
  ...
  ret void

overapply2:
  %fn2 = inttoptr i64 %fn to void (i64*, i64, i64, i64)*
  ...
  ret void

overapply3:
  %fn3 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64)*
  ...
  ret void

overapply4:
  %fn4 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply5:
  %fn5 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply6:
  %fn6 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply7:
  %fn7 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply8:
  %fn8 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply9:
  %fn9 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply10:
  %fn10 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply11:
  %fn11 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply12:
  %fn12 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply13:
  %fn13 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply14:
  %fn14 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply15:
  %fn15 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply16:
  %fn16 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply17:
  %fn17 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply18:
  %fn18 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply19:
  %fn19 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

apply:
  %fn20 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  tail call void %fn20(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16, i64 %a17, i64 %a18, i64 %a19, i64 %a20)
  ret void

partial:
  ...
  ret void
}

define fastcc void @app21(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16, i64 %a17, i64 %a18, i64 %a19, i64 %a20, i64 %a21) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %overapply0
    i64 1, label %overapply1
    i64 2, label %overapply2
    i64 3, label %overapply3
    i64 4, label %overapply4
    i64 5, label %overapply5
    i64 6, label %overapply6
    i64 7, label %overapply7
    i64 8, label %overapply8
    i64 9, label %overapply9
    i64 10, label %overapply10
    i64 11, label %overapply11
    i64 12, label %overapply12
    i64 13, label %overapply13
    i64 14, label %overapply14
    i64 15, label %overapply15
    i64 16, label %overapply16
    i64 17, label %overapply17
    i64 18, label %overapply18
    i64 19, label %overapply19
    i64 20, label %overapply20
    i64 21, label %apply
  ]

overapply0:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  ...
  ret void

overapply1:
  %fn1 = inttoptr i64 %fn to void (i64*, i64, i64)*
  ...
  ret void

overapply2:
  %fn2 = inttoptr i64 %fn to void (i64*, i64, i64, i64)*
  ...
  ret void

overapply3:
  %fn3 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64)*
  ...
  ret void

overapply4:
  %fn4 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply5:
  %fn5 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply6:
  %fn6 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply7:
  %fn7 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply8:
  %fn8 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply9:
  %fn9 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply10:
  %fn10 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply11:
  %fn11 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply12:
  %fn12 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply13:
  %fn13 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply14:
  %fn14 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply15:
  %fn15 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply16:
  %fn16 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply17:
  %fn17 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply18:
  %fn18 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply19:
  %fn19 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply20:
  %fn20 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

apply:
  %fn21 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  tail call void %fn21(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16, i64 %a17, i64 %a18, i64 %a19, i64 %a20, i64 %a21)
  ret void

partial:
  ...
  ret void
}

define fastcc void @app22(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16, i64 %a17, i64 %a18, i64 %a19, i64 %a20, i64 %a21, i64 %a22) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %overapply0
    i64 1, label %overapply1
    i64 2, label %overapply2
    i64 3, label %overapply3
    i64 4, label %overapply4
    i64 5, label %overapply5
    i64 6, label %overapply6
    i64 7, label %overapply7
    i64 8, label %overapply8
    i64 9, label %overapply9
    i64 10, label %overapply10
    i64 11, label %overapply11
    i64 12, label %overapply12
    i64 13, label %overapply13
    i64 14, label %overapply14
    i64 15, label %overapply15
    i64 16, label %overapply16
    i64 17, label %overapply17
    i64 18, label %overapply18
    i64 19, label %overapply19
    i64 20, label %overapply20
    i64 21, label %overapply21
    i64 22, label %apply
  ]

overapply0:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  ...
  ret void

overapply1:
  %fn1 = inttoptr i64 %fn to void (i64*, i64, i64)*
  ...
  ret void

overapply2:
  %fn2 = inttoptr i64 %fn to void (i64*, i64, i64, i64)*
  ...
  ret void

overapply3:
  %fn3 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64)*
  ...
  ret void

overapply4:
  %fn4 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply5:
  %fn5 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply6:
  %fn6 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply7:
  %fn7 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply8:
  %fn8 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply9:
  %fn9 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply10:
  %fn10 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply11:
  %fn11 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply12:
  %fn12 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply13:
  %fn13 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply14:
  %fn14 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply15:
  %fn15 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply16:
  %fn16 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply17:
  %fn17 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply18:
  %fn18 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply19:
  %fn19 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply20:
  %fn20 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply21:
  %fn21 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

apply:
  %fn22 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  tail call void %fn22(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16, i64 %a17, i64 %a18, i64 %a19, i64 %a20, i64 %a21, i64 %a22)
  ret void

partial:
  ...
  ret void
}

define fastcc void @app23(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16, i64 %a17, i64 %a18, i64 %a19, i64 %a20, i64 %a21, i64 %a22, i64 %a23) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %overapply0
    i64 1, label %overapply1
    i64 2, label %overapply2
    i64 3, label %overapply3
    i64 4, label %overapply4
    i64 5, label %overapply5
    i64 6, label %overapply6
    i64 7, label %overapply7
    i64 8, label %overapply8
    i64 9, label %overapply9
    i64 10, label %overapply10
    i64 11, label %overapply11
    i64 12, label %overapply12
    i64 13, label %overapply13
    i64 14, label %overapply14
    i64 15, label %overapply15
    i64 16, label %overapply16
    i64 17, label %overapply17
    i64 18, label %overapply18
    i64 19, label %overapply19
    i64 20, label %overapply20
    i64 21, label %overapply21
    i64 22, label %overapply22
    i64 23, label %apply
  ]

overapply0:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  ...
  ret void

overapply1:
  %fn1 = inttoptr i64 %fn to void (i64*, i64, i64)*
  ...
  ret void

overapply2:
  %fn2 = inttoptr i64 %fn to void (i64*, i64, i64, i64)*
  ...
  ret void

overapply3:
  %fn3 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64)*
  ...
  ret void

overapply4:
  %fn4 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply5:
  %fn5 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply6:
  %fn6 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply7:
  %fn7 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply8:
  %fn8 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply9:
  %fn9 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply10:
  %fn10 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply11:
  %fn11 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply12:
  %fn12 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply13:
  %fn13 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply14:
  %fn14 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply15:
  %fn15 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply16:
  %fn16 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply17:
  %fn17 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply18:
  %fn18 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply19:
  %fn19 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply20:
  %fn20 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply21:
  %fn21 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply22:
  %fn22 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

apply:
  %fn23 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  tail call void %fn23(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16, i64 %a17, i64 %a18, i64 %a19, i64 %a20, i64 %a21, i64 %a22, i64 %a23)
  ret void

partial:
  ...
  ret void
}

define fastcc void @app24(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16, i64 %a17, i64 %a18, i64 %a19, i64 %a20, i64 %a21, i64 %a22, i64 %a23, i64 %a24) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %overapply0
    i64 1, label %overapply1
    i64 2, label %overapply2
    i64 3, label %overapply3
    i64 4, label %overapply4
    i64 5, label %overapply5
    i64 6, label %overapply6
    i64 7, label %overapply7
    i64 8, label %overapply8
    i64 9, label %overapply9
    i64 10, label %overapply10
    i64 11, label %overapply11
    i64 12, label %overapply12
    i64 13, label %overapply13
    i64 14, label %overapply14
    i64 15, label %overapply15
    i64 16, label %overapply16
    i64 17, label %overapply17
    i64 18, label %overapply18
    i64 19, label %overapply19
    i64 20, label %overapply20
    i64 21, label %overapply21
    i64 22, label %overapply22
    i64 23, label %overapply23
    i64 24, label %apply
  ]

overapply0:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  ...
  ret void

overapply1:
  %fn1 = inttoptr i64 %fn to void (i64*, i64, i64)*
  ...
  ret void

overapply2:
  %fn2 = inttoptr i64 %fn to void (i64*, i64, i64, i64)*
  ...
  ret void

overapply3:
  %fn3 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64)*
  ...
  ret void

overapply4:
  %fn4 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply5:
  %fn5 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply6:
  %fn6 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply7:
  %fn7 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply8:
  %fn8 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply9:
  %fn9 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply10:
  %fn10 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply11:
  %fn11 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply12:
  %fn12 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply13:
  %fn13 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply14:
  %fn14 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply15:
  %fn15 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply16:
  %fn16 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply17:
  %fn17 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply18:
  %fn18 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply19:
  %fn19 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply20:
  %fn20 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply21:
  %fn21 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply22:
  %fn22 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply23:
  %fn23 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

apply:
  %fn24 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  tail call void %fn24(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16, i64 %a17, i64 %a18, i64 %a19, i64 %a20, i64 %a21, i64 %a22, i64 %a23, i64 %a24)
  ret void

partial:
  ...
  ret void
}

define fastcc void @app25(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16, i64 %a17, i64 %a18, i64 %a19, i64 %a20, i64 %a21, i64 %a22, i64 %a23, i64 %a24, i64 %a25) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %overapply0
    i64 1, label %overapply1
    i64 2, label %overapply2
    i64 3, label %overapply3
    i64 4, label %overapply4
    i64 5, label %overapply5
    i64 6, label %overapply6
    i64 7, label %overapply7
    i64 8, label %overapply8
    i64 9, label %overapply9
    i64 10, label %overapply10
    i64 11, label %overapply11
    i64 12, label %overapply12
    i64 13, label %overapply13
    i64 14, label %overapply14
    i64 15, label %overapply15
    i64 16, label %overapply16
    i64 17, label %overapply17
    i64 18, label %overapply18
    i64 19, label %overapply19
    i64 20, label %overapply20
    i64 21, label %overapply21
    i64 22, label %overapply22
    i64 23, label %overapply23
    i64 24, label %overapply24
    i64 25, label %apply
  ]

overapply0:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  ...
  ret void

overapply1:
  %fn1 = inttoptr i64 %fn to void (i64*, i64, i64)*
  ...
  ret void

overapply2:
  %fn2 = inttoptr i64 %fn to void (i64*, i64, i64, i64)*
  ...
  ret void

overapply3:
  %fn3 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64)*
  ...
  ret void

overapply4:
  %fn4 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply5:
  %fn5 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply6:
  %fn6 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply7:
  %fn7 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply8:
  %fn8 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply9:
  %fn9 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply10:
  %fn10 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply11:
  %fn11 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply12:
  %fn12 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply13:
  %fn13 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply14:
  %fn14 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply15:
  %fn15 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply16:
  %fn16 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply17:
  %fn17 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply18:
  %fn18 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply19:
  %fn19 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply20:
  %fn20 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply21:
  %fn21 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply22:
  %fn22 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply23:
  %fn23 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply24:
  %fn24 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

apply:
  %fn25 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  tail call void %fn25(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16, i64 %a17, i64 %a18, i64 %a19, i64 %a20, i64 %a21, i64 %a22, i64 %a23, i64 %a24, i64 %a25)
  ret void

partial:
  ...
  ret void
}

define fastcc void @app26(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16, i64 %a17, i64 %a18, i64 %a19, i64 %a20, i64 %a21, i64 %a22, i64 %a23, i64 %a24, i64 %a25, i64 %a26) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %overapply0
    i64 1, label %overapply1
    i64 2, label %overapply2
    i64 3, label %overapply3
    i64 4, label %overapply4
    i64 5, label %overapply5
    i64 6, label %overapply6
    i64 7, label %overapply7
    i64 8, label %overapply8
    i64 9, label %overapply9
    i64 10, label %overapply10
    i64 11, label %overapply11
    i64 12, label %overapply12
    i64 13, label %overapply13
    i64 14, label %overapply14
    i64 15, label %overapply15
    i64 16, label %overapply16
    i64 17, label %overapply17
    i64 18, label %overapply18
    i64 19, label %overapply19
    i64 20, label %overapply20
    i64 21, label %overapply21
    i64 22, label %overapply22
    i64 23, label %overapply23
    i64 24, label %overapply24
    i64 25, label %overapply25
    i64 26, label %apply
  ]

overapply0:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  ...
  ret void

overapply1:
  %fn1 = inttoptr i64 %fn to void (i64*, i64, i64)*
  ...
  ret void

overapply2:
  %fn2 = inttoptr i64 %fn to void (i64*, i64, i64, i64)*
  ...
  ret void

overapply3:
  %fn3 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64)*
  ...
  ret void

overapply4:
  %fn4 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply5:
  %fn5 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply6:
  %fn6 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply7:
  %fn7 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply8:
  %fn8 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply9:
  %fn9 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply10:
  %fn10 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply11:
  %fn11 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply12:
  %fn12 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply13:
  %fn13 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply14:
  %fn14 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply15:
  %fn15 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply16:
  %fn16 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply17:
  %fn17 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply18:
  %fn18 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply19:
  %fn19 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply20:
  %fn20 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply21:
  %fn21 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply22:
  %fn22 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply23:
  %fn23 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply24:
  %fn24 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply25:
  %fn25 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

apply:
  %fn26 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  tail call void %fn26(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16, i64 %a17, i64 %a18, i64 %a19, i64 %a20, i64 %a21, i64 %a22, i64 %a23, i64 %a24, i64 %a25, i64 %a26)
  ret void

partial:
  ...
  ret void
}

define fastcc void @app27(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16, i64 %a17, i64 %a18, i64 %a19, i64 %a20, i64 %a21, i64 %a22, i64 %a23, i64 %a24, i64 %a25, i64 %a26, i64 %a27) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %overapply0
    i64 1, label %overapply1
    i64 2, label %overapply2
    i64 3, label %overapply3
    i64 4, label %overapply4
    i64 5, label %overapply5
    i64 6, label %overapply6
    i64 7, label %overapply7
    i64 8, label %overapply8
    i64 9, label %overapply9
    i64 10, label %overapply10
    i64 11, label %overapply11
    i64 12, label %overapply12
    i64 13, label %overapply13
    i64 14, label %overapply14
    i64 15, label %overapply15
    i64 16, label %overapply16
    i64 17, label %overapply17
    i64 18, label %overapply18
    i64 19, label %overapply19
    i64 20, label %overapply20
    i64 21, label %overapply21
    i64 22, label %overapply22
    i64 23, label %overapply23
    i64 24, label %overapply24
    i64 25, label %overapply25
    i64 26, label %overapply26
    i64 27, label %apply
  ]

overapply0:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  ...
  ret void

overapply1:
  %fn1 = inttoptr i64 %fn to void (i64*, i64, i64)*
  ...
  ret void

overapply2:
  %fn2 = inttoptr i64 %fn to void (i64*, i64, i64, i64)*
  ...
  ret void

overapply3:
  %fn3 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64)*
  ...
  ret void

overapply4:
  %fn4 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply5:
  %fn5 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply6:
  %fn6 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply7:
  %fn7 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply8:
  %fn8 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply9:
  %fn9 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply10:
  %fn10 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply11:
  %fn11 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply12:
  %fn12 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply13:
  %fn13 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply14:
  %fn14 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply15:
  %fn15 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply16:
  %fn16 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply17:
  %fn17 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply18:
  %fn18 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply19:
  %fn19 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply20:
  %fn20 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply21:
  %fn21 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply22:
  %fn22 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply23:
  %fn23 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply24:
  %fn24 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply25:
  %fn25 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply26:
  %fn26 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

apply:
  %fn27 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  tail call void %fn27(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16, i64 %a17, i64 %a18, i64 %a19, i64 %a20, i64 %a21, i64 %a22, i64 %a23, i64 %a24, i64 %a25, i64 %a26, i64 %a27)
  ret void

partial:
  ...
  ret void
}

define fastcc void @app28(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16, i64 %a17, i64 %a18, i64 %a19, i64 %a20, i64 %a21, i64 %a22, i64 %a23, i64 %a24, i64 %a25, i64 %a26, i64 %a27, i64 %a28) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %overapply0
    i64 1, label %overapply1
    i64 2, label %overapply2
    i64 3, label %overapply3
    i64 4, label %overapply4
    i64 5, label %overapply5
    i64 6, label %overapply6
    i64 7, label %overapply7
    i64 8, label %overapply8
    i64 9, label %overapply9
    i64 10, label %overapply10
    i64 11, label %overapply11
    i64 12, label %overapply12
    i64 13, label %overapply13
    i64 14, label %overapply14
    i64 15, label %overapply15
    i64 16, label %overapply16
    i64 17, label %overapply17
    i64 18, label %overapply18
    i64 19, label %overapply19
    i64 20, label %overapply20
    i64 21, label %overapply21
    i64 22, label %overapply22
    i64 23, label %overapply23
    i64 24, label %overapply24
    i64 25, label %overapply25
    i64 26, label %overapply26
    i64 27, label %overapply27
    i64 28, label %apply
  ]

overapply0:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  ...
  ret void

overapply1:
  %fn1 = inttoptr i64 %fn to void (i64*, i64, i64)*
  ...
  ret void

overapply2:
  %fn2 = inttoptr i64 %fn to void (i64*, i64, i64, i64)*
  ...
  ret void

overapply3:
  %fn3 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64)*
  ...
  ret void

overapply4:
  %fn4 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply5:
  %fn5 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply6:
  %fn6 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply7:
  %fn7 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply8:
  %fn8 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply9:
  %fn9 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply10:
  %fn10 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply11:
  %fn11 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply12:
  %fn12 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply13:
  %fn13 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply14:
  %fn14 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply15:
  %fn15 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply16:
  %fn16 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply17:
  %fn17 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply18:
  %fn18 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply19:
  %fn19 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply20:
  %fn20 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply21:
  %fn21 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply22:
  %fn22 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply23:
  %fn23 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply24:
  %fn24 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply25:
  %fn25 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply26:
  %fn26 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply27:
  %fn27 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

apply:
  %fn28 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  tail call void %fn28(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16, i64 %a17, i64 %a18, i64 %a19, i64 %a20, i64 %a21, i64 %a22, i64 %a23, i64 %a24, i64 %a25, i64 %a26, i64 %a27, i64 %a28)
  ret void

partial:
  ...
  ret void
}

define fastcc void @app29(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16, i64 %a17, i64 %a18, i64 %a19, i64 %a20, i64 %a21, i64 %a22, i64 %a23, i64 %a24, i64 %a25, i64 %a26, i64 %a27, i64 %a28, i64 %a29) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %overapply0
    i64 1, label %overapply1
    i64 2, label %overapply2
    i64 3, label %overapply3
    i64 4, label %overapply4
    i64 5, label %overapply5
    i64 6, label %overapply6
    i64 7, label %overapply7
    i64 8, label %overapply8
    i64 9, label %overapply9
    i64 10, label %overapply10
    i64 11, label %overapply11
    i64 12, label %overapply12
    i64 13, label %overapply13
    i64 14, label %overapply14
    i64 15, label %overapply15
    i64 16, label %overapply16
    i64 17, label %overapply17
    i64 18, label %overapply18
    i64 19, label %overapply19
    i64 20, label %overapply20
    i64 21, label %overapply21
    i64 22, label %overapply22
    i64 23, label %overapply23
    i64 24, label %overapply24
    i64 25, label %overapply25
    i64 26, label %overapply26
    i64 27, label %overapply27
    i64 28, label %overapply28
    i64 29, label %apply
  ]

overapply0:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  ...
  ret void

overapply1:
  %fn1 = inttoptr i64 %fn to void (i64*, i64, i64)*
  ...
  ret void

overapply2:
  %fn2 = inttoptr i64 %fn to void (i64*, i64, i64, i64)*
  ...
  ret void

overapply3:
  %fn3 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64)*
  ...
  ret void

overapply4:
  %fn4 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply5:
  %fn5 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply6:
  %fn6 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply7:
  %fn7 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply8:
  %fn8 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply9:
  %fn9 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply10:
  %fn10 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply11:
  %fn11 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply12:
  %fn12 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply13:
  %fn13 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply14:
  %fn14 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply15:
  %fn15 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply16:
  %fn16 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply17:
  %fn17 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply18:
  %fn18 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply19:
  %fn19 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply20:
  %fn20 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply21:
  %fn21 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply22:
  %fn22 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply23:
  %fn23 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply24:
  %fn24 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply25:
  %fn25 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply26:
  %fn26 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply27:
  %fn27 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply28:
  %fn28 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

apply:
  %fn29 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  tail call void %fn29(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16, i64 %a17, i64 %a18, i64 %a19, i64 %a20, i64 %a21, i64 %a22, i64 %a23, i64 %a24, i64 %a25, i64 %a26, i64 %a27, i64 %a28, i64 %a29)
  ret void

partial:
  ...
  ret void
}

define fastcc void @app30(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16, i64 %a17, i64 %a18, i64 %a19, i64 %a20, i64 %a21, i64 %a22, i64 %a23, i64 %a24, i64 %a25, i64 %a26, i64 %a27, i64 %a28, i64 %a29, i64 %a30) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %overapply0
    i64 1, label %overapply1
    i64 2, label %overapply2
    i64 3, label %overapply3
    i64 4, label %overapply4
    i64 5, label %overapply5
    i64 6, label %overapply6
    i64 7, label %overapply7
    i64 8, label %overapply8
    i64 9, label %overapply9
    i64 10, label %overapply10
    i64 11, label %overapply11
    i64 12, label %overapply12
    i64 13, label %overapply13
    i64 14, label %overapply14
    i64 15, label %overapply15
    i64 16, label %overapply16
    i64 17, label %overapply17
    i64 18, label %overapply18
    i64 19, label %overapply19
    i64 20, label %overapply20
    i64 21, label %overapply21
    i64 22, label %overapply22
    i64 23, label %overapply23
    i64 24, label %overapply24
    i64 25, label %overapply25
    i64 26, label %overapply26
    i64 27, label %overapply27
    i64 28, label %overapply28
    i64 29, label %overapply29
    i64 30, label %apply
  ]

overapply0:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  ...
  ret void

overapply1:
  %fn1 = inttoptr i64 %fn to void (i64*, i64, i64)*
  ...
  ret void

overapply2:
  %fn2 = inttoptr i64 %fn to void (i64*, i64, i64, i64)*
  ...
  ret void

overapply3:
  %fn3 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64)*
  ...
  ret void

overapply4:
  %fn4 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply5:
  %fn5 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply6:
  %fn6 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply7:
  %fn7 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply8:
  %fn8 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply9:
  %fn9 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply10:
  %fn10 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply11:
  %fn11 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply12:
  %fn12 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply13:
  %fn13 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply14:
  %fn14 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply15:
  %fn15 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply16:
  %fn16 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply17:
  %fn17 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply18:
  %fn18 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply19:
  %fn19 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply20:
  %fn20 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply21:
  %fn21 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply22:
  %fn22 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply23:
  %fn23 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply24:
  %fn24 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply25:
  %fn25 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply26:
  %fn26 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply27:
  %fn27 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply28:
  %fn28 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply29:
  %fn29 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

apply:
  %fn30 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  tail call void %fn30(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16, i64 %a17, i64 %a18, i64 %a19, i64 %a20, i64 %a21, i64 %a22, i64 %a23, i64 %a24, i64 %a25, i64 %a26, i64 %a27, i64 %a28, i64 %a29, i64 %a30)
  ret void

partial:
  ...
  ret void
}

define fastcc void @app31(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16, i64 %a17, i64 %a18, i64 %a19, i64 %a20, i64 %a21, i64 %a22, i64 %a23, i64 %a24, i64 %a25, i64 %a26, i64 %a27, i64 %a28, i64 %a29, i64 %a30, i64 %a31) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %overapply0
    i64 1, label %overapply1
    i64 2, label %overapply2
    i64 3, label %overapply3
    i64 4, label %overapply4
    i64 5, label %overapply5
    i64 6, label %overapply6
    i64 7, label %overapply7
    i64 8, label %overapply8
    i64 9, label %overapply9
    i64 10, label %overapply10
    i64 11, label %overapply11
    i64 12, label %overapply12
    i64 13, label %overapply13
    i64 14, label %overapply14
    i64 15, label %overapply15
    i64 16, label %overapply16
    i64 17, label %overapply17
    i64 18, label %overapply18
    i64 19, label %overapply19
    i64 20, label %overapply20
    i64 21, label %overapply21
    i64 22, label %overapply22
    i64 23, label %overapply23
    i64 24, label %overapply24
    i64 25, label %overapply25
    i64 26, label %overapply26
    i64 27, label %overapply27
    i64 28, label %overapply28
    i64 29, label %overapply29
    i64 30, label %overapply30
    i64 31, label %apply
  ]

overapply0:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  ...
  ret void

overapply1:
  %fn1 = inttoptr i64 %fn to void (i64*, i64, i64)*
  ...
  ret void

overapply2:
  %fn2 = inttoptr i64 %fn to void (i64*, i64, i64, i64)*
  ...
  ret void

overapply3:
  %fn3 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64)*
  ...
  ret void

overapply4:
  %fn4 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply5:
  %fn5 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply6:
  %fn6 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply7:
  %fn7 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply8:
  %fn8 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply9:
  %fn9 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply10:
  %fn10 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply11:
  %fn11 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply12:
  %fn12 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply13:
  %fn13 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply14:
  %fn14 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply15:
  %fn15 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply16:
  %fn16 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply17:
  %fn17 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply18:
  %fn18 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply19:
  %fn19 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply20:
  %fn20 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply21:
  %fn21 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply22:
  %fn22 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply23:
  %fn23 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply24:
  %fn24 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply25:
  %fn25 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply26:
  %fn26 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply27:
  %fn27 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply28:
  %fn28 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply29:
  %fn29 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply30:
  %fn30 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

apply:
  %fn31 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  tail call void %fn31(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16, i64 %a17, i64 %a18, i64 %a19, i64 %a20, i64 %a21, i64 %a22, i64 %a23, i64 %a24, i64 %a25, i64 %a26, i64 %a27, i64 %a28, i64 %a29, i64 %a30, i64 %a31)
  ret void

partial:
  ...
  ret void
}

define fastcc void @app32(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16, i64 %a17, i64 %a18, i64 %a19, i64 %a20, i64 %a21, i64 %a22, i64 %a23, i64 %a24, i64 %a25, i64 %a26, i64 %a27, i64 %a28, i64 %a29, i64 %a30, i64 %a31, i64 %a32) noreturn nounwind {
  %clos_ptr = inttoptr i64 %clos to i64*
  %arity_ptr = getelementptr inbounds i64, i64* %clos_ptr, i64 1
  %arity = load i64, i64* %arity_ptr
  %fn = load i64, i64* %clos_ptr

  switch i64 %arity, label %partial [
    i64 0, label %overapply0
    i64 1, label %overapply1
    i64 2, label %overapply2
    i64 3, label %overapply3
    i64 4, label %overapply4
    i64 5, label %overapply5
    i64 6, label %overapply6
    i64 7, label %overapply7
    i64 8, label %overapply8
    i64 9, label %overapply9
    i64 10, label %overapply10
    i64 11, label %overapply11
    i64 12, label %overapply12
    i64 13, label %overapply13
    i64 14, label %overapply14
    i64 15, label %overapply15
    i64 16, label %overapply16
    i64 17, label %overapply17
    i64 18, label %overapply18
    i64 19, label %overapply19
    i64 20, label %overapply20
    i64 21, label %overapply21
    i64 22, label %overapply22
    i64 23, label %overapply23
    i64 24, label %overapply24
    i64 25, label %overapply25
    i64 26, label %overapply26
    i64 27, label %overapply27
    i64 28, label %overapply28
    i64 29, label %overapply29
    i64 30, label %overapply30
    i64 31, label %overapply31
    i64 32, label %apply
  ]

overapply0:
  %fn0 = inttoptr i64 %fn to void (i64*, i64)*
  ...
  ret void

overapply1:
  %fn1 = inttoptr i64 %fn to void (i64*, i64, i64)*
  ...
  ret void

overapply2:
  %fn2 = inttoptr i64 %fn to void (i64*, i64, i64, i64)*
  ...
  ret void

overapply3:
  %fn3 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64)*
  ...
  ret void

overapply4:
  %fn4 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply5:
  %fn5 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply6:
  %fn6 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply7:
  %fn7 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply8:
  %fn8 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply9:
  %fn9 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply10:
  %fn10 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply11:
  %fn11 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply12:
  %fn12 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply13:
  %fn13 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply14:
  %fn14 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply15:
  %fn15 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply16:
  %fn16 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply17:
  %fn17 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply18:
  %fn18 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply19:
  %fn19 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply20:
  %fn20 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply21:
  %fn21 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply22:
  %fn22 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply23:
  %fn23 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply24:
  %fn24 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply25:
  %fn25 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply26:
  %fn26 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply27:
  %fn27 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply28:
  %fn28 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply29:
  %fn29 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply30:
  %fn30 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

overapply31:
  %fn31 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  ...
  ret void

apply:
  %fn32 = inttoptr i64 %fn to void (i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)*
  tail call void %fn32(i64* %sp, i64 %clos, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8, i64 %a9, i64 %a10, i64 %a11, i64 %a12, i64 %a13, i64 %a14, i64 %a15, i64 %a16, i64 %a17, i64 %a18, i64 %a19, i64 %a20, i64 %a21, i64 %a22, i64 %a23, i64 %a24, i64 %a25, i64 %a26, i64 %a27, i64 %a28, i64 %a29, i64 %a30, i64 %a31, i64 %a32)
  ret void

partial:
  ...
  ret void
}

