.class public final enum Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;
.super Ljava/lang/Enum;
.source "HmacAlgorithms.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

.field public static final enum HMAC_MD5:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

.field public static final enum HMAC_SHA_1:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

.field public static final enum HMAC_SHA_256:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

.field public static final enum HMAC_SHA_384:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

.field public static final enum HMAC_SHA_512:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;


# instance fields
.field private final algorithm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 41
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    const-string v1, "HmacMD5"

    const-string v2, "HMAC_MD5"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    .line 49
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    const-string v1, "HmacSHA1"

    const-string v2, "HMAC_SHA_1"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    .line 57
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    const-string v1, "HmacSHA256"

    const-string v2, "HMAC_SHA_256"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v5, v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    .line 65
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    const-string v1, "HmacSHA384"

    const-string v2, "HMAC_SHA_384"

    const/4 v6, 0x3

    invoke-direct {v0, v2, v6, v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    .line 73
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    const-string v1, "HmacSHA512"

    const-string v2, "HMAC_SHA_512"

    const/4 v7, 0x4

    invoke-direct {v0, v2, v7, v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    sget-object v1, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;->$VALUES:[Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput-object p3, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;->algorithm:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 33
    const-class v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;
    .locals 1

    .line 33
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;->$VALUES:[Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-virtual {v0}, [Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;->algorithm:Ljava/lang/String;

    return-object v0
.end method
