.class public Lcom/and/accountsummaryactivity;
.super Landroid/app/Activity;
.source "accountsummaryactivity.java"


# instance fields
.field private accoutnnumbertext:Landroid/widget/EditText;

.field private backimage:Landroid/widget/ImageView;

.field private balancetext:Landroid/widget/EditText;

.field private profileupdate1Response:Lcom/and/response/Profileupdate1Response;

.field private profileupdate1service:Lcom/and/service/Profileupdate1service;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v7, 0x7f030001

    invoke-virtual {p0, v7}, Lcom/and/accountsummaryactivity;->setContentView(I)V

    .line 38
    const v7, 0x7f050005

    invoke-virtual {p0, v7}, Lcom/and/accountsummaryactivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/and/accountsummaryactivity;->accoutnnumbertext:Landroid/widget/EditText;

    .line 39
    const v7, 0x7f050007

    invoke-virtual {p0, v7}, Lcom/and/accountsummaryactivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/and/accountsummaryactivity;->balancetext:Landroid/widget/EditText;

    .line 40
    const v7, 0x7f050003

    invoke-virtual {p0, v7}, Lcom/and/accountsummaryactivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 41
    .local v1, "firstName":Landroid/widget/TextView;
    const v7, 0x7f050004

    invoke-virtual {p0, v7}, Lcom/and/accountsummaryactivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 43
    .local v2, "lastName":Landroid/widget/TextView;
    new-instance v7, Lcom/and/service/Profileupdate1service;

    invoke-direct {v7}, Lcom/and/service/Profileupdate1service;-><init>()V

    iput-object v7, p0, Lcom/and/accountsummaryactivity;->profileupdate1service:Lcom/and/service/Profileupdate1service;

    .line 44
    iget-object v7, p0, Lcom/and/accountsummaryactivity;->profileupdate1service:Lcom/and/service/Profileupdate1service;

    sget-object v8, Lcom/and/util/Globals;->username:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/and/service/Profileupdate1service;->send(Ljava/lang/String;)Lcom/and/response/Profileupdate1Response;

    move-result-object v7

    iput-object v7, p0, Lcom/and/accountsummaryactivity;->profileupdate1Response:Lcom/and/response/Profileupdate1Response;

    .line 45
    iget-object v7, p0, Lcom/and/accountsummaryactivity;->profileupdate1Response:Lcom/and/response/Profileupdate1Response;

    invoke-virtual {v7}, Lcom/and/response/Profileupdate1Response;->getFirstname()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v7, p0, Lcom/and/accountsummaryactivity;->profileupdate1Response:Lcom/and/response/Profileupdate1Response;

    invoke-virtual {v7}, Lcom/and/response/Profileupdate1Response;->getLastname()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    new-instance v4, Lcom/and/service/AccountSummaryService;

    invoke-direct {v4}, Lcom/and/service/AccountSummaryService;-><init>()V

    .line 49
    .local v4, "service":Lcom/and/service/AccountSummaryService;
    invoke-virtual {v4}, Lcom/and/service/AccountSummaryService;->send()Lcom/and/response/AccountSummaryResponse;

    move-result-object v0

    .line 50
    .local v0, "accountSummaryResponse":Lcom/and/response/AccountSummaryResponse;
    iget-object v7, p0, Lcom/and/accountsummaryactivity;->accoutnnumbertext:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/and/response/AccountSummaryResponse;->getAccountHolderName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {v0}, Lcom/and/response/AccountSummaryResponse;->getCurrentBalance()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 52
    .local v5, "val":D
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v3

    .line 53
    .local v3, "nf":Ljava/text/NumberFormat;
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 54
    iget-object v7, p0, Lcom/and/accountsummaryactivity;->balancetext:Landroid/widget/EditText;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "$"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const v7, 0x7f050002

    invoke-virtual {p0, v7}, Lcom/and/accountsummaryactivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/and/accountsummaryactivity;->backimage:Landroid/widget/ImageView;

    .line 59
    iget-object v7, p0, Lcom/and/accountsummaryactivity;->backimage:Landroid/widget/ImageView;

    new-instance v8, Lcom/and/accountsummaryactivity$1;

    invoke-direct {v8, p0}, Lcom/and/accountsummaryactivity$1;-><init>(Lcom/and/accountsummaryactivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method
