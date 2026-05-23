.class public Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/LaxRedirectStrategy;
.super Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/DefaultRedirectStrategy;
.source "LaxRedirectStrategy.java"


# static fields
.field public static final INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/LaxRedirectStrategy;

.field private static final REDIRECT_METHODS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 48
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/LaxRedirectStrategy;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/LaxRedirectStrategy;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/LaxRedirectStrategy;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/LaxRedirectStrategy;

    .line 53
    const-string v0, "HEAD"

    const-string v1, "DELETE"

    const-string v2, "GET"

    const-string v3, "POST"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/LaxRedirectStrategy;->REDIRECT_METHODS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/DefaultRedirectStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method protected isRedirectable(Ljava/lang/String;)Z
    .locals 5
    .param p1, "method"    # Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/LaxRedirectStrategy;->REDIRECT_METHODS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 63
    .local v3, "m":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    const/4 v4, 0x1

    return v4

    .line 62
    .end local v3    # "m":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
