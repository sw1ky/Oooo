.class public Lcom/volnaiot/app/CommandCreator;
.super Ljava/lang/Object;
.source "CommandCreator.java"


# static fields
.field static Header:[B

.field static commandBytes:[B


# instance fields
.field public actualKey:B

.field controlActivity:Lcom/volnaiot/app/controlActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/volnaiot/app/CommandCreator;->Header:[B

    .line 17
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/volnaiot/app/CommandCreator;->commandBytes:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x5dt
        -0x5ct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x10t
        0x5t
        0x15t
        0x61t
        -0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/volnaiot/app/CommandCreator;->actualKey:B

    return-void
.end method

.method private decodeMessage(B[B)V
    .locals 7
    .param p1, "Command"    # B
    .param p2, "data"    # [B

    .line 51
    sget-object v0, Lcom/volnaiot/app/CommandCreator;->commandBytes:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v2, 0x1

    const-string v3, "CommandCreator"

    if-ne p1, v0, :cond_1

    .line 53
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->getByte(Ljava/lang/Object;I)B

    move-result v0

    if-ne v0, v2, :cond_0

    .line 54
    invoke-static {p2, v2}, Ljava/lang/reflect/Array;->getByte(Ljava/lang/Object;I)B

    move-result v0

    iput-byte v0, p0, Lcom/volnaiot/app/CommandCreator;->actualKey:B

    .line 55
    iget-object v0, p0, Lcom/volnaiot/app/CommandCreator;->controlActivity:Lcom/volnaiot/app/controlActivity;

    invoke-virtual {v0, v2}, Lcom/volnaiot/app/controlActivity;->controlTabs(Z)V

    .line 56
    iget-object v0, p0, Lcom/volnaiot/app/CommandCreator;->controlActivity:Lcom/volnaiot/app/controlActivity;

    const-string v4, "\u041a\u043b\u044e\u0447 \u0432\u0435\u0440\u043d\u044b\u0439!"

    invoke-virtual {v0, v4}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/volnaiot/app/CommandCreator;->controlActivity:Lcom/volnaiot/app/controlActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Key: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-byte v5, p0, Lcom/volnaiot/app/CommandCreator;->actualKey:B

    new-array v6, v2, [B

    aput-byte v5, v6, v1

    invoke-virtual {p0, v6}, Lcom/volnaiot/app/CommandCreator;->toHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_0
    const-string v0, "\u0423\u043f\u0441, \u043a\u043b\u044e\u0447 \u043d\u0435 \u043f\u043e\u0434\u043e\u0448\u0451\u043b!"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v4, p0, Lcom/volnaiot/app/CommandCreator;->controlActivity:Lcom/volnaiot/app/controlActivity;

    invoke-virtual {v4, v0}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/volnaiot/app/CommandCreator;->controlActivity:Lcom/volnaiot/app/controlActivity;

    const-string v4, "\u041f\u043e\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u0434\u0440\u0443\u0433\u043e\u0439 \u043a\u043b\u044e\u0447 \u2014 \u0438\u0437\u043c\u0435\u043d\u0438\u0442\u0435 \u0435\u0433\u043e \u043d\u0430 \u0433\u043b\u0430\u0432\u043d\u043e\u043c \u044d\u043a\u0440\u0430\u043d\u0435!"

    invoke-virtual {v0, v4}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    .line 64
    :cond_1
    :goto_0
    sget-object v0, Lcom/volnaiot/app/CommandCreator;->commandBytes:[B

    aget-byte v0, v0, v2

    if-ne p1, v0, :cond_2

    .line 65
    const-string v0, "\u0423\u043f\u0441, \u0441\u0430\u043c\u043e\u043a\u0430\u0442 \u0432\u0435\u0440\u043d\u0443\u043b \u043e\u0448\u0438\u0431\u043a\u0443!"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v4, p0, Lcom/volnaiot/app/CommandCreator;->controlActivity:Lcom/volnaiot/app/controlActivity;

    invoke-virtual {v4, v0}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    .line 67
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->getByte(Ljava/lang/Object;I)B

    move-result v0

    if-ne v0, v2, :cond_2

    .line 69
    const-string v0, "\u041e\u0448\u0438\u0431\u043a\u0430! \u041d\u0435\u0432\u0435\u0440\u043d\u0430\u044f \u043a\u043e\u043d\u0442\u0440\u043e\u043b\u044c\u043d\u0430\u044f \u0441\u0443\u043c\u043c\u0430!"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v4, p0, Lcom/volnaiot/app/CommandCreator;->controlActivity:Lcom/volnaiot/app/controlActivity;

    invoke-virtual {v4, v0}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    .line 73
    :cond_2
    sget-object v0, Lcom/volnaiot/app/CommandCreator;->commandBytes:[B

    const/4 v4, 0x2

    aget-byte v0, v0, v4

    if-ne p1, v0, :cond_4

    .line 74
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->getByte(Ljava/lang/Object;I)B

    move-result v0

    if-ne v0, v2, :cond_3

    .line 75
    const-string v0, "\u0421\u0430\u043c\u043e\u043a\u0430\u0442 \u0443\u0441\u043f\u0435\u0448\u043d\u043e \u0440\u0430\u0437\u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u043d!"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v4, p0, Lcom/volnaiot/app/CommandCreator;->controlActivity:Lcom/volnaiot/app/controlActivity;

    invoke-virtual {v4, v0}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    goto :goto_1

    .line 78
    :cond_3
    const-string v0, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0440\u0430\u0437\u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u0441\u0430\u043c\u043e\u043a\u0430\u0442!"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v4, p0, Lcom/volnaiot/app/CommandCreator;->controlActivity:Lcom/volnaiot/app/controlActivity;

    invoke-virtual {v4, v0}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    .line 82
    :cond_4
    :goto_1
    sget-object v0, Lcom/volnaiot/app/CommandCreator;->commandBytes:[B

    const/4 v4, 0x3

    aget-byte v0, v0, v4

    if-ne p1, v0, :cond_6

    .line 83
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->getByte(Ljava/lang/Object;I)B

    move-result v0

    if-ne v0, v2, :cond_5

    .line 84
    const-string v0, "\u0421\u0430\u043c\u043e\u043a\u0430\u0442 \u0443\u0441\u043f\u0435\u0448\u043d\u043e \u0437\u0430\u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u043d!"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v4, p0, Lcom/volnaiot/app/CommandCreator;->controlActivity:Lcom/volnaiot/app/controlActivity;

    invoke-virtual {v4, v0}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    goto :goto_2

    .line 87
    :cond_5
    const-string v0, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0437\u0430\u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u0441\u0430\u043c\u043e\u043a\u0430\u0442!"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v4, p0, Lcom/volnaiot/app/CommandCreator;->controlActivity:Lcom/volnaiot/app/controlActivity;

    invoke-virtual {v4, v0}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    .line 91
    :cond_6
    :goto_2
    sget-object v0, Lcom/volnaiot/app/CommandCreator;->commandBytes:[B

    const/4 v4, 0x4

    aget-byte v0, v0, v4

    if-ne p1, v0, :cond_8

    .line 92
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->getByte(Ljava/lang/Object;I)B

    move-result v0

    if-nez v0, :cond_7

    .line 93
    const-string v0, "\u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u044b \u0441\u0430\u043c\u043e\u043a\u0430\u0442\u0430 \u043f\u0440\u0438\u043c\u0435\u043d\u0435\u043d\u044b!"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v4, p0, Lcom/volnaiot/app/CommandCreator;->controlActivity:Lcom/volnaiot/app/controlActivity;

    invoke-virtual {v4, v0}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    goto :goto_3

    .line 96
    :cond_7
    const-string v0, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u0440\u0438\u043c\u0435\u043d\u0438\u0442\u044c \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u044b \u0441\u0430\u043c\u043e\u043a\u0430\u0442\u0430!"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v4, p0, Lcom/volnaiot/app/CommandCreator;->controlActivity:Lcom/volnaiot/app/controlActivity;

    invoke-virtual {v4, v0}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    .line 100
    :cond_8
    :goto_3
    sget-object v0, Lcom/volnaiot/app/CommandCreator;->commandBytes:[B

    const/4 v4, 0x5

    aget-byte v0, v0, v4

    if-ne p1, v0, :cond_a

    .line 101
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->getByte(Ljava/lang/Object;I)B

    move-result v0

    if-ne v0, v2, :cond_9

    .line 102
    const-string v0, "\u0411\u0430\u0442\u0430\u0440\u0435\u044f \u0443\u0441\u043f\u0435\u0448\u043d\u043e \u0438\u0437\u0432\u043b\u0435\u0447\u0435\u043d\u0430!"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lcom/volnaiot/app/CommandCreator;->controlActivity:Lcom/volnaiot/app/controlActivity;

    invoke-virtual {v1, v0}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    goto :goto_4

    .line 105
    :cond_9
    const-string v0, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0438\u0437\u0432\u043b\u0435\u0447\u044c \u0431\u0430\u0442\u0430\u0440\u0435\u044e!"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v1, p0, Lcom/volnaiot/app/CommandCreator;->controlActivity:Lcom/volnaiot/app/controlActivity;

    invoke-virtual {v1, v0}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    .line 110
    :cond_a
    :goto_4
    return-void
.end method


# virtual methods
.method public getEjectBatteryCommand()[B
    .locals 18

    .line 300
    const/4 v0, 0x1

    .line 301
    .local v0, "len":B
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0xfe

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    int-to-byte v1, v1

    .line 302
    .local v1, "originalRand":B
    move-object/from16 v3, p0

    iget-byte v4, v3, Lcom/volnaiot/app/CommandCreator;->actualKey:B

    .line 303
    .local v4, "originalKey":B
    sget-object v5, Lcom/volnaiot/app/CommandCreator;->commandBytes:[B

    const/4 v6, 0x5

    aget-byte v5, v5, v6

    .line 304
    .local v5, "originalCmd":B
    new-array v7, v2, [B

    const/4 v8, 0x0

    aput-byte v6, v7, v8

    move-object v6, v7

    .line 307
    .local v6, "originalData":[B
    add-int/lit8 v7, v1, 0x32

    int-to-byte v7, v7

    .line 310
    .local v7, "rand":B
    xor-int v9, v4, v1

    int-to-byte v9, v9

    .line 311
    .local v9, "key":B
    xor-int v10, v5, v1

    int-to-byte v10, v10

    .line 313
    .local v10, "cmd":B
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 315
    .local v11, "out":Ljava/io/ByteArrayOutputStream;
    array-length v12, v6

    :goto_0
    if-ge v8, v12, :cond_0

    aget-byte v13, v6, v8

    .line 316
    .local v13, "b":B
    xor-int v14, v13, v1

    invoke-virtual {v11, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 315
    .end local v13    # "b":B
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 320
    .local v8, "data":[B
    sget-object v12, Lcom/volnaiot/app/CommandCreator;->Header:[B

    array-length v12, v12

    add-int/lit8 v12, v12, 0x4

    array-length v13, v8

    add-int/2addr v12, v13

    new-array v12, v12, [B

    .line 322
    .local v12, "combined":[B
    invoke-static {v12}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 323
    .local v13, "buffer":Ljava/nio/ByteBuffer;
    sget-object v14, Lcom/volnaiot/app/CommandCreator;->Header:[B

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 324
    invoke-virtual {v13, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 325
    invoke-virtual {v13, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 326
    invoke-virtual {v13, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 327
    invoke-virtual {v13, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 328
    invoke-virtual {v13, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 330
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    .line 331
    .local v14, "hex1":[B
    new-instance v15, Lcom/volnaiot/app/Crc8;

    invoke-direct {v15}, Lcom/volnaiot/app/Crc8;-><init>()V

    invoke-virtual {v15, v14}, Lcom/volnaiot/app/Crc8;->compute([B)I

    move-result v15

    int-to-byte v15, v15

    .line 333
    .local v15, "CRC":B
    move/from16 v16, v0

    .end local v0    # "len":B
    .local v16, "len":B
    array-length v0, v14

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 335
    .local v0, "combined2":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 336
    .local v2, "buffer2":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 337
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 339
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v17

    return-object v17
.end method

.method public getKeyCommand(Ljava/lang/String;)[B
    .locals 17
    .param p1, "Key"    # Ljava/lang/String;

    .line 122
    const/16 v0, 0x8

    .line 123
    .local v0, "len":B
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0xfe

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-byte v1, v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    .line 124
    .local v1, "originalRand":B
    const/4 v2, 0x0

    .line 125
    .local v2, "originalKey":B
    sget-object v3, Lcom/volnaiot/app/CommandCreator;->commandBytes:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    .line 126
    .local v3, "originalCmd":B
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 129
    .local v5, "originalDeviceKey":[B
    add-int/lit8 v6, v1, 0x32

    int-to-byte v6, v6

    .line 132
    .local v6, "rand":B
    xor-int v7, v2, v1

    int-to-byte v7, v7

    .line 133
    .local v7, "key":B
    xor-int v8, v3, v1

    int-to-byte v8, v8

    .line 135
    .local v8, "cmd":B
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 137
    .local v9, "out":Ljava/io/ByteArrayOutputStream;
    array-length v10, v5

    :goto_0
    if-ge v4, v10, :cond_0

    aget-byte v11, v5, v4

    .line 138
    .local v11, "b":B
    xor-int v12, v11, v1

    invoke-virtual {v9, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 137
    .end local v11    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 143
    .local v4, "deviceKey":[B
    sget-object v10, Lcom/volnaiot/app/CommandCreator;->Header:[B

    array-length v10, v10

    add-int/lit8 v10, v10, 0x4

    array-length v11, v4

    add-int/2addr v10, v11

    new-array v10, v10, [B

    .line 145
    .local v10, "combined":[B
    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 146
    .local v11, "buffer":Ljava/nio/ByteBuffer;
    sget-object v12, Lcom/volnaiot/app/CommandCreator;->Header:[B

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 147
    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 148
    invoke-virtual {v11, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 149
    invoke-virtual {v11, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 150
    invoke-virtual {v11, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 151
    invoke-virtual {v11, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 153
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    .line 154
    .local v12, "hex1":[B
    new-instance v13, Lcom/volnaiot/app/Crc8;

    invoke-direct {v13}, Lcom/volnaiot/app/Crc8;-><init>()V

    invoke-virtual {v13, v12}, Lcom/volnaiot/app/Crc8;->compute([B)I

    move-result v13

    int-to-byte v13, v13

    .line 156
    .local v13, "CRC":B
    array-length v14, v12

    add-int/lit8 v14, v14, 0x1

    new-array v14, v14, [B

    .line 158
    .local v14, "combined2":[B
    invoke-static {v14}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 159
    .local v15, "buffer2":Ljava/nio/ByteBuffer;
    invoke-virtual {v15, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 160
    invoke-virtual {v15, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 162
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v16

    return-object v16
.end method

.method public getLockCommand()[B
    .locals 18

    .line 212
    const/4 v0, 0x1

    .line 213
    .local v0, "len":B
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0xfe

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    int-to-byte v1, v1

    .line 214
    .local v1, "originalRand":B
    move-object/from16 v3, p0

    iget-byte v4, v3, Lcom/volnaiot/app/CommandCreator;->actualKey:B

    .line 215
    .local v4, "originalKey":B
    sget-object v5, Lcom/volnaiot/app/CommandCreator;->commandBytes:[B

    const/4 v6, 0x3

    aget-byte v5, v5, v6

    .line 216
    .local v5, "originalCmd":B
    new-array v6, v2, [B

    const/4 v7, 0x0

    aput-byte v2, v6, v7

    .line 219
    .local v6, "originalData":[B
    add-int/lit8 v8, v1, 0x32

    int-to-byte v8, v8

    .line 222
    .local v8, "rand":B
    xor-int v9, v4, v1

    int-to-byte v9, v9

    .line 223
    .local v9, "key":B
    xor-int v10, v5, v1

    int-to-byte v10, v10

    .line 225
    .local v10, "cmd":B
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 227
    .local v11, "out":Ljava/io/ByteArrayOutputStream;
    array-length v12, v6

    :goto_0
    if-ge v7, v12, :cond_0

    aget-byte v13, v6, v7

    .line 228
    .local v13, "b":B
    xor-int v14, v13, v1

    invoke-virtual {v11, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 227
    .end local v13    # "b":B
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 232
    .local v7, "data":[B
    sget-object v12, Lcom/volnaiot/app/CommandCreator;->Header:[B

    array-length v12, v12

    add-int/lit8 v12, v12, 0x4

    array-length v13, v7

    add-int/2addr v12, v13

    new-array v12, v12, [B

    .line 234
    .local v12, "combined":[B
    invoke-static {v12}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 235
    .local v13, "buffer":Ljava/nio/ByteBuffer;
    sget-object v14, Lcom/volnaiot/app/CommandCreator;->Header:[B

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 236
    invoke-virtual {v13, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 237
    invoke-virtual {v13, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 238
    invoke-virtual {v13, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 239
    invoke-virtual {v13, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 240
    invoke-virtual {v13, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 242
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    .line 243
    .local v14, "hex1":[B
    new-instance v15, Lcom/volnaiot/app/Crc8;

    invoke-direct {v15}, Lcom/volnaiot/app/Crc8;-><init>()V

    invoke-virtual {v15, v14}, Lcom/volnaiot/app/Crc8;->compute([B)I

    move-result v15

    int-to-byte v15, v15

    .line 245
    .local v15, "CRC":B
    move/from16 v16, v0

    .end local v0    # "len":B
    .local v16, "len":B
    array-length v0, v14

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 247
    .local v0, "combined2":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 248
    .local v2, "buffer2":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 249
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 251
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v17

    return-object v17
.end method

.method public getSetScooterCommand(BBB)[B
    .locals 18
    .param p1, "headlight"    # B
    .param p2, "mode"    # B
    .param p3, "throttle"    # B

    .line 255
    const/4 v0, 0x4

    .line 256
    .local v0, "len":B
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0xfe

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    int-to-byte v1, v1

    .line 257
    .local v1, "originalRand":B
    move-object/from16 v3, p0

    iget-byte v4, v3, Lcom/volnaiot/app/CommandCreator;->actualKey:B

    .line 258
    .local v4, "originalKey":B
    sget-object v5, Lcom/volnaiot/app/CommandCreator;->commandBytes:[B

    const/4 v6, 0x4

    aget-byte v5, v5, v6

    .line 260
    .local v5, "originalCmd":B
    new-array v7, v6, [B

    const/4 v8, 0x0

    aput-byte p1, v7, v8

    aput-byte p2, v7, v2

    const/4 v9, 0x2

    aput-byte p3, v7, v9

    const/4 v9, 0x3

    aput-byte v8, v7, v9

    .line 263
    .local v7, "originalData":[B
    add-int/lit8 v9, v1, 0x32

    int-to-byte v9, v9

    .line 266
    .local v9, "rand":B
    xor-int v10, v4, v1

    int-to-byte v10, v10

    .line 267
    .local v10, "key":B
    xor-int v11, v5, v1

    int-to-byte v11, v11

    .line 269
    .local v11, "cmd":B
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 271
    .local v12, "out":Ljava/io/ByteArrayOutputStream;
    array-length v13, v7

    :goto_0
    if-ge v8, v13, :cond_0

    aget-byte v14, v7, v8

    .line 272
    .local v14, "b":B
    xor-int v15, v14, v1

    invoke-virtual {v12, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 271
    .end local v14    # "b":B
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 276
    .local v8, "data":[B
    sget-object v13, Lcom/volnaiot/app/CommandCreator;->Header:[B

    array-length v13, v13

    add-int/2addr v13, v6

    array-length v6, v8

    add-int/2addr v13, v6

    new-array v6, v13, [B

    .line 278
    .local v6, "combined":[B
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 279
    .local v13, "buffer":Ljava/nio/ByteBuffer;
    sget-object v14, Lcom/volnaiot/app/CommandCreator;->Header:[B

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 280
    invoke-virtual {v13, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 281
    invoke-virtual {v13, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 282
    invoke-virtual {v13, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 283
    invoke-virtual {v13, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 284
    invoke-virtual {v13, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 286
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    .line 287
    .local v14, "hex1":[B
    new-instance v15, Lcom/volnaiot/app/Crc8;

    invoke-direct {v15}, Lcom/volnaiot/app/Crc8;-><init>()V

    invoke-virtual {v15, v14}, Lcom/volnaiot/app/Crc8;->compute([B)I

    move-result v15

    int-to-byte v15, v15

    .line 289
    .local v15, "CRC":B
    move/from16 v16, v0

    .end local v0    # "len":B
    .local v16, "len":B
    array-length v0, v14

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 291
    .local v0, "combined2":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 292
    .local v2, "buffer2":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 293
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 295
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v17

    return-object v17
.end method

.method public getUnlockCommand()[B
    .locals 18

    .line 167
    const/16 v0, 0xa

    .line 168
    .local v0, "len":B
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0xfe

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-byte v1, v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    .line 169
    .local v1, "originalRand":B
    move-object/from16 v2, p0

    iget-byte v3, v2, Lcom/volnaiot/app/CommandCreator;->actualKey:B

    .line 170
    .local v3, "originalKey":B
    sget-object v4, Lcom/volnaiot/app/CommandCreator;->commandBytes:[B

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    .line 172
    .local v4, "originalCmd":B
    const/16 v5, 0xa

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    .line 175
    .local v5, "originalData":[B
    add-int/lit8 v6, v1, 0x32

    int-to-byte v6, v6

    .line 178
    .local v6, "rand":B
    xor-int v7, v3, v1

    int-to-byte v7, v7

    .line 179
    .local v7, "key":B
    xor-int v8, v4, v1

    int-to-byte v8, v8

    .line 181
    .local v8, "cmd":B
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 183
    .local v9, "out":Ljava/io/ByteArrayOutputStream;
    array-length v10, v5

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_0

    aget-byte v12, v5, v11

    .line 184
    .local v12, "b":B
    xor-int v13, v12, v1

    invoke-virtual {v9, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 183
    .end local v12    # "b":B
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    .line 188
    .local v10, "data":[B
    sget-object v11, Lcom/volnaiot/app/CommandCreator;->Header:[B

    array-length v11, v11

    add-int/lit8 v11, v11, 0x4

    array-length v12, v10

    add-int/2addr v11, v12

    new-array v11, v11, [B

    .line 190
    .local v11, "combined":[B
    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 191
    .local v12, "buffer":Ljava/nio/ByteBuffer;
    sget-object v13, Lcom/volnaiot/app/CommandCreator;->Header:[B

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 192
    invoke-virtual {v12, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 193
    invoke-virtual {v12, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 194
    invoke-virtual {v12, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 195
    invoke-virtual {v12, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 196
    invoke-virtual {v12, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 198
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    .line 199
    .local v13, "hex1":[B
    new-instance v14, Lcom/volnaiot/app/Crc8;

    invoke-direct {v14}, Lcom/volnaiot/app/Crc8;-><init>()V

    invoke-virtual {v14, v13}, Lcom/volnaiot/app/Crc8;->compute([B)I

    move-result v14

    int-to-byte v14, v14

    .line 201
    .local v14, "CRC":B
    array-length v15, v13

    add-int/lit8 v15, v15, 0x1

    new-array v15, v15, [B

    .line 203
    .local v15, "combined2":[B
    move/from16 v16, v0

    .end local v0    # "len":B
    .local v16, "len":B
    invoke-static {v15}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 204
    .local v0, "buffer2":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 205
    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 207
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v17

    return-object v17

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public init(Lcom/volnaiot/app/controlActivity;)V
    .locals 0
    .param p1, "controlActivity1"    # Lcom/volnaiot/app/controlActivity;

    .line 348
    iput-object p1, p0, Lcom/volnaiot/app/CommandCreator;->controlActivity:Lcom/volnaiot/app/controlActivity;

    .line 349
    return-void
.end method

.method public interceptMessage([B)V
    .locals 10
    .param p1, "message"    # [B

    .line 28
    const-string v0, "Intercepting Command"

    const-string v1, "CommandCreator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getByte(Ljava/lang/Object;I)B

    move-result v2

    const/4 v3, 0x1

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getByte(Ljava/lang/Object;I)B

    move-result v4

    const/4 v5, 0x2

    new-array v6, v5, [B

    aput-byte v2, v6, v0

    aput-byte v4, v6, v3

    move-object v0, v6

    .line 30
    .local v0, "mHeader":[B
    sget-object v2, Lcom/volnaiot/app/CommandCreator;->Header:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 31
    invoke-static {p1, v5}, Ljava/lang/reflect/Array;->getByte(Ljava/lang/Object;I)B

    move-result v2

    .line 32
    .local v2, "length":B
    const/4 v3, 0x3

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getByte(Ljava/lang/Object;I)B

    move-result v3

    add-int/lit8 v3, v3, -0x32

    int-to-byte v3, v3

    .line 34
    .local v3, "rand":B
    const/4 v4, 0x4

    invoke-static {p1, v4}, Ljava/lang/reflect/Array;->getByte(Ljava/lang/Object;I)B

    move-result v4

    xor-int/2addr v4, v3

    int-to-byte v4, v4

    .line 35
    .local v4, "key":B
    const/4 v5, 0x5

    invoke-static {p1, v5}, Ljava/lang/reflect/Array;->getByte(Ljava/lang/Object;I)B

    move-result v5

    xor-int/2addr v5, v3

    int-to-byte v5, v5

    .line 36
    .local v5, "cmd":B
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 37
    .local v6, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_0

    .line 38
    add-int/lit8 v8, v7, 0x6

    invoke-static {p1, v8}, Ljava/lang/reflect/Array;->getByte(Ljava/lang/Object;I)B

    move-result v8

    xor-int/2addr v8, v3

    invoke-virtual {v6, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 37
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 40
    .end local v7    # "i":I
    :cond_0
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 41
    .local v7, "data":[B
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    sget-object v9, Lcom/volnaiot/app/CommandCreator;->commandBytes:[B

    array-length v9, v9

    if-ge v8, v9, :cond_2

    .line 42
    sget-object v9, Lcom/volnaiot/app/CommandCreator;->commandBytes:[B

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->getByte(Ljava/lang/Object;I)B

    move-result v9

    if-ne v9, v5, :cond_1

    .line 43
    invoke-direct {p0, v5, v7}, Lcom/volnaiot/app/CommandCreator;->decodeMessage(B[B)V

    .line 44
    const-string v9, "Got Something"

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 48
    .end local v2    # "length":B
    .end local v3    # "rand":B
    .end local v4    # "key":B
    .end local v5    # "cmd":B
    .end local v6    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "data":[B
    .end local v8    # "i":I
    :cond_2
    return-void
.end method

.method public toHex([B)Ljava/lang/String;
    .locals 4
    .param p1, "bytes"    # [B

    .line 343
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 344
    .local v0, "bi":Ljava/math/BigInteger;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    shl-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
