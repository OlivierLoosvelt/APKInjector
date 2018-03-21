.class public Lcom/and/service/Loginservice;
.super Ljava/lang/Object;
.source "Loginservice.java"


# instance fields
.field private envelope:Ljava/lang/String;

.field private httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private httpPost:Lorg/apache/http/client/methods/HttpPost;

.field private loginresponse:Lcom/and/response/Loginresponse;

.field private loginresponseParser:Lcom/and/parsers/LoginresponseParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:oss=\"http://foundstone.com/ws/schema/oss\"><soapenv:Header/><soapenv:Body><oss:LoginRequest><oss:username>usernamerepalce</oss:username><oss:Password>passwordreplace</oss:Password></oss:LoginRequest></soapenv:Body></soapenv:Envelope>"

    iput-object v0, p0, Lcom/and/service/Loginservice;->envelope:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public send(Ljava/lang/String;Ljava/lang/String;)Lcom/and/response/Loginresponse;
    .locals 8
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "started"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 47
    const-string v5, "INFO"

    const-string v6, "LOGINRESPONSE SEND: E"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :try_start_0
    sget-object v5, Lcom/and/util/Globals;->Httpsflag:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 54
    sget-object v5, Lcom/and/util/Globals;->Httpsflag:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v5}, Lcom/ssl/bypass/MyHttpClient;->getHttpClient(Z)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v5

    iput-object v5, p0, Lcom/and/service/Loginservice;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 55
    iget-object v5, p0, Lcom/and/service/Loginservice;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    .line 56
    .local v3, "params":Lorg/apache/http/params/HttpParams;
    iget-object v5, p0, Lcom/and/service/Loginservice;->envelope:Ljava/lang/String;

    const-string v6, "usernamerepalce"

    invoke-virtual {v5, v6, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/and/service/Loginservice;->envelope:Ljava/lang/String;

    .line 57
    iget-object v5, p0, Lcom/and/service/Loginservice;->envelope:Ljava/lang/String;

    const-string v6, "passwordreplace"

    invoke-virtual {v5, v6, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/and/service/Loginservice;->envelope:Ljava/lang/String;

    .line 58
    new-instance v5, Ljava/lang/Integer;

    const/16 v6, 0x4e20

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v3, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 59
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    sget-object v5, Lcom/and/util/Globals;->PostURL:Ljava/lang/String;

    invoke-direct {v2, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 60
    .local v2, "httppost":Lorg/apache/http/client/methods/HttpPost;
    const-string v5, "Content-Type"

    const-string v6, "text/xml; charset=utf-8"

    invoke-virtual {v2, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v5, "SOAPAction"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v5, "Accept-Encoding"

    const-string v6, "gzip,deflate"

    invoke-virtual {v2, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    iget-object v5, p0, Lcom/and/service/Loginservice;->envelope:Ljava/lang/String;

    invoke-direct {v1, v5}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 64
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 66
    iget-object v5, p0, Lcom/and/service/Loginservice;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v5, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 67
    .local v4, "response":Lorg/apache/http/HttpResponse;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    .end local v2    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    :goto_0
    new-instance v5, Lcom/and/parsers/LoginresponseParser;

    invoke-direct {v5}, Lcom/and/parsers/LoginresponseParser;-><init>()V

    iput-object v5, p0, Lcom/and/service/Loginservice;->loginresponseParser:Lcom/and/parsers/LoginresponseParser;

    .line 86
    iget-object v5, p0, Lcom/and/service/Loginservice;->loginresponseParser:Lcom/and/parsers/LoginresponseParser;

    invoke-static {v4}, Lcom/and/util/GetResponseBody;->getResponseBody(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/and/parsers/LoginresponseParser;->parser(Ljava/lang/String;)Lcom/and/response/Loginresponse;

    move-result-object v5

    iput-object v5, p0, Lcom/and/service/Loginservice;->loginresponse:Lcom/and/response/Loginresponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v3    # "params":Lorg/apache/http/params/HttpParams;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    :goto_1
    iget-object v5, p0, Lcom/and/service/Loginservice;->loginresponse:Lcom/and/response/Loginresponse;

    return-object v5

    .line 71
    :cond_0
    :try_start_1
    sget-object v5, Lcom/and/util/Globals;->Httpsflag:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v5}, Lcom/ssl/bypass/MyHttpClient;->getHttpClient(Z)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v5

    iput-object v5, p0, Lcom/and/service/Loginservice;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 72
    iget-object v5, p0, Lcom/and/service/Loginservice;->envelope:Ljava/lang/String;

    const-string v6, "usernamerepalce"

    invoke-virtual {v5, v6, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/and/service/Loginservice;->envelope:Ljava/lang/String;

    .line 73
    iget-object v5, p0, Lcom/and/service/Loginservice;->envelope:Ljava/lang/String;

    const-string v6, "passwordreplace"

    invoke-virtual {v5, v6, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/and/service/Loginservice;->envelope:Ljava/lang/String;

    .line 74
    iget-object v5, p0, Lcom/and/service/Loginservice;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    .line 75
    .restart local v3    # "params":Lorg/apache/http/params/HttpParams;
    new-instance v5, Ljava/lang/Integer;

    const/16 v6, 0x4e20

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v3, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 76
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    sget-object v6, Lcom/and/util/Globals;->PostURL:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/and/service/Loginservice;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    .line 77
    iget-object v5, p0, Lcom/and/service/Loginservice;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    const-string v6, "Content-Type"

    const-string v7, "text/xml; charset=utf-8"

    invoke-virtual {v5, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v5, p0, Lcom/and/service/Loginservice;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    const-string v6, "SOAPAction"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v5, p0, Lcom/and/service/Loginservice;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    const-string v6, "Accept-Encoding"

    const-string v7, "gzip,deflate"

    invoke-virtual {v5, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    iget-object v5, p0, Lcom/and/service/Loginservice;->envelope:Ljava/lang/String;

    invoke-direct {v1, v5}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 81
    .restart local v1    # "entity":Lorg/apache/http/HttpEntity;
    iget-object v5, p0, Lcom/and/service/Loginservice;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v5, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 82
    iget-object v5, p0, Lcom/and/service/Loginservice;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v6, p0, Lcom/and/service/Loginservice;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v5, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .restart local v4    # "response":Lorg/apache/http/HttpResponse;
    goto/16 :goto_0

    .line 88
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v3    # "params":Lorg/apache/http/params/HttpParams;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/and/service/Loginservice;->loginresponse:Lcom/and/response/Loginresponse;

    goto/16 :goto_1
.end method
