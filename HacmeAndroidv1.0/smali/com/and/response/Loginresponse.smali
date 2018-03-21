.class public Lcom/and/response/Loginresponse;
.super Ljava/lang/Object;
.source "Loginresponse.java"


# instance fields
.field private accountnumber:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private sessionid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountnumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/and/response/Loginresponse;->accountnumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/and/response/Loginresponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/and/response/Loginresponse;->sessionid:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountnumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountnumber"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/and/response/Loginresponse;->accountnumber:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/and/response/Loginresponse;->message:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public setSessionid(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionid"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/and/response/Loginresponse;->sessionid:Ljava/lang/String;

    .line 21
    return-void
.end method
