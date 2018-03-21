.class public Lcom/and/util/Globals;
.super Ljava/lang/Object;
.source "Globals.java"


# static fields
.field public static Fiddler:Ljava/lang/Boolean;

.field public static Httpsflag:Ljava/lang/Boolean;

.field public static PostURL:Ljava/lang/String;

.field public static ServerIP:Ljava/lang/String;

.field public static ServerPort:Ljava/lang/String;

.field public static accountnumber:Ljava/lang/String;

.field public static proxyIp:Ljava/lang/String;

.field public static proxyPort:Ljava/lang/String;

.field public static sessionid:Ljava/lang/String;

.field public static username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    const-string v0, ""

    sput-object v0, Lcom/and/util/Globals;->proxyIp:Ljava/lang/String;

    .line 15
    const-string v0, ""

    sput-object v0, Lcom/and/util/Globals;->proxyPort:Ljava/lang/String;

    .line 17
    const-string v0, ""

    sput-object v0, Lcom/and/util/Globals;->ServerIP:Ljava/lang/String;

    .line 19
    const-string v0, "8443"

    sput-object v0, Lcom/and/util/Globals;->ServerPort:Ljava/lang/String;

    .line 20
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/and/util/Globals;->Httpsflag:Ljava/lang/Boolean;

    .line 21
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/and/util/Globals;->Fiddler:Ljava/lang/Boolean;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "username1"    # Ljava/lang/String;
    .param p1, "sessionid1"    # Ljava/lang/String;
    .param p2, "accountnumber1"    # Ljava/lang/String;

    .prologue
    .line 25
    sput-object p0, Lcom/and/util/Globals;->username:Ljava/lang/String;

    .line 26
    sput-object p2, Lcom/and/util/Globals;->accountnumber:Ljava/lang/String;

    .line 27
    sput-object p1, Lcom/and/util/Globals;->sessionid:Ljava/lang/String;

    .line 29
    return-void
.end method
