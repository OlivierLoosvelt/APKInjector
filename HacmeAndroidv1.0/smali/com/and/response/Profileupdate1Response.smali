.class public Lcom/and/response/Profileupdate1Response;
.super Ljava/lang/Object;
.source "Profileupdate1Response.java"


# instance fields
.field private Adress:Ljava/lang/String;

.field private EmailID:Ljava/lang/String;

.field private Firstname:Ljava/lang/String;

.field private Lastname:Ljava/lang/String;

.field private Phone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/and/response/Profileupdate1Response;->Adress:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/and/response/Profileupdate1Response;->EmailID:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/and/response/Profileupdate1Response;->Firstname:Ljava/lang/String;

    return-object v0
.end method

.method public getLastname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/and/response/Profileupdate1Response;->Lastname:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/and/response/Profileupdate1Response;->Phone:Ljava/lang/String;

    return-object v0
.end method

.method public setAdress(Ljava/lang/String;)V
    .locals 0
    .param p1, "adress"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/and/response/Profileupdate1Response;->Adress:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setEmailID(Ljava/lang/String;)V
    .locals 0
    .param p1, "emailID"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/and/response/Profileupdate1Response;->EmailID:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setFirstname(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstname"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/and/response/Profileupdate1Response;->Firstname:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setLastname(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastname"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/and/response/Profileupdate1Response;->Lastname:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/and/response/Profileupdate1Response;->Phone:Ljava/lang/String;

    .line 40
    return-void
.end method
