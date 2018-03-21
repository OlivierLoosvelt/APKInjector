.class public Lcom/and/service/Profileupdate1service;
.super Ljava/lang/Object;
.source "Profileupdate1service.java"


# instance fields
.field private envelope:Ljava/lang/String;

.field private httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private profileupdate1Response:Lcom/and/response/Profileupdate1Response;

.field private profileupdate1ResponseParser:Lcom/and/parsers/Profileupdate1ResponseParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:oss=\"http://foundstone.com/ws/schema/oss\"><soapenv:Header/><soapenv:Body><oss:Profileupdate1Request><oss:username>usernamereplace</oss:username></oss:Profileupdate1Request></soapenv:Body></soapenv:Envelope>"

    iput-object v0, p0, Lcom/and/service/Profileupdate1service;->envelope:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public send(Ljava/lang/String;)Lcom/and/response/Profileupdate1Response;
    .locals 6
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 39
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "started"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 42
    :try_start_0
    sget-object v4, Lcom/and/util/Globals;->Httpsflag:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4}, Lcom/ssl/bypass/MyHttpClient;->getHttpClient(Z)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v4

    iput-object v4, p0, Lcom/and/service/Profileupdate1service;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 43
    iget-object v4, p0, Lcom/and/service/Profileupdate1service;->envelope:Ljava/lang/String;

    const-string v5, "usernamereplace"

    invoke-virtual {v4, v5, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/and/service/Profileupdate1service;->envelope:Ljava/lang/String;

    .line 44
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    sget-object v4, Lcom/and/util/Globals;->PostURL:Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 45
    .local v2, "httppost":Lorg/apache/http/client/methods/HttpPost;
    const-string v4, "Content-Type"

    const-string v5, "text/xml; charset=utf-8"

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v4, "SOAPAction"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v4, "Accept-Encoding"

    const-string v5, "gzip,deflate"

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    iget-object v4, p0, Lcom/and/service/Profileupdate1service;->envelope:Ljava/lang/String;

    invoke-direct {v1, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 50
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 51
    iget-object v4, p0, Lcom/and/service/Profileupdate1service;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 52
    .local v3, "response":Lorg/apache/http/HttpResponse;
    new-instance v4, Lcom/and/parsers/Profileupdate1ResponseParser;

    invoke-direct {v4}, Lcom/and/parsers/Profileupdate1ResponseParser;-><init>()V

    iput-object v4, p0, Lcom/and/service/Profileupdate1service;->profileupdate1ResponseParser:Lcom/and/parsers/Profileupdate1ResponseParser;

    .line 53
    iget-object v4, p0, Lcom/and/service/Profileupdate1service;->profileupdate1ResponseParser:Lcom/and/parsers/Profileupdate1ResponseParser;

    invoke-static {v3}, Lcom/and/util/GetResponseBody;->getResponseBody(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/and/parsers/Profileupdate1ResponseParser;->parser(Ljava/lang/String;)Lcom/and/response/Profileupdate1Response;

    move-result-object v4

    iput-object v4, p0, Lcom/and/service/Profileupdate1service;->profileupdate1Response:Lcom/and/response/Profileupdate1Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v2    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    iget-object v4, p0, Lcom/and/service/Profileupdate1service;->profileupdate1Response:Lcom/and/response/Profileupdate1Response;

    return-object v4

    .line 56
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
