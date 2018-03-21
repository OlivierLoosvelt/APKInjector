.class public Lcom/and/response/TransactionHistoryResponse;
.super Ljava/lang/Object;
.source "TransactionHistoryResponse.java"


# instance fields
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransactionHistoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/and/response/TransactionModified;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/and/response/TransactionHistoryResponse;->transactionHistoryList:Ljava/util/List;

    return-object v0
.end method

.method public setTransactionHistoryList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/and/response/TransactionModified;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "transactionHistoryList":Ljava/util/List;, "Ljava/util/List<Lcom/and/response/TransactionModified;>;"
    iput-object p1, p0, Lcom/and/response/TransactionHistoryResponse;->transactionHistoryList:Ljava/util/List;

    .line 23
    return-void
.end method
