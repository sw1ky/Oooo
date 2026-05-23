.class public interface abstract Lcom/google/firebase/crashlytics/buildtools/ndk/NativeSymbolGenerator;
.super Ljava/lang/Object;
.source "NativeSymbolGenerator.java"


# static fields
.field public static final LIB_PREFIX:Ljava/lang/String; = "lib"

.field public static final SO_FILE_FILTER:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/io/filefilter/IOFileFilter;

.field public static final SYMBOL_FILE_SUFFIXES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    const-string v0, ".so"

    const-string v1, ".symbols"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/ndk/NativeSymbolGenerator;->SYMBOL_FILE_SUFFIXES:[Ljava/lang/String;

    .line 14
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/io/filefilter/SuffixFileFilter;

    sget-object v1, Lcom/google/firebase/crashlytics/buildtools/ndk/NativeSymbolGenerator;->SYMBOL_FILE_SUFFIXES:[Ljava/lang/String;

    sget-object v2, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/io/IOCase;->INSENSITIVE:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/io/IOCase;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/io/filefilter/SuffixFileFilter;-><init>([Ljava/lang/String;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/io/IOCase;)V

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/ndk/NativeSymbolGenerator;->SO_FILE_FILTER:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method


# virtual methods
.method public abstract generateSymbols(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/firebase/crashlytics/buildtools/ndk/internal/CodeMappingException;
        }
    .end annotation
.end method
