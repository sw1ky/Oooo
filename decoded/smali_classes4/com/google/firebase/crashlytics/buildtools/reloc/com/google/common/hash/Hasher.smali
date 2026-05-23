.class public interface abstract Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/hash/Hasher;
.super Ljava/lang/Object;
.source "Hasher.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/hash/PrimitiveSink;


# virtual methods
.method public abstract hash()Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/hash/HashCode;
.end method

.method public abstract hashCode()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract putBoolean(Z)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/hash/Hasher;
.end method

.method public abstract putByte(B)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/hash/Hasher;
.end method

.method public abstract putBytes(Ljava/nio/ByteBuffer;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/hash/Hasher;
.end method

.method public abstract putBytes([B)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/hash/Hasher;
.end method

.method public abstract putBytes([BII)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/hash/Hasher;
.end method

.method public abstract putChar(C)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/hash/Hasher;
.end method

.method public abstract putDouble(D)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/hash/Hasher;
.end method

.method public abstract putFloat(F)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/hash/Hasher;
.end method

.method public abstract putInt(I)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/hash/Hasher;
.end method

.method public abstract putLong(J)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/hash/Hasher;
.end method

.method public abstract putObject(Ljava/lang/Object;Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/hash/Funnel;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/hash/Hasher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/hash/Funnel<",
            "-TT;>;)",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/hash/Hasher;"
        }
    .end annotation
.end method

.method public abstract putShort(S)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/hash/Hasher;
.end method

.method public abstract putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/hash/Hasher;
.end method

.method public abstract putUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/hash/Hasher;
.end method
