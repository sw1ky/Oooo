.class public final synthetic Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/SortedMultisetBridge$-CC;
.super Ljava/lang/Object;
.source "SortedMultisetBridge.java"


# direct methods
.method public static bridge synthetic $default$elementSet(Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/SortedMultisetBridge;)Ljava/util/Set;
    .locals 1
    .param p0, "_this"    # Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/SortedMultisetBridge;

    .line 29
    .local p0, "this":Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/SortedMultisetBridge;, "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/SortedMultisetBridge<TE;>;"
    invoke-interface {p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/SortedMultisetBridge;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method
