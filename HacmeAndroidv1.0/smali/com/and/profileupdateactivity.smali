.class public Lcom/and/profileupdateactivity;
.super Landroid/app/Activity;
.source "profileupdateactivity.java"


# instance fields
.field private adress:Landroid/widget/EditText;

.field private backimage:Landroid/widget/ImageView;

.field private emailid:Landroid/widget/EditText;

.field private firstname:Landroid/widget/EditText;

.field private lastname:Landroid/widget/EditText;

.field private myDialog:Landroid/app/Dialog;

.field private phone:Landroid/widget/EditText;

.field private profileupdate1Response:Lcom/and/response/Profileupdate1Response;

.field private profileupdate1service:Lcom/and/service/Profileupdate1service;

.field private profileupdateResponse:Lcom/and/response/ProfileupdateResponse;

.field private profileupdateservice:Lcom/and/service/Profileupdateservice;

.field private submitbutton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/and/profileupdateactivity;)Lcom/and/service/Profileupdateservice;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/and/profileupdateactivity;->profileupdateservice:Lcom/and/service/Profileupdateservice;

    return-object v0
.end method

.method static synthetic access$1(Lcom/and/profileupdateactivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/and/profileupdateactivity;->adress:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/and/profileupdateactivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/and/profileupdateactivity;->emailid:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/and/profileupdateactivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/and/profileupdateactivity;->firstname:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lcom/and/profileupdateactivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/and/profileupdateactivity;->lastname:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5(Lcom/and/profileupdateactivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/and/profileupdateactivity;->phone:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6(Lcom/and/profileupdateactivity;Lcom/and/response/ProfileupdateResponse;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/and/profileupdateactivity;->profileupdateResponse:Lcom/and/response/ProfileupdateResponse;

    return-void
.end method

.method static synthetic access$7(Lcom/and/profileupdateactivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/and/profileupdateactivity;->myDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$8(Lcom/and/profileupdateactivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/and/profileupdateactivity;->myDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$9(Lcom/and/profileupdateactivity;)Lcom/and/response/ProfileupdateResponse;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/and/profileupdateactivity;->profileupdateResponse:Lcom/and/response/ProfileupdateResponse;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/and/profileupdateactivity;->setContentView(I)V

    .line 47
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/and/profileupdateactivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/and/profileupdateactivity;->submitbutton:Landroid/widget/Button;

    .line 48
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/and/profileupdateactivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/and/profileupdateactivity;->adress:Landroid/widget/EditText;

    .line 49
    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lcom/and/profileupdateactivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/and/profileupdateactivity;->emailid:Landroid/widget/EditText;

    .line 50
    const v0, 0x7f050020

    invoke-virtual {p0, v0}, Lcom/and/profileupdateactivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/and/profileupdateactivity;->firstname:Landroid/widget/EditText;

    .line 51
    const v0, 0x7f050021

    invoke-virtual {p0, v0}, Lcom/and/profileupdateactivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/and/profileupdateactivity;->lastname:Landroid/widget/EditText;

    .line 52
    const v0, 0x7f050022

    invoke-virtual {p0, v0}, Lcom/and/profileupdateactivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/and/profileupdateactivity;->phone:Landroid/widget/EditText;

    .line 53
    new-instance v0, Lcom/and/service/Profileupdateservice;

    invoke-direct {v0}, Lcom/and/service/Profileupdateservice;-><init>()V

    iput-object v0, p0, Lcom/and/profileupdateactivity;->profileupdateservice:Lcom/and/service/Profileupdateservice;

    .line 54
    new-instance v0, Lcom/and/service/Profileupdate1service;

    invoke-direct {v0}, Lcom/and/service/Profileupdate1service;-><init>()V

    iput-object v0, p0, Lcom/and/profileupdateactivity;->profileupdate1service:Lcom/and/service/Profileupdate1service;

    .line 56
    iget-object v0, p0, Lcom/and/profileupdateactivity;->profileupdate1service:Lcom/and/service/Profileupdate1service;

    sget-object v1, Lcom/and/util/Globals;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/and/service/Profileupdate1service;->send(Ljava/lang/String;)Lcom/and/response/Profileupdate1Response;

    move-result-object v0

    iput-object v0, p0, Lcom/and/profileupdateactivity;->profileupdate1Response:Lcom/and/response/Profileupdate1Response;

    .line 58
    iget-object v0, p0, Lcom/and/profileupdateactivity;->adress:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/and/profileupdateactivity;->profileupdate1Response:Lcom/and/response/Profileupdate1Response;

    invoke-virtual {v1}, Lcom/and/response/Profileupdate1Response;->getAdress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/and/profileupdateactivity;->emailid:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/and/profileupdateactivity;->profileupdate1Response:Lcom/and/response/Profileupdate1Response;

    invoke-virtual {v1}, Lcom/and/response/Profileupdate1Response;->getEmailID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/and/profileupdateactivity;->firstname:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/and/profileupdateactivity;->profileupdate1Response:Lcom/and/response/Profileupdate1Response;

    invoke-virtual {v1}, Lcom/and/response/Profileupdate1Response;->getFirstname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/and/profileupdateactivity;->lastname:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/and/profileupdateactivity;->profileupdate1Response:Lcom/and/response/Profileupdate1Response;

    invoke-virtual {v1}, Lcom/and/response/Profileupdate1Response;->getLastname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/and/profileupdateactivity;->phone:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/and/profileupdateactivity;->profileupdate1Response:Lcom/and/response/Profileupdate1Response;

    invoke-virtual {v1}, Lcom/and/response/Profileupdate1Response;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/and/profileupdateactivity;->submitbutton:Landroid/widget/Button;

    new-instance v1, Lcom/and/profileupdateactivity$1;

    invoke-direct {v1, p0}, Lcom/and/profileupdateactivity$1;-><init>(Lcom/and/profileupdateactivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/and/profileupdateactivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/and/profileupdateactivity;->backimage:Landroid/widget/ImageView;

    .line 113
    iget-object v0, p0, Lcom/and/profileupdateactivity;->backimage:Landroid/widget/ImageView;

    new-instance v1, Lcom/and/profileupdateactivity$2;

    invoke-direct {v1, p0}, Lcom/and/profileupdateactivity$2;-><init>(Lcom/and/profileupdateactivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    return-void
.end method
