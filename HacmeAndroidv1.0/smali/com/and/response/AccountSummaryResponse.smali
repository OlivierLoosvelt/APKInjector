.class public Lcom/and/response/AccountSummaryResponse;
.super Ljava/lang/Object;
.source "AccountSummaryResponse.java"


# instance fields
.field private AccountHolderName:Ljava/lang/String;

.field private AccountNumber:Ljava/lang/String;

.field private CurrentBalance:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountHolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/and/response/AccountSummaryResponse;->AccountHolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/and/response/AccountSummaryResponse;->AccountNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/and/response/AccountSummaryResponse;->CurrentBalance:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountHolderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountHolderName"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/and/response/AccountSummaryResponse;->AccountHolderName:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setAccountNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountNumber"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/and/response/AccountSummaryResponse;->AccountNumber:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setCurrentBalance(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentBalance"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/and/response/AccountSummaryResponse;->CurrentBalance:Ljava/lang/String;

    .line 25
    return-void
.end method
