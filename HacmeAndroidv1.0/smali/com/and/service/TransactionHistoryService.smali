.class public Lcom/and/service/TransactionHistoryService;
.super Ljava/lang/Object;
.source "TransactionHistoryService.java"


# instance fields
.field private envelope:Ljava/lang/String;

.field private httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private transactionHistoryParser:Lcom/and/parsers/TransactionHistoryParser;

.field private transactionHistoryResponse:Lcom/and/response/TransactionHistoryResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:oss=\"http://foundstone.com/ws/schema/oss\"><soapenv:Header/><soapenv:Body><oss:TransactionHistoryRequest><oss:AccountNumber>fromassccountnumber</oss:AccountNumber><oss:SessionID>?</oss:SessionID></oss:TransactionHistoryRequest></soapenv:Body></soapenv:Envelope>"

    iput-object v0, p0, Lcom/and/service/TransactionHistoryService;->envelope:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public send()Lcom/and/response/TransactionHistoryResponse;
    .locals 8

    .prologue
    .line 44
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "started in transactionhistory service"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    new-instance v5, Lcom/and/parsers/TransactionHistoryParser;

    invoke-direct {v5}, Lcom/and/parsers/TransactionHistoryParser;-><init>()V

    iput-object v5, p0, Lcom/and/service/TransactionHistoryService;->transactionHistoryParser:Lcom/and/parsers/TransactionHistoryParser;

    .line 48
    :try_start_0
    iget-object v5, p0, Lcom/and/service/TransactionHistoryService;->envelope:Ljava/lang/String;

    const-string v6, "fromassccountnumber"

    sget-object v7, Lcom/and/util/Globals;->accountnumber:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/and/service/TransactionHistoryService;->envelope:Ljava/lang/String;

    .line 49
    sget-object v5, Lcom/and/util/Globals;->Httpsflag:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v5}, Lcom/ssl/bypass/MyHttpClient;->getHttpClient(Z)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v5

    iput-object v5, p0, Lcom/and/service/TransactionHistoryService;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 50
    iget-object v5, p0, Lcom/and/service/TransactionHistoryService;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    .line 52
    .local v3, "params":Lorg/apache/http/params/HttpParams;
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    sget-object v5, Lcom/and/util/Globals;->PostURL:Ljava/lang/String;

    invoke-direct {v2, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 53
    .local v2, "httppost":Lorg/apache/http/client/methods/HttpPost;
    const-string v5, "Content-Type"

    const-string v6, "text/xml; charset=utf-8"

    invoke-virtual {v2, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v5, "SOAPAction"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v5, "Accept-Encoding"

    const-string v6, "gzip,deflate"

    invoke-virtual {v2, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    iget-object v5, p0, Lcom/and/service/TransactionHistoryService;->envelope:Ljava/lang/String;

    invoke-direct {v1, v5}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 59
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 74
    iget-object v5, p0, Lcom/and/service/TransactionHistoryService;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v5, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 75
    .local v4, "response":Lorg/apache/http/HttpResponse;
    iget-object v5, p0, Lcom/and/service/TransactionHistoryService;->transactionHistoryParser:Lcom/and/parsers/TransactionHistoryParser;

    invoke-static {v4}, Lcom/and/util/GetResponseBody;->getResponseBody(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/and/parsers/TransactionHistoryParser;->parser(Ljava/lang/String;)Lcom/and/response/TransactionHistoryResponse;

    move-result-object v5

    iput-object v5, p0, Lcom/and/service/TransactionHistoryService;->transactionHistoryResponse:Lcom/and/response/TransactionHistoryResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v2    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v3    # "params":Lorg/apache/http/params/HttpParams;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    iget-object v5, p0, Lcom/and/service/TransactionHistoryService;->transactionHistoryResponse:Lcom/and/response/TransactionHistoryResponse;

    return-object v5

    .line 78
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
