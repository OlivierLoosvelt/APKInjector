.class public Lcom/and/parsers/TransactionHistoryParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "TransactionHistoryParser.java"


# instance fields
.field private holder:Ljava/lang/String;

.field private transactionHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/and/response/TransactionModified;",
            ">;"
        }
    .end annotation
.end field

.field private transactionHistoryResponse:Lcom/and/response/TransactionHistoryResponse;

.field private transactionModified:Lcom/and/response/TransactionModified;


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
    .line 71
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/and/parsers/TransactionHistoryParser;->holder:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 76
    const-string v0, "Amount"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Amount"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/and/parsers/TransactionHistoryParser;->holder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/and/response/TransactionModified;

    invoke-direct {v0}, Lcom/and/response/TransactionModified;-><init>()V

    iput-object v0, p0, Lcom/and/parsers/TransactionHistoryParser;->transactionModified:Lcom/and/response/TransactionModified;

    .line 81
    iget-object v0, p0, Lcom/and/parsers/TransactionHistoryParser;->transactionHistoryList:Ljava/util/List;

    iget-object v1, p0, Lcom/and/parsers/TransactionHistoryParser;->transactionModified:Lcom/and/response/TransactionModified;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/and/parsers/TransactionHistoryParser;->transactionModified:Lcom/and/response/TransactionModified;

    iget-object v1, p0, Lcom/and/parsers/TransactionHistoryParser;->holder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/and/response/TransactionModified;->setAmount(Ljava/lang/String;)V

    .line 85
    :cond_0
    const-string v0, "ToAccountNumber"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/and/parsers/TransactionHistoryParser;->transactionModified:Lcom/and/response/TransactionModified;

    iget-object v1, p0, Lcom/and/parsers/TransactionHistoryParser;->holder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/and/response/TransactionModified;->setToAccount(Ljava/lang/String;)V

    .line 91
    :cond_1
    const-string v0, "FromAccountNumber"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/and/parsers/TransactionHistoryParser;->transactionModified:Lcom/and/response/TransactionModified;

    iget-object v1, p0, Lcom/and/parsers/TransactionHistoryParser;->holder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/and/response/TransactionModified;->setFromAccount(Ljava/lang/String;)V

    .line 97
    :cond_2
    const-string v0, "Date"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/and/parsers/TransactionHistoryParser;->transactionModified:Lcom/and/response/TransactionModified;

    iget-object v1, p0, Lcom/and/parsers/TransactionHistoryParser;->holder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/and/response/TransactionModified;->setTime_Stamp(Ljava/lang/String;)V

    .line 105
    :cond_3
    return-void
.end method

.method public getTransactionHistoryResponse()Lcom/and/response/TransactionHistoryResponse;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/and/parsers/TransactionHistoryParser;->transactionHistoryResponse:Lcom/and/response/TransactionHistoryResponse;

    return-object v0
.end method

.method public parser(Ljava/lang/String;)Lcom/and/response/TransactionHistoryResponse;
    .locals 7
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v5, Lcom/and/response/TransactionHistoryResponse;

    invoke-direct {v5}, Lcom/and/response/TransactionHistoryResponse;-><init>()V

    iput-object v5, p0, Lcom/and/parsers/TransactionHistoryParser;->transactionHistoryResponse:Lcom/and/response/TransactionHistoryResponse;

    .line 34
    new-instance v5, Lcom/and/response/TransactionModified;

    invoke-direct {v5}, Lcom/and/response/TransactionModified;-><init>()V

    iput-object v5, p0, Lcom/and/parsers/TransactionHistoryParser;->transactionModified:Lcom/and/response/TransactionModified;

    .line 35
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/and/parsers/TransactionHistoryParser;->transactionHistoryList:Ljava/util/List;

    .line 36
    iget-object v5, p0, Lcom/and/parsers/TransactionHistoryParser;->transactionHistoryResponse:Lcom/and/response/TransactionHistoryResponse;

    iget-object v6, p0, Lcom/and/parsers/TransactionHistoryParser;->transactionHistoryList:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/and/response/TransactionHistoryResponse;->setTransactionHistoryList(Ljava/util/List;)V

    .line 39
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 42
    .local v4, "localSAXParserFactory":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 43
    .local v3, "localSAXParser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 44
    .local v0, "arrayOfByte":[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 45
    .local v1, "localByteArrayInputStream":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v3, v1, p0}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v0    # "arrayOfByte":[B
    .end local v1    # "localByteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .end local v3    # "localSAXParser":Ljavax/xml/parsers/SAXParser;
    :goto_0
    iget-object v5, p0, Lcom/and/parsers/TransactionHistoryParser;->transactionHistoryResponse:Lcom/and/response/TransactionHistoryResponse;

    return-object v5

    .line 48
    :catch_0
    move-exception v2

    .line 50
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
    .line 61
    const-string v0, "Amount"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 67
    return-void
.end method
