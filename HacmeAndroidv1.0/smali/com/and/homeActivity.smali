.class public Lcom/and/homeActivity;
.super Landroid/app/Activity;
.source "homeActivity.java"


# instance fields
.field private myDialog:Landroid/app/Dialog;

.field private profileupdate1Response:Lcom/and/response/Profileupdate1Response;

.field private profileupdate1service:Lcom/and/service/Profileupdate1service;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/and/homeActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/and/homeActivity;->myDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$1(Lcom/and/homeActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/and/homeActivity;->myDialog:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v7, 0x7f030004

    invoke-virtual {p0, v7}, Lcom/and/homeActivity;->setContentView(I)V

    .line 40
    const v7, 0x7f05000a

    invoke-virtual {p0, v7}, Lcom/and/homeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 41
    .local v3, "fundstransferButton":Landroid/widget/Button;
    const v7, 0x7f050012

    invoke-virtual {p0, v7}, Lcom/and/homeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 42
    .local v2, "changepasswordButton":Landroid/widget/Button;
    const v7, 0x7f050013

    invoke-virtual {p0, v7}, Lcom/and/homeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 43
    .local v5, "profileupdateButton":Landroid/widget/Button;
    const v7, 0x7f050009

    invoke-virtual {p0, v7}, Lcom/and/homeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 44
    .local v1, "accountsummaryButton":Landroid/widget/Button;
    const v7, 0x7f05000f

    invoke-virtual {p0, v7}, Lcom/and/homeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 45
    .local v0, "about":Landroid/widget/ImageView;
    const v7, 0x7f050011

    invoke-virtual {p0, v7}, Lcom/and/homeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 46
    .local v6, "welcome":Landroid/widget/TextView;
    new-instance v7, Lcom/and/service/Profileupdate1service;

    invoke-direct {v7}, Lcom/and/service/Profileupdate1service;-><init>()V

    iput-object v7, p0, Lcom/and/homeActivity;->profileupdate1service:Lcom/and/service/Profileupdate1service;

    .line 47
    iget-object v7, p0, Lcom/and/homeActivity;->profileupdate1service:Lcom/and/service/Profileupdate1service;

    sget-object v8, Lcom/and/util/Globals;->username:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/and/service/Profileupdate1service;->send(Ljava/lang/String;)Lcom/and/response/Profileupdate1Response;

    move-result-object v7

    iput-object v7, p0, Lcom/and/homeActivity;->profileupdate1Response:Lcom/and/response/Profileupdate1Response;

    .line 48
    iget-object v7, p0, Lcom/and/homeActivity;->profileupdate1Response:Lcom/and/response/Profileupdate1Response;

    invoke-virtual {v7}, Lcom/and/response/Profileupdate1Response;->getFirstname()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    new-instance v7, Lcom/and/homeActivity$1;

    invoke-direct {v7, p0}, Lcom/and/homeActivity$1;-><init>(Lcom/and/homeActivity;)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    new-instance v7, Lcom/and/homeActivity$2;

    invoke-direct {v7, p0}, Lcom/and/homeActivity$2;-><init>(Lcom/and/homeActivity;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    new-instance v7, Lcom/and/homeActivity$3;

    invoke-direct {v7, p0}, Lcom/and/homeActivity$3;-><init>(Lcom/and/homeActivity;)V

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    new-instance v7, Lcom/and/homeActivity$4;

    invoke-direct {v7, p0}, Lcom/and/homeActivity$4;-><init>(Lcom/and/homeActivity;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    new-instance v7, Lcom/and/homeActivity$5;

    invoke-direct {v7, p0}, Lcom/and/homeActivity$5;-><init>(Lcom/and/homeActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v7, 0x7f050010

    invoke-virtual {p0, v7}, Lcom/and/homeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 106
    .local v4, "logoutButton":Landroid/widget/TextView;
    new-instance v7, Lcom/and/homeActivity$6;

    invoke-direct {v7, p0}, Lcom/and/homeActivity$6;-><init>(Lcom/and/homeActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void
.end method
