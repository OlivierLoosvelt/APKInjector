.class public Lcom/and/TransactionHistoryactivity;
.super Landroid/app/Activity;
.source "TransactionHistoryactivity.java"


# instance fields
.field private backimage:Landroid/widget/ImageView;

.field private row:Landroid/widget/TableRow;

.field private t1:Landroid/widget/TextView;

.field private t2:Landroid/widget/TextView;

.field private transactionHistoryService:Lcom/and/service/TransactionHistoryService;

.field private transactionModified:Lcom/and/response/TransactionModified;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v9, -0x1000000

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v6, 0x7f03000a

    invoke-virtual {p0, v6}, Lcom/and/TransactionHistoryactivity;->setContentView(I)V

    .line 42
    new-instance v6, Lcom/and/service/TransactionHistoryService;

    invoke-direct {v6}, Lcom/and/service/TransactionHistoryService;-><init>()V

    iput-object v6, p0, Lcom/and/TransactionHistoryactivity;->transactionHistoryService:Lcom/and/service/TransactionHistoryService;

    .line 44
    const v6, 0x7f050027

    invoke-virtual {p0, v6}, Lcom/and/TransactionHistoryactivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;

    .line 45
    .local v2, "tbl":Landroid/widget/TableLayout;
    const v6, 0x7f050028

    invoke-virtual {p0, v6}, Lcom/and/TransactionHistoryactivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 46
    .local v3, "toAcc":Landroid/widget/TextView;
    new-instance v6, Landroid/widget/TableRow;

    invoke-direct {v6, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/and/TransactionHistoryactivity;->row:Landroid/widget/TableRow;

    .line 47
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/and/TransactionHistoryactivity;->t1:Landroid/widget/TextView;

    .line 48
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/and/TransactionHistoryactivity;->t2:Landroid/widget/TextView;

    .line 49
    iget-object v6, p0, Lcom/and/TransactionHistoryactivity;->row:Landroid/widget/TableRow;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object v6, p0, Lcom/and/TransactionHistoryactivity;->t1:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    iget-object v6, p0, Lcom/and/TransactionHistoryactivity;->t1:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    iget-object v6, p0, Lcom/and/TransactionHistoryactivity;->t2:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    iget-object v6, p0, Lcom/and/TransactionHistoryactivity;->t1:Landroid/widget/TextView;

    const-string v7, "To Account"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v6, p0, Lcom/and/TransactionHistoryactivity;->t2:Landroid/widget/TextView;

    const-string v7, "Amount"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v6, p0, Lcom/and/TransactionHistoryactivity;->row:Landroid/widget/TableRow;

    iget-object v7, p0, Lcom/and/TransactionHistoryactivity;->t1:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 56
    iget-object v6, p0, Lcom/and/TransactionHistoryactivity;->row:Landroid/widget/TableRow;

    iget-object v7, p0, Lcom/and/TransactionHistoryactivity;->t2:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 58
    iget-object v6, p0, Lcom/and/TransactionHistoryactivity;->row:Landroid/widget/TableRow;

    invoke-virtual {v2, v6}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 60
    iget-object v6, p0, Lcom/and/TransactionHistoryactivity;->transactionHistoryService:Lcom/and/service/TransactionHistoryService;

    invoke-virtual {v6}, Lcom/and/service/TransactionHistoryService;->send()Lcom/and/response/TransactionHistoryResponse;

    move-result-object v6

    invoke-virtual {v6}, Lcom/and/response/TransactionHistoryResponse;->getTransactionHistoryList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 62
    .local v0, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 85
    const v6, 0x7f050002

    invoke-virtual {p0, v6}, Lcom/and/TransactionHistoryactivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/and/TransactionHistoryactivity;->backimage:Landroid/widget/ImageView;

    .line 86
    iget-object v6, p0, Lcom/and/TransactionHistoryactivity;->backimage:Landroid/widget/ImageView;

    new-instance v7, Lcom/and/TransactionHistoryactivity$1;

    invoke-direct {v7, p0}, Lcom/and/TransactionHistoryactivity$1;-><init>(Lcom/and/TransactionHistoryactivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void

    .line 64
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/and/response/TransactionModified;

    iput-object v6, p0, Lcom/and/TransactionHistoryactivity;->transactionModified:Lcom/and/response/TransactionModified;

    .line 66
    new-instance v6, Landroid/widget/TableRow;

    invoke-direct {v6, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/and/TransactionHistoryactivity;->row:Landroid/widget/TableRow;

    .line 67
    iget-object v6, p0, Lcom/and/TransactionHistoryactivity;->row:Landroid/widget/TableRow;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/and/TransactionHistoryactivity;->t1:Landroid/widget/TextView;

    .line 69
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/and/TransactionHistoryactivity;->t2:Landroid/widget/TextView;

    .line 70
    iget-object v6, p0, Lcom/and/TransactionHistoryactivity;->t1:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    iget-object v6, p0, Lcom/and/TransactionHistoryactivity;->t2:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    iget-object v6, p0, Lcom/and/TransactionHistoryactivity;->t1:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/and/TransactionHistoryactivity;->transactionModified:Lcom/and/response/TransactionModified;

    invoke-virtual {v8}, Lcom/and/response/TransactionModified;->getToAccount()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v6, p0, Lcom/and/TransactionHistoryactivity;->transactionModified:Lcom/and/response/TransactionModified;

    invoke-virtual {v6}, Lcom/and/response/TransactionModified;->getAmount()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 74
    .local v4, "val":D
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v1

    .line 75
    .local v1, "nf":Ljava/text/NumberFormat;
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 76
    iget-object v6, p0, Lcom/and/TransactionHistoryactivity;->t2:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "$"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v6, p0, Lcom/and/TransactionHistoryactivity;->row:Landroid/widget/TableRow;

    iget-object v7, p0, Lcom/and/TransactionHistoryactivity;->t1:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 78
    iget-object v6, p0, Lcom/and/TransactionHistoryactivity;->row:Landroid/widget/TableRow;

    iget-object v7, p0, Lcom/and/TransactionHistoryactivity;->t2:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 79
    iget-object v6, p0, Lcom/and/TransactionHistoryactivity;->row:Landroid/widget/TableRow;

    invoke-virtual {v2, v6}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method
