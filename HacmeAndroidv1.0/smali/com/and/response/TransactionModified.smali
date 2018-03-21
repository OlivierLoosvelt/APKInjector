.class public Lcom/and/response/TransactionModified;
.super Ljava/lang/Object;
.source "TransactionModified.java"


# instance fields
.field private Amount:Ljava/lang/String;

.field private FromAccount:Ljava/lang/String;

.field private Time_Stamp:Ljava/lang/String;

.field private ToAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/and/response/TransactionModified;->Amount:Ljava/lang/String;

    return-object v0
.end method

.method public getFromAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/and/response/TransactionModified;->FromAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getTime_Stamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/and/response/TransactionModified;->Time_Stamp:Ljava/lang/String;

    return-object v0
.end method

.method public getToAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/and/response/TransactionModified;->ToAccount:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "amount"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/and/response/TransactionModified;->Amount:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setFromAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "fromAccount"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/and/response/TransactionModified;->FromAccount:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setTime_Stamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "time_Stamp"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/and/response/TransactionModified;->Time_Stamp:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setToAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "toAccount"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/and/response/TransactionModified;->ToAccount:Ljava/lang/String;

    .line 35
    return-void
.end method
