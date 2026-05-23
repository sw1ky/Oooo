.class public final synthetic Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Predicate$-CC;
.super Ljava/lang/Object;
.source "Predicate.java"


# direct methods
.method public static $default$test(Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Predicate;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "_this"    # Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Predicate;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/firebase/crashlytics/buildtools/reloc/org/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 79
    .local p0, "this":Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Predicate;, "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Predicate<TT;>;"
    .local p1, "input":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
