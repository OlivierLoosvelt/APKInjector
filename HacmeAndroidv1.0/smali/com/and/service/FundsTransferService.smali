.class public Lcom/and/service/FundsTransferService;
.super Ljava/lang/Object;
.source "FundsTransferService.java"


# instance fields
.field private envelope:Ljava/lang/String;

.field private fundsTransferResponse:Lcom/and/response/FundsTransferResponse;

.field private fundsTransferResponseParser:Lcom/and/parsers/FundsTransferResponseParser;

.field private httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:oss=\"http://foundstone.com/ws/schema/oss\"><soapenv:Header/><soapenv:Body><oss:FundsTransferRequest><oss:FromAccountNumber>FromAccoutnNumberstring</oss:FromAccountNumber><oss:ToAccountNumber>ToAccountNumberstring</oss:ToAccountNumber><oss:Amount>Amountstring</oss:Amount></oss:FundsTransferRequest></soapenv:Body></soapenv:Envelope>"

    iput-object v0, p0, Lcom/and/service/FundsTransferService;->envelope:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/and/response/FundsTransferResponse;
    .locals 6
    .param p1, "FromAccoutnNumber"    # Ljava/lang/String;
    .param p2, "ToAccountNumber"    # Ljava/lang/String;
    .param p3, "Amount"    # Ljava/lang/String;

    .prologue
    .line 41
    :try_start_0
    iget-object v4, p0, Lcom/and/service/FundsTransferService;->envelope:Ljava/lang/String;

    const-string v5, "FromAccoutnNumberstring"

    invoke-virtual {v4, v5, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/and/service/FundsTransferService;->envelope:Ljava/lang/String;

    .line 42
    iget-object v4, p0, Lcom/and/service/FundsTransferService;->envelope:Ljava/lang/String;

    const-string v5, "ToAccountNumberstring"

    invoke-virtual {v4, v5, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/and/service/FundsTransferService;->envelope:Ljava/lang/String;

    .line 43
    iget-object v4, p0, Lcom/and/service/FundsTransferService;->envelope:Ljava/lang/String;

    const-string v5, "Amountstring"

    invoke-virtual {v4, v5, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/and/service/FundsTransferService;->envelope:Ljava/lang/String;

    .line 45
    sget-object v4, Lcom/and/util/Globals;->Httpsflag:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4}, Lcom/ssl/bypass/MyHttpClient;->getHttpClient(Z)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v4

    iput-object v4, p0, Lcom/and/service/FundsTransferService;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 46
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    sget-object v4, Lcom/and/util/Globals;->PostURL:Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 47
    .local v2, "httppost":Lorg/apache/http/client/methods/HttpPost;
    const-string v4, "Content-Type"

    const-string v5, "text/xml; charset=utf-8"

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v4, "SOAPAction"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v4, "Accept-Encoding"

    const-string v5, "gzip,deflate"

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    iget-object v4, p0, Lcom/and/service/FundsTransferService;->envelope:Ljava/lang/String;

    invoke-direct {v1, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 54
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 58
    iget-object v4, p0, Lcom/and/service/FundsTransferService;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 60
    .local v3, "response":Lorg/apache/http/HttpResponse;
    new-instance v4, Lcom/and/parsers/FundsTransferResponseParser;

    invoke-direct {v4}, Lcom/and/parsers/FundsTransferResponseParser;-><init>()V

    iput-object v4, p0, Lcom/and/service/FundsTransferService;->fundsTransferResponseParser:Lcom/and/parsers/FundsTransferResponseParser;

    .line 61
    iget-object v4, p0, Lcom/and/service/FundsTransferService;->fundsTransferResponseParser:Lcom/and/parsers/FundsTransferResponseParser;

    invoke-static {v3}, Lcom/and/util/GetResponseBody;->getResponseBody(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/and/parsers/FundsTransferResponseParser;->parser(Ljava/lang/String;)Lcom/and/response/FundsTransferResponse;

    move-result-object v4

    iput-object v4, p0, Lcom/and/service/FundsTransferService;->fundsTransferResponse:Lcom/and/response/FundsTransferResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v2    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    iget-object v4, p0, Lcom/and/service/FundsTransferService;->fundsTransferResponse:Lcom/and/response/FundsTransferResponse;

    return-object v4

    .line 64
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
