.class public Lcom/and/parsers/Profileupdatereposneparser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "Profileupdatereposneparser.java"


# instance fields
.field private message:Ljava/lang/String;

.field private profileupdateResponse:Lcom/and/response/ProfileupdateResponse;


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
    .line 51
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/and/parsers/Profileupdatereposneparser;->message:Ljava/lang/String;

    .line 52
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
    .line 56
    const-string v0, "Message"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lcom/and/response/ProfileupdateResponse;

    invoke-direct {v0}, Lcom/and/response/ProfileupdateResponse;-><init>()V

    iput-object v0, p0, Lcom/and/parsers/Profileupdatereposneparser;->profileupdateResponse:Lcom/and/response/ProfileupdateResponse;

    .line 60
    iget-object v0, p0, Lcom/and/parsers/Profileupdatereposneparser;->profileupdateResponse:Lcom/and/response/ProfileupdateResponse;

    iget-object v1, p0, Lcom/and/parsers/Profileupdatereposneparser;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/and/response/ProfileupdateResponse;->setMessage(Ljava/lang/String;)V

    .line 62
    :cond_0
    return-void
.end method

.method public parser(Ljava/lang/String;)Lcom/and/response/ProfileupdateResponse;
    .locals 6
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v5, Lcom/and/response/ProfileupdateResponse;

    invoke-direct {v5}, Lcom/and/response/ProfileupdateResponse;-><init>()V

    iput-object v5, p0, Lcom/and/parsers/Profileupdatereposneparser;->profileupdateResponse:Lcom/and/response/ProfileupdateResponse;

    .line 24
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 27
    .local v4, "localSAXParserFactory":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 28
    .local v3, "localSAXParser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 29
    .local v0, "arrayOfByte":[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 30
    .local v1, "localByteArrayInputStream":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v3, v1, p0}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .end local v0    # "arrayOfByte":[B
    .end local v1    # "localByteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .end local v3    # "localSAXParser":Ljavax/xml/parsers/SAXParser;
    :goto_0
    iget-object v5, p0, Lcom/and/parsers/Profileupdatereposneparser;->profileupdateResponse:Lcom/and/response/ProfileupdateResponse;

    return-object v5

    .line 33
    :catch_0
    move-exception v2

    .line 35
    .local v2, "localException":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

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
    .line 47
    return-void
.end method
