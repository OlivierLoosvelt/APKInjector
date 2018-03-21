.class public Lcom/and/FundsTransferActivity;
.super Landroid/app/Activity;
.source "FundsTransferActivity.java"


# instance fields
.field private Amount:Landroid/widget/EditText;

.field private Formaccnum:Ljava/lang/String;

.field private Toaccnum:Landroid/widget/EditText;

.field private acctBal:Landroid/widget/TextView;

.field private backimage:Landroid/widget/ImageView;

.field private fundsTransferResponse:Lcom/and/response/FundsTransferResponse;

.field private myDialog:Landroid/app/Dialog;

.field private transactionHistoryService:Lcom/and/service/TransactionHistoryService;

.field private transactionModified:Lcom/and/response/TransactionModified;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/and/FundsTransferActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/and/FundsTransferActivity;->Amount:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/and/FundsTransferActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/and/FundsTransferActivity;->myDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$2(Lcom/and/FundsTransferActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/and/FundsTransferActivity;->myDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/and/FundsTransferActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/and/FundsTransferActivity;->Formaccnum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/and/FundsTransferActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/and/FundsTransferActivity;->Toaccnum:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5(Lcom/and/FundsTransferActivity;Lcom/and/response/FundsTransferResponse;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/and/FundsTransferActivity;->fundsTransferResponse:Lcom/and/response/FundsTransferResponse;

    return-void
.end method

.method static synthetic access$6(Lcom/and/FundsTransferActivity;)Lcom/and/response/FundsTransferResponse;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/and/FundsTransferActivity;->fundsTransferResponse:Lcom/and/response/FundsTransferResponse;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v7, 0x7f030003

    invoke-virtual {p0, v7}, Lcom/and/FundsTransferActivity;->setContentView(I)V

    .line 55
    const v7, 0x7f05000b

    invoke-virtual {p0, v7}, Lcom/and/FundsTransferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/and/FundsTransferActivity;->acctBal:Landroid/widget/TextView;

    .line 56
    new-instance v3, Lcom/and/service/AccountSummaryService;

    invoke-direct {v3}, Lcom/and/service/AccountSummaryService;-><init>()V

    .line 57
    .local v3, "service":Lcom/and/service/AccountSummaryService;
    invoke-virtual {v3}, Lcom/and/service/AccountSummaryService;->send()Lcom/and/response/AccountSummaryResponse;

    move-result-object v0

    .line 58
    .local v0, "accountSummaryResponse":Lcom/and/response/AccountSummaryResponse;
    invoke-virtual {v0}, Lcom/and/response/AccountSummaryResponse;->getCurrentBalance()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 59
    .local v5, "val":D
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v2

    .line 60
    .local v2, "nf":Ljava/text/NumberFormat;
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 61
    iget-object v7, p0, Lcom/and/FundsTransferActivity;->acctBal:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "$"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const v7, 0x7f05000e

    invoke-virtual {p0, v7}, Lcom/and/FundsTransferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 63
    .local v4, "submitButton":Landroid/widget/Button;
    sget-object v7, Lcom/and/util/Globals;->accountnumber:Ljava/lang/String;

    iput-object v7, p0, Lcom/and/FundsTransferActivity;->Formaccnum:Ljava/lang/String;

    .line 64
    const v7, 0x7f05000d

    invoke-virtual {p0, v7}, Lcom/and/FundsTransferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/and/FundsTransferActivity;->Amount:Landroid/widget/EditText;

    .line 68
    const v7, 0x7f05000c

    invoke-virtual {p0, v7}, Lcom/and/FundsTransferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/and/FundsTransferActivity;->Toaccnum:Landroid/widget/EditText;

    .line 69
    new-instance v7, Lcom/and/service/TransactionHistoryService;

    invoke-direct {v7}, Lcom/and/service/TransactionHistoryService;-><init>()V

    iput-object v7, p0, Lcom/and/FundsTransferActivity;->transactionHistoryService:Lcom/and/service/TransactionHistoryService;

    .line 70
    iget-object v7, p0, Lcom/and/FundsTransferActivity;->transactionHistoryService:Lcom/and/service/TransactionHistoryService;

    invoke-virtual {v7}, Lcom/and/service/TransactionHistoryService;->send()Lcom/and/response/TransactionHistoryResponse;

    move-result-object v7

    invoke-virtual {v7}, Lcom/and/response/TransactionHistoryResponse;->getTransactionHistoryList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 71
    .local v1, "iterator":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/and/response/TransactionModified;

    iput-object v7, p0, Lcom/and/FundsTransferActivity;->transactionModified:Lcom/and/response/TransactionModified;

    .line 72
    iget-object v7, p0, Lcom/and/FundsTransferActivity;->Toaccnum:Landroid/widget/EditText;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/and/FundsTransferActivity;->transactionModified:Lcom/and/response/TransactionModified;

    invoke-virtual {v9}, Lcom/and/response/TransactionModified;->getToAccount()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    new-instance v7, Lcom/and/FundsTransferActivity$1;

    invoke-direct {v7, p0}, Lcom/and/FundsTransferActivity$1;-><init>(Lcom/and/FundsTransferActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v7, 0x7f050002

    invoke-virtual {p0, v7}, Lcom/and/FundsTransferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/and/FundsTransferActivity;->backimage:Landroid/widget/ImageView;

    .line 133
    iget-object v7, p0, Lcom/and/FundsTransferActivity;->backimage:Landroid/widget/ImageView;

    new-instance v8, Lcom/and/FundsTransferActivity$2;

    invoke-direct {v8, p0}, Lcom/and/FundsTransferActivity$2;-><init>(Lcom/and/FundsTransferActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    return-void
.end method
