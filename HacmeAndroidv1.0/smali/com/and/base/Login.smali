.class public Lcom/and/base/Login;
.super Ljava/lang/Object;
.source "Login.java"


# instance fields
.field private password:Ljava/lang/String;

.field private server:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/and/base/Login;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/and/base/Login;->server:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/and/base/Login;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/and/base/Login;->password:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 0
    .param p1, "server"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/and/base/Login;->server:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/and/base/Login;->username:Ljava/lang/String;

    .line 15
    return-void
.end method
