.class public final synthetic Lcom/google/firebase/crashlytics/buildtools/ndk/NativeSymbolGenerator$-CC;
.super Ljava/lang/Object;
.source "NativeSymbolGenerator.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/ndk/NativeSymbolGenerator;->SYMBOL_FILE_SUFFIXES:[Ljava/lang/String;

    return-void
.end method

.method public static createSymbolFileBasename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "libFilename"    # Ljava/lang/String;
    .param p1, "arch"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;

    .line 20
    invoke-static {p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/io/FilenameUtils;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "moduleName":Ljava/lang/String;
    const-string v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 24
    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const-string v2, "%s-%s-%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
