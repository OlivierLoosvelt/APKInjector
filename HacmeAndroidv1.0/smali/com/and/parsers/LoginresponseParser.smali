.class public Lcom/and/parsers/LoginresponseParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "LoginresponseParser.java"


# instance fields
.field private data:Ljava/lang/String;

.field private loginresponse:Lcom/and/response/Loginresponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
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
    .line 52
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/and/parsers/LoginresponseParser;->data:Ljava/lang/String;

    .line 53
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
    .line 57
    const-string v0, "Message"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Lcom/and/response/Loginresponse;

    invoke-direct {v0}, Lcom/and/response/Loginresponse;-><init>()V

    iput-object v0, p0, Lcom/and/parsers/LoginresponseParser;->loginresponse:Lcom/and/response/Loginresponse;

    .line 61
    iget-object v0, p0, Lcom/and/parsers/LoginresponseParser;->loginresponse:Lcom/and/response/Loginresponse;

    iget-object v1, p0, Lcom/and/parsers/LoginresponseParser;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/and/response/Loginresponse;->setMessage(Ljava/lang/String;)V

    .line 63
    :cond_0
    const-string v0, "SessionID"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/and/parsers/LoginresponseParser;->loginresponse:Lcom/and/response/Loginresponse;

    iget-object v1, p0, Lcom/and/parsers/LoginresponseParser;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/and/response/Loginresponse;->setSessionid(Ljava/lang/String;)V

    .line 69
    :cond_1
    const-string v0, "AccountNumber"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/and/parsers/LoginresponseParser;->loginresponse:Lcom/and/response/Loginresponse;

    iget-object v1, p0, Lcom/and/parsers/LoginresponseParser;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/and/response/Loginresponse;->setAccountnumber(Ljava/lang/String;)V

    .line 76
    :cond_2
    return-void
.end method

.method public parser(Ljava/lang/String;)Lcom/and/response/Loginresponse;
    .locals 5
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v4, Lcom/and/response/Loginresponse;

    invoke-direct {v4}, Lcom/and/response/Loginresponse;-><init>()V

    iput-object v4, p0, Lcom/and/parsers/LoginresponseParser;->loginresponse:Lcom/and/response/Loginresponse;

    .line 25
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 28
    .local v3, "localSAXParserFactory":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 29
    .local v2, "localSAXParser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 30
    .local v0, "arrayOfByte":[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 31
    .local v1, "localByteArrayInputStream":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v2, v1, p0}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v0    # "arrayOfByte":[B
    .end local v1    # "localByteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .end local v2    # "localSAXParser":Ljavax/xml/parsers/SAXParser;
    :goto_0
    iget-object v4, p0, Lcom/and/parsers/LoginresponseParser;->loginresponse:Lcom/and/response/Loginresponse;

    return-object v4

    .line 34
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/jar/Attributes;)V
    .locals 0
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
    .line 48
    return-void
.end method
