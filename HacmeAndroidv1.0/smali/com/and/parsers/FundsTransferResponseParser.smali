.class public Lcom/and/parsers/FundsTransferResponseParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "FundsTransferResponseParser.java"


# instance fields
.field private fundatransferresponse:Lcom/and/response/FundsTransferResponse;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
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
    .line 63
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/and/parsers/FundsTransferResponseParser;->message:Ljava/lang/String;

    .line 64
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
    .line 68
    const-string v0, "Message"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/and/parsers/FundsTransferResponseParser;->fundatransferresponse:Lcom/and/response/FundsTransferResponse;

    iget-object v1, p0, Lcom/and/parsers/FundsTransferResponseParser;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/and/response/FundsTransferResponse;->setMessage(Ljava/lang/String;)V

    .line 73
    :cond_0
    return-void
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/and/parsers/FundsTransferResponseParser;->message:Ljava/lang/String;

    return-object v0
.end method

.method public parser(Ljava/lang/String;)Lcom/and/response/FundsTransferResponse;
    .locals 6
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v5, Lcom/and/response/FundsTransferResponse;

    invoke-direct {v5}, Lcom/and/response/FundsTransferResponse;-><init>()V

    iput-object v5, p0, Lcom/and/parsers/FundsTransferResponseParser;->fundatransferresponse:Lcom/and/response/FundsTransferResponse;

    .line 33
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 36
    .local v4, "localSAXParserFactory":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 37
    .local v3, "localSAXParser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 38
    .local v0, "arrayOfByte":[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 39
    .local v1, "localByteArrayInputStream":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v3, v1, p0}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v0    # "arrayOfByte":[B
    .end local v1    # "localByteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .end local v3    # "localSAXParser":Ljavax/xml/parsers/SAXParser;
    :goto_0
    iget-object v5, p0, Lcom/and/parsers/FundsTransferResponseParser;->fundatransferresponse:Lcom/and/response/FundsTransferResponse;

    return-object v5

    .line 42
    :catch_0
    move-exception v2

    .line 44
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
    .line 54
    const-string v0, "message"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Lcom/and/response/FundsTransferResponse;

    invoke-direct {v0}, Lcom/and/response/FundsTransferResponse;-><init>()V

    iput-object v0, p0, Lcom/and/parsers/FundsTransferResponseParser;->fundatransferresponse:Lcom/and/response/FundsTransferResponse;

    .line 59
    :cond_0
    return-void
.end method
