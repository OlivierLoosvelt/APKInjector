.class public Lcom/and/parsers/AccountSummaryResponseParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "AccountSummaryResponseParser.java"


# instance fields
.field private accountSummaryResponse:Lcom/and/response/AccountSummaryResponse;

.field private holder:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/and/parsers/AccountSummaryResponseParser;->holder:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 62
    const-string v0, "AccountHolderName"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/and/parsers/AccountSummaryResponseParser;->accountSummaryResponse:Lcom/and/response/AccountSummaryResponse;

    iget-object v1, p0, Lcom/and/parsers/AccountSummaryResponseParser;->holder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/and/response/AccountSummaryResponse;->setAccountHolderName(Ljava/lang/String;)V

    .line 66
    :cond_0
    const-string v0, "CurrentBalance"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/and/parsers/AccountSummaryResponseParser;->accountSummaryResponse:Lcom/and/response/AccountSummaryResponse;

    iget-object v1, p0, Lcom/and/parsers/AccountSummaryResponseParser;->holder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/and/response/AccountSummaryResponse;->setCurrentBalance(Ljava/lang/String;)V

    .line 70
    :cond_1
    const-string v0, "AccountNumber"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/and/parsers/AccountSummaryResponseParser;->accountSummaryResponse:Lcom/and/response/AccountSummaryResponse;

    iget-object v1, p0, Lcom/and/parsers/AccountSummaryResponseParser;->holder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/and/response/AccountSummaryResponse;->setAccountHolderName(Ljava/lang/String;)V

    .line 74
    :cond_2
    return-void
.end method

.method public parser(Ljava/lang/String;)Lcom/and/response/AccountSummaryResponse;
    .locals 6
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v5, Lcom/and/response/AccountSummaryResponse;

    invoke-direct {v5}, Lcom/and/response/AccountSummaryResponse;-><init>()V

    iput-object v5, p0, Lcom/and/parsers/AccountSummaryResponseParser;->accountSummaryResponse:Lcom/and/response/AccountSummaryResponse;

    .line 26
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 29
    .local v4, "localSAXParserFactory":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 30
    .local v3, "localSAXParser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 31
    .local v0, "arrayOfByte":[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 32
    .local v1, "localByteArrayInputStream":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v3, v1, p0}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v0    # "arrayOfByte":[B
    .end local v1    # "localByteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .end local v3    # "localSAXParser":Ljavax/xml/parsers/SAXParser;
    :goto_0
    iget-object v5, p0, Lcom/and/parsers/AccountSummaryResponseParser;->accountSummaryResponse:Lcom/and/response/AccountSummaryResponse;

    return-object v5

    .line 35
    :catch_0
    move-exception v2

    .line 37
    .local v2, "localException":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/jar/Attributes;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Ljava/util/jar/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 47
    const-string v0, "AccountHolderName"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lcom/and/response/AccountSummaryResponse;

    invoke-direct {v0}, Lcom/and/response/AccountSummaryResponse;-><init>()V

    iput-object v0, p0, Lcom/and/parsers/AccountSummaryResponseParser;->accountSummaryResponse:Lcom/and/response/AccountSummaryResponse;

    .line 53
    :cond_0
    return-void
.end method
