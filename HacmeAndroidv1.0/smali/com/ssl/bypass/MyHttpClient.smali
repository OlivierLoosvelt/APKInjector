.class public Lcom/ssl/bypass/MyHttpClient;
.super Ljava/lang/Object;
.source "MyHttpClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHttpClient(Z)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 5
    .param p0, "flag"    # Z

    .prologue
    .line 14
    if-eqz p0, :cond_1

    .line 17
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 18
    .local v0, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    sget-object v3, Lcom/and/util/Globals;->Fiddler:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20
    new-instance v2, Lorg/apache/http/HttpHost;

    sget-object v3, Lcom/and/util/Globals;->proxyIp:Ljava/lang/String;

    sget-object v4, Lcom/and/util/Globals;->proxyPort:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 21
    .local v2, "proxy":Lorg/apache/http/HttpHost;
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "http.route.default-proxy"

    invoke-interface {v3, v4, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .end local v2    # "proxy":Lorg/apache/http/HttpHost;
    :cond_0
    move-object v1, v0

    .line 35
    .end local v0    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .local v1, "httpClient":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 29
    .end local v1    # "httpClient":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lcom/ssl/bypass/BypassedHttpClient;

    invoke-direct {v0}, Lcom/ssl/bypass/BypassedHttpClient;-><init>()V

    .line 30
    .restart local v0    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    sget-object v3, Lcom/and/util/Globals;->Fiddler:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 32
    new-instance v2, Lorg/apache/http/HttpHost;

    sget-object v3, Lcom/and/util/Globals;->proxyIp:Ljava/lang/String;

    sget-object v4, Lcom/and/util/Globals;->proxyPort:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 33
    .restart local v2    # "proxy":Lorg/apache/http/HttpHost;
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "http.route.default-proxy"

    invoke-interface {v3, v4, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .end local v2    # "proxy":Lorg/apache/http/HttpHost;
    :cond_2
    move-object v1, v0

    .line 35
    .restart local v1    # "httpClient":Ljava/lang/Object;
    goto :goto_0
.end method
