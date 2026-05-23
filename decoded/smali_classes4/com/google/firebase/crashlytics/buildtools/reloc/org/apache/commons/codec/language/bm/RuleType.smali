.class public final enum Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;
.super Ljava/lang/Enum;
.source "RuleType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;

.field public static final enum APPROX:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;

.field public static final enum EXACT:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;

.field public static final enum RULES:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 29
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;

    const-string v1, "approx"

    const-string v2, "APPROX"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;->APPROX:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;

    .line 31
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;

    const-string v1, "exact"

    const-string v2, "EXACT"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;->EXACT:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;

    .line 33
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;

    const-string v1, "rules"

    const-string v2, "RULES"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v5, v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;->RULES:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;

    sget-object v1, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;->APPROX:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;->EXACT:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;->RULES:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;->$VALUES:[Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;->name:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;->$VALUES:[Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;

    invoke-virtual {v0}, [Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;->name:Ljava/lang/String;

    return-object v0
.end method
