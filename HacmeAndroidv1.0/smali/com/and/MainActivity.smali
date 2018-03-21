.class public Lcom/and/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field private Fiddlercheckbox:Landroid/widget/CheckBox;

.field private checkbox:Landroid/widget/CheckBox;

.field private ip:Landroid/widget/EditText;

.field private loginresponse:Lcom/and/response/Loginresponse;

.field private loginservice:Lcom/and/service/Loginservice;

.field private myDialog:Landroid/app/Dialog;

.field private password:Landroid/widget/EditText;

.field private settingImage:Landroid/widget/ImageView;

.field private username:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/and/MainActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/and/MainActivity;->myDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/and/MainActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/and/MainActivity;->username:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$10(Lcom/and/MainActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/and/MainActivity;->password:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$11(Lcom/and/MainActivity;Lcom/and/response/Loginresponse;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/and/MainActivity;->loginresponse:Lcom/and/response/Loginresponse;

    return-void
.end method

.method static synthetic access$12(Lcom/and/MainActivity;)Lcom/and/response/Loginresponse;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/and/MainActivity;->loginresponse:Lcom/and/response/Loginresponse;

    return-object v0
.end method

.method static synthetic access$2(Lcom/and/MainActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/and/MainActivity;->password:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$3(Lcom/and/MainActivity;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/and/MainActivity;->checkbox:Landroid/widget/CheckBox;

    return-void
.end method

.method static synthetic access$4(Lcom/and/MainActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/and/MainActivity;->ip:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$5(Lcom/and/MainActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/and/MainActivity;->ip:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6(Lcom/and/MainActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/and/MainActivity;->myDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$7(Lcom/and/MainActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/and/MainActivity;->checkbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$8(Lcom/and/MainActivity;)Lcom/and/service/Loginservice;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/and/MainActivity;->loginservice:Lcom/and/service/Loginservice;

    return-object v0
.end method

.method static synthetic access$9(Lcom/and/MainActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/and/MainActivity;->username:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f050009

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    new-instance v3, Lcom/and/service/Loginservice;

    invoke-direct {v3}, Lcom/and/service/Loginservice;-><init>()V

    iput-object v3, p0, Lcom/and/MainActivity;->loginservice:Lcom/and/service/Loginservice;

    .line 51
    const-string v3, "/data/data/com.and/files/Disclaimer.xml"

    invoke-static {v3}, Lcom/and/util/FileUtil;->filesexistscheck(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/and/MainActivity;->myDialog:Landroid/app/Dialog;

    .line 54
    iget-object v3, p0, Lcom/and/MainActivity;->myDialog:Landroid/app/Dialog;

    const v4, 0x7f030002

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 56
    iget-object v3, p0, Lcom/and/MainActivity;->myDialog:Landroid/app/Dialog;

    const-string v4, "Disclaimer"

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v3, p0, Lcom/and/MainActivity;->myDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 60
    .local v0, "button":Landroid/widget/Button;
    new-instance v3, Lcom/and/MainActivity$1;

    invoke-direct {v3, p0}, Lcom/and/MainActivity$1;-><init>(Lcom/and/MainActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    .end local v0    # "button":Landroid/widget/Button;
    :cond_0
    const-string v3, "/data/data/com.and/files/creds.xml"

    invoke-static {v3}, Lcom/and/util/FileUtil;->filesexistscheck(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/and/util/Globals;->ServerIP:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 89
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/and/loginactivity2;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v2, "i":Landroid/content/Intent;
    const-string v3, "check"

    const-string v4, "exists"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v2}, Lcom/and/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 92
    invoke-virtual {p0}, Lcom/and/MainActivity;->finish()V

    .line 94
    .end local v2    # "i":Landroid/content/Intent;
    :cond_1
    const v3, 0x7f030005

    invoke-virtual {p0, v3}, Lcom/and/MainActivity;->setContentView(I)V

    .line 95
    invoke-virtual {p0, v5}, Lcom/and/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 97
    .local v1, "continuebutton":Landroid/widget/Button;
    new-instance v3, Lcom/and/MainActivity$2;

    invoke-direct {v3, p0}, Lcom/and/MainActivity$2;-><init>(Lcom/and/MainActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    const v3, 0x7f050017

    invoke-virtual {p0, v3}, Lcom/and/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/and/MainActivity;->settingImage:Landroid/widget/ImageView;

    .line 185
    iget-object v3, p0, Lcom/and/MainActivity;->settingImage:Landroid/widget/ImageView;

    new-instance v4, Lcom/and/MainActivity$3;

    invoke-direct {v4, p0}, Lcom/and/MainActivity$3;-><init>(Lcom/and/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    return-void
.end method
