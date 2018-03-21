.class public Lcom/and/service/AccountSummaryService;
.super Ljava/lang/Object;
.source "AccountSummaryService.java"


# instance fields
.field private accountSummaryResponse:Lcom/and/response/AccountSummaryResponse;

.field private accountSummaryResponseParser:Lcom/and/parsers/AccountSummaryResponseParser;

.field private envelope:Ljava/lang/String;

.field private httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:oss=\"http://foundstone.com/ws/schema/oss\"><soapenv:Header/><soapenv:Body><oss:ViewAccountRequest><oss:AccountNumber>accountnumbereplace</oss:AccountNumber></oss:ViewAccountRequest></soapenv:Body></soapenv:Envelope>"

    iput-object v0, p0, Lcom/and/service/AccountSummaryService;->envelope:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public send()Lcom/and/response/AccountSummaryResponse;
    .locals 7

    .prologue
    .line 39
    :try_start_0
    iget-object v4, p0, Lcom/and/service/AccountSummaryService;->envelope:Ljava/lang/String;

    const-string v5, "accountnumbereplace"

    sget-object v6, Lcom/and/util/Globals;->accountnumber:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/and/service/AccountSummaryService;->envelope:Ljava/lang/String;

    .line 40
    sget-object v4, Lcom/and/util/Globals;->Httpsflag:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4}, Lcom/ssl/bypass/MyHttpClient;->getHttpClient(Z)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v4

    iput-object v4, p0, Lcom/and/service/AccountSummaryService;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 41
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    sget-object v4, Lcom/and/util/Globals;->PostURL:Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 42
    .local v2, "httppost":Lorg/apache/http/client/methods/HttpPost;
    const-string v4, "Content-Type"

    const-string v5, "text/xml; charset=utf-8"

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v4, "SOAPAction"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v4, "Accept-Encoding"

    const-string v5, "gzip,deflate"

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    iget-object v4, p0, Lcom/and/service/AccountSummaryService;->envelope:Ljava/lang/String;

    invoke-direct {v1, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 46
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 47
    iget-object v4, p0, Lcom/and/service/AccountSummaryService;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 48
    .local v3, "response":Lorg/apache/http/HttpResponse;
    new-instance v4, Lcom/and/parsers/AccountSummaryResponseParser;

    invoke-direct {v4}, Lcom/and/parsers/AccountSummaryResponseParser;-><init>()V

    iput-object v4, p0, Lcom/and/service/AccountSummaryService;->accountSummaryResponseParser:Lcom/and/parsers/AccountSummaryResponseParser;

    .line 49
    iget-object v4, p0, Lcom/and/service/AccountSummaryService;->accountSummaryResponseParser:Lcom/and/parsers/AccountSummaryResponseParser;

    invoke-static {v3}, Lcom/and/util/GetResponseBody;->getResponseBody(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/and/parsers/AccountSummaryResponseParser;->parser(Ljava/lang/String;)Lcom/and/response/AccountSummaryResponse;

    move-result-object v4

    iput-object v4, p0, Lcom/and/service/AccountSummaryService;->accountSummaryResponse:Lcom/and/response/AccountSummaryResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v2    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    iget-object v4, p0, Lcom/and/service/AccountSummaryService;->accountSummaryResponse:Lcom/and/response/AccountSummaryResponse;

    return-object v4

    .line 51
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
