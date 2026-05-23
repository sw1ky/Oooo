.class public final synthetic Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/util/concurrent/ListeningExecutorService$-CC;
.super Ljava/lang/Object;
.source "ListeningExecutorService.java"


# direct methods
.method public static bridge synthetic $default$submit(Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/util/concurrent/ListeningExecutorService;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0
    .param p0, "_this"    # Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/util/concurrent/ListeningExecutorService;

    .line 34
    invoke-interface {p0, p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/lang/Runnable;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$submit(Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/util/concurrent/ListeningExecutorService;Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 0
    .param p0, "_this"    # Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/util/concurrent/ListeningExecutorService;

    .line 34
    invoke-interface {p0, p1, p2}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$submit(Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/util/concurrent/ListeningExecutorService;Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 0
    .param p0, "_this"    # Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/util/concurrent/ListeningExecutorService;

    .line 34
    invoke-interface {p0, p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
