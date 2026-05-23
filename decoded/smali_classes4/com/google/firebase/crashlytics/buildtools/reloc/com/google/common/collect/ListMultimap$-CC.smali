.class public final synthetic Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ListMultimap$-CC;
.super Ljava/lang/Object;
.source "ListMultimap.java"


# direct methods
.method public static bridge synthetic $default$get(Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ListMultimap;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p0, "_this"    # Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ListMultimap;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/firebase/crashlytics/buildtools/reloc/org/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 42
    .local p0, "this":Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ListMultimap;, "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ListMultimap<TK;TV;>;"
    invoke-interface {p0, p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$removeAll(Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ListMultimap;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p0, "_this"    # Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ListMultimap;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/firebase/crashlytics/buildtools/reloc/org/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 42
    .local p0, "this":Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ListMultimap;, "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ListMultimap<TK;TV;>;"
    invoke-interface {p0, p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$replaceValues(Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ListMultimap;Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0
    .param p0, "_this"    # Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ListMultimap;

    .line 42
    .local p0, "this":Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ListMultimap;, "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ListMultimap<TK;TV;>;"
    invoke-interface {p0, p1, p2}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
