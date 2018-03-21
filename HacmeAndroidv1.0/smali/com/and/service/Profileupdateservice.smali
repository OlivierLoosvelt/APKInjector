.class public Lcom/and/service/Profileupdateservice;
.super Ljava/lang/Object;
.source "Profileupdateservice.java"


# instance fields
.field private envelope:Ljava/lang/String;

.field private httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private profileupdateResponse:Lcom/and/response/ProfileupdateResponse;

.field private profileupdatereposneparser:Lcom/and/parsers/Profileupdatereposneparser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:oss=\"http://foundstone.com/ws/schema/oss\"><soapenv:Header/><soapenv:Body><oss:ProfileupdateRequest><oss:Adress>adressreplace</oss:Adress><oss:EmailID>emailidreplace</oss:EmailID><oss:Firstname>firstnamereplace</oss:Firstname><oss:Lastname>lastnamereplace</oss:Lastname><oss:Phone>phonereplace</oss:Phone><oss:username>usernamereplace</oss:username></oss:ProfileupdateRequest></soapenv:Body></soapenv:Envelope>"

    iput-object v0, p0, Lcom/and/service/Profileupdateservice;->envelope:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/and/response/ProfileupdateResponse;
    .locals 8
    .param p1, "adress"    # Ljava/lang/String;
    .param p2, "emailid"    # Ljava/lang/String;
    .param p3, "firstname"    # Ljava/lang/String;
    .param p4, "lastname"    # Ljava/lang/String;
    .param p5, "phone"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v5, p0, Lcom/and/service/Profileupdateservice;->envelope:Ljava/lang/String;

    const-string v6, "adressreplace"

    invoke-virtual {v5, v6, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/and/service/Profileupdateservice;->envelope:Ljava/lang/String;

    .line 47
    iget-object v5, p0, Lcom/and/service/Profileupdateservice;->envelope:Ljava/lang/String;

    const-string v6, "emailidreplace"

    invoke-virtual {v5, v6, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/and/service/Profileupdateservice;->envelope:Ljava/lang/String;

    .line 48
    iget-object v5, p0, Lcom/and/service/Profileupdateservice;->envelope:Ljava/lang/String;

    const-string v6, "firstnamereplace"

    invoke-virtual {v5, v6, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/and/service/Profileupdateservice;->envelope:Ljava/lang/String;

    .line 49
    iget-object v5, p0, Lcom/and/service/Profileupdateservice;->envelope:Ljava/lang/String;

    const-string v6, "lastnamereplace"

    invoke-virtual {v5, v6, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/and/service/Profileupdateservice;->envelope:Ljava/lang/String;

    .line 50
    iget-object v5, p0, Lcom/and/service/Profileupdateservice;->envelope:Ljava/lang/String;

    const-string v6, "phonereplace"

    invoke-virtual {v5, v6, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/and/service/Profileupdateservice;->envelope:Ljava/lang/String;

    .line 51
    iget-object v5, p0, Lcom/and/service/Profileupdateservice;->envelope:Ljava/lang/String;

    const-string v6, "usernamereplace"

    sget-object v7, Lcom/and/util/Globals;->username:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/and/service/Profileupdateservice;->envelope:Ljava/lang/String;

    .line 56
    :try_start_0
    sget-object v5, Lcom/and/util/Globals;->Httpsflag:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v5}, Lcom/ssl/bypass/MyHttpClient;->getHttpClient(Z)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v5

    iput-object v5, p0, Lcom/and/service/Profileupdateservice;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 57
    iget-object v5, p0, Lcom/and/service/Profileupdateservice;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    .line 58
    .local v3, "params":Lorg/apache/http/params/HttpParams;
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    sget-object v5, Lcom/and/util/Globals;->PostURL:Ljava/lang/String;

    invoke-direct {v2, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 59
    .local v2, "httppost":Lorg/apache/http/client/methods/HttpPost;
    const-string v5, "Content-Type"

    const-string v6, "text/xml; charset=utf-8"

    invoke-virtual {v2, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v5, "SOAPAction"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v5, "Accept-Encoding"

    const-string v6, "gzip,deflate"

    invoke-virtual {v2, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    iget-object v5, p0, Lcom/and/service/Profileupdateservice;->envelope:Ljava/lang/String;

    invoke-direct {v1, v5}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 63
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 64
    iget-object v5, p0, Lcom/and/service/Profileupdateservice;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v5, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 65
    .local v4, "response":Lorg/apache/http/HttpResponse;
    new-instance v5, Lcom/and/parsers/Profileupdatereposneparser;

    invoke-direct {v5}, Lcom/and/parsers/Profileupdatereposneparser;-><init>()V

    iput-object v5, p0, Lcom/and/service/Profileupdateservice;->profileupdatereposneparser:Lcom/and/parsers/Profileupdatereposneparser;

    .line 66
    iget-object v5, p0, Lcom/and/service/Profileupdateservice;->profileupdatereposneparser:Lcom/and/parsers/Profileupdatereposneparser;

    invoke-static {v4}, Lcom/and/util/GetResponseBody;->getResponseBody(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/and/parsers/Profileupdatereposneparser;->parser(Ljava/lang/String;)Lcom/and/response/ProfileupdateResponse;

    move-result-object v5

    iput-object v5, p0, Lcom/and/service/Profileupdateservice;->profileupdateResponse:Lcom/and/response/ProfileupdateResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v2    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v3    # "params":Lorg/apache/http/params/HttpParams;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    iget-object v5, p0, Lcom/and/service/Profileupdateservice;->profileupdateResponse:Lcom/and/response/ProfileupdateResponse;

    return-object v5

    .line 69
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
