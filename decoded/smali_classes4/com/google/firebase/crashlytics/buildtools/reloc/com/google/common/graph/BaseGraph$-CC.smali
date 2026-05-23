.class public final synthetic Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/BaseGraph$-CC;
.super Ljava/lang/Object;
.source "BaseGraph.java"


# direct methods
.method public static bridge synthetic $default$predecessors(Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/BaseGraph;Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0
    .param p0, "_this"    # Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/BaseGraph;

    .line 27
    .local p0, "this":Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/BaseGraph;, "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/BaseGraph<TN;>;"
    invoke-interface {p0, p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/BaseGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$successors(Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/BaseGraph;Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0
    .param p0, "_this"    # Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/BaseGraph;

    .line 27
    .local p0, "this":Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/BaseGraph;, "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/BaseGraph<TN;>;"
    invoke-interface {p0, p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/BaseGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
