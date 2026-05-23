.class public final synthetic Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/FilteredSetMultimap$-CC;
.super Ljava/lang/Object;
.source "FilteredSetMultimap.java"


# direct methods
.method public static bridge synthetic $default$unfiltered(Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/FilteredSetMultimap;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/Multimap;
    .locals 1
    .param p0, "_this"    # Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/FilteredSetMultimap;

    .line 26
    .local p0, "this":Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/FilteredSetMultimap;, "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/FilteredSetMultimap<TK;TV;>;"
    invoke-interface {p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/FilteredSetMultimap;->unfiltered()Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method
