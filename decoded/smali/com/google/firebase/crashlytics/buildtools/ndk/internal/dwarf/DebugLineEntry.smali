.class public Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineEntry;
.super Ljava/lang/Object;
.source "DebugLineEntry.java"


# static fields
.field public static final formatString:Ljava/lang/String; = "Address: 0x%s, File: %s, Line: %s"


# instance fields
.field public final address:J

.field public final file:Ljava/lang/String;

.field public final lineNumber:J


# direct methods
.method public constructor <init>(JLjava/lang/String;J)V
    .locals 0
    .param p1, "address"    # J
    .param p3, "file"    # Ljava/lang/String;
    .param p4, "lineNumber"    # J

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineEntry;->address:J

    .line 27
    iput-object p3, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineEntry;->file:Ljava/lang/String;

    .line 28
    iput-wide p4, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineEntry;->lineNumber:J

    .line 29
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 33
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineEntry;->file:Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineEntry;->lineNumber:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineEntry;->address:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string v0, "Address: 0x%s, File: %s, Line: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
