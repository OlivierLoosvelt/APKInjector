.class public Lcom/and/loginactivity2;
.super Landroid/app/Activity;
.source "loginactivity2.java"


# instance fields
.field private base64:Lcom/and/util/Base64Coder;

.field private displayed:Landroid/widget/TextView;

.field private key:Ljava/lang/String;

.field private key_1:Landroid/widget/EditText;

.field private key_2:Landroid/widget/EditText;

.field private key_3:Landroid/widget/EditText;

.field private key_4:Landroid/widget/EditText;

.field private loginresponse:Lcom/and/response/Loginresponse;

.field private loginservice:Lcom/and/service/Loginservice;

.field private myDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/and/loginactivity2;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/and/loginactivity2;->key_1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/and/loginactivity2;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/and/loginactivity2;->key_2:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$10(Lcom/and/loginactivity2;Lcom/and/response/Loginresponse;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/and/loginactivity2;->loginresponse:Lcom/and/response/Loginresponse;

    return-void
.end method

.method static synthetic access$11(Lcom/and/loginactivity2;)Lcom/and/response/Loginresponse;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/and/loginactivity2;->loginresponse:Lcom/and/response/Loginresponse;

    return-object v0
.end method

.method static synthetic access$2(Lcom/and/loginactivity2;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/and/loginactivity2;->key_3:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/and/loginactivity2;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/and/loginactivity2;->key_4:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lcom/and/loginactivity2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/and/loginactivity2;->key:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/and/loginactivity2;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/and/loginactivity2;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/and/loginactivity2;Lcom/and/service/Loginservice;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/and/loginactivity2;->loginservice:Lcom/and/service/Loginservice;

    return-void
.end method

.method static synthetic access$7(Lcom/and/loginactivity2;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/and/loginactivity2;->myDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$8(Lcom/and/loginactivity2;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/and/loginactivity2;->myDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$9(Lcom/and/loginactivity2;)Lcom/and/service/Loginservice;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/and/loginactivity2;->loginservice:Lcom/and/service/Loginservice;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v4, 0x7f030006

    invoke-virtual {p0, v4}, Lcom/and/loginactivity2;->setContentView(I)V

    .line 55
    const v4, 0x7f05001b

    invoke-virtual {p0, v4}, Lcom/and/loginactivity2;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/and/loginactivity2;->key_1:Landroid/widget/EditText;

    .line 56
    const v4, 0x7f05001c

    invoke-virtual {p0, v4}, Lcom/and/loginactivity2;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/and/loginactivity2;->key_2:Landroid/widget/EditText;

    .line 57
    const v4, 0x7f05001d

    invoke-virtual {p0, v4}, Lcom/and/loginactivity2;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/and/loginactivity2;->key_3:Landroid/widget/EditText;

    .line 58
    const v4, 0x7f05001e

    invoke-virtual {p0, v4}, Lcom/and/loginactivity2;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/and/loginactivity2;->key_4:Landroid/widget/EditText;

    .line 63
    iget-object v4, p0, Lcom/and/loginactivity2;->key_1:Landroid/widget/EditText;

    new-instance v5, Lcom/and/loginactivity2$1;

    invoke-direct {v5, p0}, Lcom/and/loginactivity2$1;-><init>(Lcom/and/loginactivity2;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 81
    iget-object v4, p0, Lcom/and/loginactivity2;->key_2:Landroid/widget/EditText;

    new-instance v5, Lcom/and/loginactivity2$2;

    invoke-direct {v5, p0}, Lcom/and/loginactivity2$2;-><init>(Lcom/and/loginactivity2;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 99
    iget-object v4, p0, Lcom/and/loginactivity2;->key_3:Landroid/widget/EditText;

    new-instance v5, Lcom/and/loginactivity2$3;

    invoke-direct {v5, p0}, Lcom/and/loginactivity2$3;-><init>(Lcom/and/loginactivity2;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 119
    invoke-virtual {p0}, Lcom/and/loginactivity2;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 120
    .local v1, "bundle":Landroid/os/Bundle;
    new-instance v4, Lcom/and/util/Base64Coder;

    invoke-direct {v4}, Lcom/and/util/Base64Coder;-><init>()V

    iput-object v4, p0, Lcom/and/loginactivity2;->base64:Lcom/and/util/Base64Coder;

    .line 121
    const v4, 0x7f050019

    invoke-virtual {p0, v4}, Lcom/and/loginactivity2;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/and/loginactivity2;->displayed:Landroid/widget/TextView;

    .line 123
    const v4, 0x7f050009

    invoke-virtual {p0, v4}, Lcom/and/loginactivity2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 124
    .local v3, "continuebutton":Landroid/widget/Button;
    const v4, 0x7f050018

    invoke-virtual {p0, v4}, Lcom/and/loginactivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 125
    .local v0, "ChangeUser":Landroid/widget/TextView;
    const-string v4, "check"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "check":Ljava/lang/String;
    const-string v4, "doesnot"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    iget-object v4, p0, Lcom/and/loginactivity2;->displayed:Landroid/widget/TextView;

    const-string v5, "Please enter a 4-digit passcode to remember your password."

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :goto_0
    new-instance v4, Lcom/and/loginactivity2$4;

    invoke-direct {v4, p0}, Lcom/and/loginactivity2$4;-><init>(Lcom/and/loginactivity2;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    new-instance v4, Lcom/and/loginactivity2$5;

    invoke-direct {v4, p0}, Lcom/and/loginactivity2$5;-><init>(Lcom/and/loginactivity2;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    return-void

    .line 129
    :cond_0
    iget-object v4, p0, Lcom/and/loginactivity2;->displayed:Landroid/widget/TextView;

    const-string v5, "Please enter your 4-digit passcode."

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
