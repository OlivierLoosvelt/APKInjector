.class public Lcom/and/util/GetResponseBody;
.super Ljava/lang/Object;
.source "GetResponseBody.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static _getResponseBody(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 10
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/net/ParseException;
        }
    .end annotation

    .prologue
    .line 65
    if-nez p0, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "HTTP entity may not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 67
    :cond_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 69
    .local v2, "instream":Ljava/io/InputStream;
    if-nez v2, :cond_1

    const-string v6, ""

    .line 105
    :goto_0
    return-object v6

    .line 71
    :cond_1
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    const-wide/32 v8, 0x7fffffff

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 73
    const-string v7, "HTTP entity too large to be buffered in memory"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 75
    :cond_2
    invoke-static {p0}, Lcom/and/util/GetResponseBody;->getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "charset":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 79
    const-string v1, "ISO-8859-1"

    .line 83
    :cond_3
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 85
    .local v4, "reader":Ljava/io/Reader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v6, 0x400

    :try_start_0
    new-array v5, v6, [C

    .line 93
    .local v5, "tmp":[C
    :goto_1
    invoke-virtual {v4, v5}, Ljava/io/Reader;->read([C)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .local v3, "l":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_4

    .line 101
    invoke-virtual {v4}, Ljava/io/Reader;->close()V

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 95
    :cond_4
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v0, v5, v6, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 99
    .end local v3    # "l":I
    .end local v5    # "tmp":[C
    :catchall_0
    move-exception v6

    .line 101
    invoke-virtual {v4}, Ljava/io/Reader;->close()V

    .line 103
    throw v6
.end method

.method public static getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 5
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ParseException;
        }
    .end annotation

    .prologue
    .line 111
    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "HTTP entity may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 113
    :cond_0
    const/4 v0, 0x0

    .line 115
    .local v0, "charset":Ljava/lang/String;
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 117
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v2

    .line 119
    .local v2, "values":[Lorg/apache/http/HeaderElement;
    array-length v3, v2

    if-lez v3, :cond_1

    .line 121
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string v4, "charset"

    invoke-interface {v3, v4}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v1

    .line 123
    .local v1, "param":Lorg/apache/http/NameValuePair;
    if-eqz v1, :cond_1

    .line 125
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 133
    .end local v1    # "param":Lorg/apache/http/NameValuePair;
    .end local v2    # "values":[Lorg/apache/http/HeaderElement;
    :cond_1
    return-object v0
.end method

.method public static getResponseBody(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 4
    .param p0, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 28
    const/4 v2, 0x0

    .line 30
    .local v2, "response_text":Ljava/lang/String;
    const/4 v1, 0x0

    .line 34
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 36
    invoke-static {v1}, Lcom/and/util/GetResponseBody;->_getResponseBody(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 58
    :cond_0
    :goto_0
    return-object v2

    .line 38
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Landroid/net/ParseException;
    invoke-virtual {v0}, Landroid/net/ParseException;->printStackTrace()V

    goto :goto_0

    .line 42
    .end local v0    # "e":Landroid/net/ParseException;
    :catch_1
    move-exception v0

    .line 44
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_0

    .line 48
    :try_start_1
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 50
    :catch_2
    move-exception v3

    goto :goto_0
.end method
