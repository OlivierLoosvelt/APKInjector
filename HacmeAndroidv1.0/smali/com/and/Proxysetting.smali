.class public Lcom/and/Proxysetting;
.super Landroid/app/Activity;
.source "Proxysetting.java"


# instance fields
.field private backimage:Landroid/widget/ImageView;

.field private myDialog:Landroid/app/Dialog;

.field private myDialog1:Landroid/app/Dialog;

.field private proxyIp:Landroid/widget/EditText;

.field private proxyPort:Landroid/widget/EditText;

.field private proxySave:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/and/Proxysetting;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/and/Proxysetting;->proxyIp:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$1(Lcom/and/Proxysetting;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/and/Proxysetting;->proxyPort:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$2(Lcom/and/Proxysetting;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/and/Proxysetting;->proxyIp:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/and/Proxysetting;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/and/Proxysetting;->proxyPort:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lcom/and/Proxysetting;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/and/Proxysetting;->myDialog1:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$5(Lcom/and/Proxysetting;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/and/Proxysetting;->myDialog1:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$6(Lcom/and/Proxysetting;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/and/Proxysetting;->myDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$7(Lcom/and/Proxysetting;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/and/Proxysetting;->myDialog:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/and/Proxysetting;->setContentView(I)V

    .line 52
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/and/Proxysetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/and/Proxysetting;->backimage:Landroid/widget/ImageView;

    .line 53
    iget-object v0, p0, Lcom/and/Proxysetting;->backimage:Landroid/widget/ImageView;

    new-instance v1, Lcom/and/Proxysetting$1;

    invoke-direct {v1, p0}, Lcom/and/Proxysetting$1;-><init>(Lcom/and/Proxysetting;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v0, 0x7f050026

    invoke-virtual {p0, v0}, Lcom/and/Proxysetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/and/Proxysetting;->proxySave:Landroid/widget/Button;

    .line 62
    iget-object v0, p0, Lcom/and/Proxysetting;->proxySave:Landroid/widget/Button;

    new-instance v1, Lcom/and/Proxysetting$2;

    invoke-direct {v1, p0}, Lcom/and/Proxysetting$2;-><init>(Lcom/and/Proxysetting;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method
