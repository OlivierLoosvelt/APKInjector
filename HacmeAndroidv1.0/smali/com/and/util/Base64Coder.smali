.class public Lcom/and/util/Base64Coder;
.super Ljava/lang/Object;
.source "Base64Coder.java"


# static fields
.field private static final map1:[C

.field private static final map2:[B

.field private static final systemLineSeparator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x40

    .line 30
    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/and/util/Base64Coder;->systemLineSeparator:Ljava/lang/String;

    .line 33
    new-array v3, v6, [C

    sput-object v3, Lcom/and/util/Base64Coder;->map1:[C

    .line 35
    const/4 v1, 0x0

    .line 36
    .local v1, "i":I
    const/16 v0, 0x41

    .local v0, "c":C
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    const/16 v3, 0x5a

    if-le v0, v3, :cond_0

    .line 37
    const/16 v0, 0x61

    :goto_1
    const/16 v3, 0x7a

    if-le v0, v3, :cond_1

    .line 38
    const/16 v0, 0x30

    :goto_2
    const/16 v3, 0x39

    if-le v0, v3, :cond_2

    .line 39
    sget-object v3, Lcom/and/util/Base64Coder;->map1:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    const/16 v4, 0x2b

    aput-char v4, v3, v2

    sget-object v3, Lcom/and/util/Base64Coder;->map1:[C

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    const/16 v4, 0x2f

    aput-char v4, v3, v1

    .line 42
    const/16 v3, 0x80

    new-array v3, v3, [B

    sput-object v3, Lcom/and/util/Base64Coder;->map2:[B

    .line 44
    const/4 v1, 0x0

    .end local v2    # "i":I
    .restart local v1    # "i":I
    :goto_3
    sget-object v3, Lcom/and/util/Base64Coder;->map2:[B

    array-length v3, v3

    if-lt v1, v3, :cond_3

    .line 45
    const/4 v1, 0x0

    :goto_4
    if-lt v1, v6, :cond_4

    .line 27
    return-void

    .line 36
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_0
    sget-object v3, Lcom/and/util/Base64Coder;->map1:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aput-char v0, v3, v2

    add-int/lit8 v3, v0, 0x1

    int-to-char v0, v3

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 37
    :cond_1
    sget-object v3, Lcom/and/util/Base64Coder;->map1:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aput-char v0, v3, v2

    add-int/lit8 v3, v0, 0x1

    int-to-char v0, v3

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 38
    :cond_2
    sget-object v3, Lcom/and/util/Base64Coder;->map1:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aput-char v0, v3, v2

    add-int/lit8 v3, v0, 0x1

    int-to-char v0, v3

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 44
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_3
    sget-object v3, Lcom/and/util/Base64Coder;->map2:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 45
    :cond_4
    sget-object v3, Lcom/and/util/Base64Coder;->map2:[B

    sget-object v4, Lcom/and/util/Base64Coder;->map1:[C

    aget-char v4, v4, v1

    int-to-byte v5, v1

    aput-byte v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/and/util/Base64Coder;->decode([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([C)[B
    .locals 2
    .param p0, "in"    # [C

    .prologue
    .line 181
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/and/util/Base64Coder;->decode([CII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([CII)[B
    .locals 22
    .param p0, "in"    # [C
    .param p1, "iOff"    # I
    .param p2, "iLen"    # I

    .prologue
    .line 193
    rem-int/lit8 v20, p2, 0x4

    if-eqz v20, :cond_1

    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "Length of Base64 encoded input string is not a multiple of 4."

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 194
    :cond_0
    add-int/lit8 p2, p2, -0x1

    :cond_1
    if-lez p2, :cond_2

    add-int v20, p1, p2

    add-int/lit8 v20, v20, -0x1

    aget-char v20, p0, v20

    const/16 v21, 0x3d

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 195
    :cond_2
    mul-int/lit8 v20, p2, 0x3

    div-int/lit8 v16, v20, 0x4

    .line 196
    .local v16, "oLen":I
    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 197
    .local v19, "out":[B
    move/from16 v11, p1

    .line 198
    .local v11, "ip":I
    add-int v10, p1, p2

    .line 199
    .local v10, "iEnd":I
    const/16 v17, 0x0

    .local v17, "op":I
    move/from16 v18, v17

    .end local v17    # "op":I
    .local v18, "op":I
    move v12, v11

    .line 200
    .end local v11    # "ip":I
    .local v12, "ip":I
    :goto_0
    if-lt v12, v10, :cond_3

    .line 219
    return-object v19

    .line 201
    :cond_3
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "ip":I
    .restart local v11    # "ip":I
    aget-char v6, p0, v12

    .line 202
    .local v6, "i0":I
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "ip":I
    .restart local v12    # "ip":I
    aget-char v7, p0, v11

    .line 203
    .local v7, "i1":I
    if-ge v12, v10, :cond_5

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "ip":I
    .restart local v11    # "ip":I
    aget-char v8, p0, v12

    move v12, v11

    .line 204
    .end local v11    # "ip":I
    .local v8, "i2":I
    .restart local v12    # "ip":I
    :goto_1
    if-ge v12, v10, :cond_6

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "ip":I
    .restart local v11    # "ip":I
    aget-char v9, p0, v12

    .line 205
    .local v9, "i3":I
    :goto_2
    const/16 v20, 0x7f

    move/from16 v0, v20

    if-gt v6, v0, :cond_4

    const/16 v20, 0x7f

    move/from16 v0, v20

    if-gt v7, v0, :cond_4

    const/16 v20, 0x7f

    move/from16 v0, v20

    if-gt v8, v0, :cond_4

    const/16 v20, 0x7f

    move/from16 v0, v20

    if-le v9, v0, :cond_7

    .line 206
    :cond_4
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "Illegal character in Base64 encoded data."

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 203
    .end local v8    # "i2":I
    .end local v9    # "i3":I
    .end local v11    # "ip":I
    .restart local v12    # "ip":I
    :cond_5
    const/16 v8, 0x41

    goto :goto_1

    .line 204
    .restart local v8    # "i2":I
    :cond_6
    const/16 v9, 0x41

    move v11, v12

    .end local v12    # "ip":I
    .restart local v11    # "ip":I
    goto :goto_2

    .line 207
    .restart local v9    # "i3":I
    :cond_7
    sget-object v20, Lcom/and/util/Base64Coder;->map2:[B

    aget-byte v2, v20, v6

    .line 208
    .local v2, "b0":I
    sget-object v20, Lcom/and/util/Base64Coder;->map2:[B

    aget-byte v3, v20, v7

    .line 209
    .local v3, "b1":I
    sget-object v20, Lcom/and/util/Base64Coder;->map2:[B

    aget-byte v4, v20, v8

    .line 210
    .local v4, "b2":I
    sget-object v20, Lcom/and/util/Base64Coder;->map2:[B

    aget-byte v5, v20, v9

    .line 211
    .local v5, "b3":I
    if-ltz v2, :cond_8

    if-ltz v3, :cond_8

    if-ltz v4, :cond_8

    if-gez v5, :cond_9

    .line 212
    :cond_8
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "Illegal character in Base64 encoded data."

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 213
    :cond_9
    shl-int/lit8 v20, v2, 0x2

    ushr-int/lit8 v21, v3, 0x4

    or-int v13, v20, v21

    .line 214
    .local v13, "o0":I
    and-int/lit8 v20, v3, 0xf

    shl-int/lit8 v20, v20, 0x4

    ushr-int/lit8 v21, v4, 0x2

    or-int v14, v20, v21

    .line 215
    .local v14, "o1":I
    and-int/lit8 v20, v4, 0x3

    shl-int/lit8 v20, v20, 0x6

    or-int v15, v20, v5

    .line 216
    .local v15, "o2":I
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "op":I
    .restart local v17    # "op":I
    int-to-byte v0, v13

    move/from16 v20, v0

    aput-byte v20, v19, v18

    .line 217
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_b

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "op":I
    .restart local v18    # "op":I
    int-to-byte v0, v14

    move/from16 v20, v0

    aput-byte v20, v19, v17

    .line 218
    :goto_3
    move/from16 v0, v18

    move/from16 v1, v16

    if-ge v0, v1, :cond_a

    add-int/lit8 v17, v18, 0x1

    .end local v18    # "op":I
    .restart local v17    # "op":I
    int-to-byte v0, v15

    move/from16 v20, v0

    aput-byte v20, v19, v18

    move/from16 v18, v17

    .end local v17    # "op":I
    .restart local v18    # "op":I
    move v12, v11

    .end local v11    # "ip":I
    .restart local v12    # "ip":I
    goto/16 :goto_0

    .end local v12    # "ip":I
    .restart local v11    # "ip":I
    :cond_a
    move v12, v11

    .end local v11    # "ip":I
    .restart local v12    # "ip":I
    goto/16 :goto_0

    .end local v12    # "ip":I
    .end local v18    # "op":I
    .restart local v11    # "ip":I
    .restart local v17    # "op":I
    :cond_b
    move/from16 v18, v17

    .end local v17    # "op":I
    .restart local v18    # "op":I
    goto :goto_3
.end method

.method public static decodeLines(Ljava/lang/String;)[B
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    new-array v0, v5, [C

    .line 156
    .local v0, "buf":[C
    const/4 v3, 0x0

    .line 157
    .local v3, "p":I
    const/4 v2, 0x0

    .local v2, "ip":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v2, v5, :cond_0

    .line 161
    const/4 v5, 0x0

    invoke-static {v0, v5, v3}, Lcom/and/util/Base64Coder;->decode([CII)[B

    move-result-object v5

    return-object v5

    .line 158
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 159
    .local v1, "c":C
    const/16 v5, 0x20

    if-eq v1, v5, :cond_1

    const/16 v5, 0xd

    if-eq v1, v5, :cond_1

    const/16 v5, 0xa

    if-eq v1, v5, :cond_1

    const/16 v5, 0x9

    if-eq v1, v5, :cond_1

    .line 160
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "p":I
    .local v4, "p":I
    aput-char v1, v0, v3

    move v3, v4

    .line 157
    .end local v4    # "p":I
    .restart local v3    # "p":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static decodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 144
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/and/util/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static encode([B)[C
    .locals 2
    .param p0, "in"    # [B

    .prologue
    .line 95
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/and/util/Base64Coder;->encode([BII)[C

    move-result-object v0

    return-object v0
.end method

.method public static encode([BI)[C
    .locals 1
    .param p0, "in"    # [B
    .param p1, "iLen"    # I

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/and/util/Base64Coder;->encode([BII)[C

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII)[C
    .locals 17
    .param p0, "in"    # [B
    .param p1, "iOff"    # I
    .param p2, "iLen"    # I

    .prologue
    .line 116
    mul-int/lit8 v15, p2, 0x4

    add-int/lit8 v15, v15, 0x2

    div-int/lit8 v10, v15, 0x3

    .line 117
    .local v10, "oDataLen":I
    add-int/lit8 v15, p2, 0x2

    div-int/lit8 v15, v15, 0x3

    mul-int/lit8 v11, v15, 0x4

    .line 118
    .local v11, "oLen":I
    new-array v14, v11, [C

    .line 119
    .local v14, "out":[C
    move/from16 v4, p1

    .line 120
    .local v4, "ip":I
    add-int v3, p1, p2

    .line 121
    .local v3, "iEnd":I
    const/4 v12, 0x0

    .local v12, "op":I
    move v13, v12

    .end local v12    # "op":I
    .local v13, "op":I
    move v5, v4

    .line 122
    .end local v4    # "ip":I
    .local v5, "ip":I
    :goto_0
    if-lt v5, v3, :cond_0

    .line 134
    return-object v14

    .line 123
    :cond_0
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ip":I
    .restart local v4    # "ip":I
    aget-byte v15, p0, v5

    and-int/lit16 v0, v15, 0xff

    .line 124
    .local v0, "i0":I
    if-ge v4, v3, :cond_1

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ip":I
    .restart local v5    # "ip":I
    aget-byte v15, p0, v4

    and-int/lit16 v1, v15, 0xff

    .line 125
    .local v1, "i1":I
    :goto_1
    if-ge v5, v3, :cond_2

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ip":I
    .restart local v4    # "ip":I
    aget-byte v15, p0, v5

    and-int/lit16 v2, v15, 0xff

    .line 126
    .local v2, "i2":I
    :goto_2
    ushr-int/lit8 v6, v0, 0x2

    .line 127
    .local v6, "o0":I
    and-int/lit8 v15, v0, 0x3

    shl-int/lit8 v15, v15, 0x4

    ushr-int/lit8 v16, v1, 0x4

    or-int v7, v15, v16

    .line 128
    .local v7, "o1":I
    and-int/lit8 v15, v1, 0xf

    shl-int/lit8 v15, v15, 0x2

    ushr-int/lit8 v16, v2, 0x6

    or-int v8, v15, v16

    .line 129
    .local v8, "o2":I
    and-int/lit8 v9, v2, 0x3f

    .line 130
    .local v9, "o3":I
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "op":I
    .restart local v12    # "op":I
    sget-object v15, Lcom/and/util/Base64Coder;->map1:[C

    aget-char v15, v15, v6

    aput-char v15, v14, v13

    .line 131
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "op":I
    .restart local v13    # "op":I
    sget-object v15, Lcom/and/util/Base64Coder;->map1:[C

    aget-char v15, v15, v7

    aput-char v15, v14, v12

    .line 132
    if-ge v13, v10, :cond_3

    sget-object v15, Lcom/and/util/Base64Coder;->map1:[C

    aget-char v15, v15, v8

    :goto_3
    aput-char v15, v14, v13

    add-int/lit8 v12, v13, 0x1

    .line 133
    .end local v13    # "op":I
    .restart local v12    # "op":I
    if-ge v12, v10, :cond_4

    sget-object v15, Lcom/and/util/Base64Coder;->map1:[C

    aget-char v15, v15, v9

    :goto_4
    aput-char v15, v14, v12

    add-int/lit8 v12, v12, 0x1

    move v13, v12

    .end local v12    # "op":I
    .restart local v13    # "op":I
    move v5, v4

    .end local v4    # "ip":I
    .restart local v5    # "ip":I
    goto :goto_0

    .line 124
    .end local v1    # "i1":I
    .end local v2    # "i2":I
    .end local v5    # "ip":I
    .end local v6    # "o0":I
    .end local v7    # "o1":I
    .end local v8    # "o2":I
    .end local v9    # "o3":I
    .restart local v4    # "ip":I
    :cond_1
    const/4 v1, 0x0

    move v5, v4

    .end local v4    # "ip":I
    .restart local v5    # "ip":I
    goto :goto_1

    .line 125
    .restart local v1    # "i1":I
    :cond_2
    const/4 v2, 0x0

    move v4, v5

    .end local v5    # "ip":I
    .restart local v4    # "ip":I
    goto :goto_2

    .line 132
    .restart local v2    # "i2":I
    .restart local v6    # "o0":I
    .restart local v7    # "o1":I
    .restart local v8    # "o2":I
    .restart local v9    # "o3":I
    :cond_3
    const/16 v15, 0x3d

    goto :goto_3

    .line 133
    .end local v13    # "op":I
    .restart local v12    # "op":I
    :cond_4
    const/16 v15, 0x3d

    goto :goto_4
.end method

.method public static encodeLines([B)Ljava/lang/String;
    .locals 4
    .param p0, "in"    # [B

    .prologue
    .line 63
    const/4 v0, 0x0

    array-length v1, p0

    const/16 v2, 0x4c

    sget-object v3, Lcom/and/util/Base64Coder;->systemLineSeparator:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/and/util/Base64Coder;->encodeLines([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeLines([BIIILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "in"    # [B
    .param p1, "iOff"    # I
    .param p2, "iLen"    # I
    .param p3, "lineLen"    # I
    .param p4, "lineSeparator"    # Ljava/lang/String;

    .prologue
    .line 75
    mul-int/lit8 v6, p3, 0x3

    div-int/lit8 v0, v6, 0x4

    .line 76
    .local v0, "blockLen":I
    if-gtz v0, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 77
    :cond_0
    add-int v6, p2, v0

    add-int/lit8 v6, v6, -0x1

    div-int v5, v6, v0

    .line 78
    .local v5, "lines":I
    add-int/lit8 v6, p2, 0x2

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/2addr v7, v5

    add-int v2, v6, v7

    .line 79
    .local v2, "bufLen":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 80
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 81
    .local v3, "ip":I
    :goto_0
    if-lt v3, p2, :cond_1

    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 82
    :cond_1
    sub-int v6, p2, v3

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 83
    .local v4, "l":I
    add-int v6, p1, v3

    invoke-static {p0, v6, v4}, Lcom/and/util/Base64Coder;->encode([BII)[C

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    add-int/2addr v3, v4

    goto :goto_0
.end method

.method public static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 54
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/and/util/Base64Coder;->encode([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
