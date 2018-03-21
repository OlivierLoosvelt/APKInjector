.class Lcom/and/FundsTransferActivity$1;
.super Ljava/lang/Object;
.source "FundsTransferActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/and/FundsTransferActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/and/FundsTransferActivity;


# direct methods
.method constructor <init>(Lcom/and/FundsTransferActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/and/FundsTransferActivity$1;->this$0:Lcom/and/FundsTransferActivity;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/and/FundsTransferActivity$1;)Lcom/and/FundsTransferActivity;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/and/FundsTransferActivity$1;->this$0:Lcom/and/FundsTransferActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v8, 0x7f050001

    const v7, 0x7f030007

    const/4 v6, 0x1

    .line 76
    iget-object v2, p0, Lcom/and/FundsTransferActivity$1;->this$0:Lcom/and/FundsTransferActivity;

    invoke-static {v2}, Lcom/and/FundsTransferActivity;->access$0(Lcom/and/FundsTransferActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/and/FundsTransferActivity$1;->this$0:Lcom/and/FundsTransferActivity;

    new-instance v3, Landroid/app/Dialog;

    iget-object v4, p0, Lcom/and/FundsTransferActivity$1;->this$0:Lcom/and/FundsTransferActivity;

    invoke-direct {v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/and/FundsTransferActivity;->access$1(Lcom/and/FundsTransferActivity;Landroid/app/Dialog;)V

    .line 78
    iget-object v2, p0, Lcom/and/FundsTransferActivity$1;->this$0:Lcom/and/FundsTransferActivity;

    invoke-static {v2}, Lcom/and/FundsTransferActivity;->access$2(Lcom/and/FundsTransferActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 79
    iget-object v2, p0, Lcom/and/FundsTransferActivity$1;->this$0:Lcom/and/FundsTransferActivity;

    invoke-static {v2}, Lcom/and/FundsTransferActivity;->access$2(Lcom/and/FundsTransferActivity;)Landroid/app/Dialog;

    move-result-object v2

    const-string v3, "Invalid amount"

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v2, p0, Lcom/and/FundsTransferActivity$1;->this$0:Lcom/and/FundsTransferActivity;

    invoke-static {v2}, Lcom/and/FundsTransferActivity;->access$2(Lcom/and/FundsTransferActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 81
    iget-object v2, p0, Lcom/and/FundsTransferActivity$1;->this$0:Lcom/and/FundsTransferActivity;

    invoke-static {v2}, Lcom/and/FundsTransferActivity;->access$2(Lcom/and/FundsTransferActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 82
    .local v0, "button":Landroid/widget/Button;
    new-instance v2, Lcom/and/FundsTransferActivity$1$1;

    invoke-direct {v2, p0}, Lcom/and/FundsTransferActivity$1$1;-><init>(Lcom/and/FundsTransferActivity$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v2, p0, Lcom/and/FundsTransferActivity$1;->this$0:Lcom/and/FundsTransferActivity;

    invoke-static {v2}, Lcom/and/FundsTransferActivity;->access$2(Lcom/and/FundsTransferActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 124
    :goto_0
    return-void

    .line 90
    .end local v0    # "button":Landroid/widget/Button;
    :cond_0
    new-instance v1, Lcom/and/service/FundsTransferService;

    invoke-direct {v1}, Lcom/and/service/FundsTransferService;-><init>()V

    .line 91
    .local v1, "service":Lcom/and/service/FundsTransferService;
    iget-object v2, p0, Lcom/and/FundsTransferActivity$1;->this$0:Lcom/and/FundsTransferActivity;

    iget-object v3, p0, Lcom/and/FundsTransferActivity$1;->this$0:Lcom/and/FundsTransferActivity;

    invoke-static {v3}, Lcom/and/FundsTransferActivity;->access$3(Lcom/and/FundsTransferActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/and/FundsTransferActivity$1;->this$0:Lcom/and/FundsTransferActivity;

    invoke-static {v4}, Lcom/and/FundsTransferActivity;->access$4(Lcom/and/FundsTransferActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/and/FundsTransferActivity$1;->this$0:Lcom/and/FundsTransferActivity;

    invoke-static {v5}, Lcom/and/FundsTransferActivity;->access$0(Lcom/and/FundsTransferActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/and/service/FundsTransferService;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/and/response/FundsTransferResponse;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/and/FundsTransferActivity;->access$5(Lcom/and/FundsTransferActivity;Lcom/and/response/FundsTransferResponse;)V

    .line 92
    iget-object v2, p0, Lcom/and/FundsTransferActivity$1;->this$0:Lcom/and/FundsTransferActivity;

    new-instance v3, Landroid/app/Dialog;

    iget-object v4, p0, Lcom/and/FundsTransferActivity$1;->this$0:Lcom/and/FundsTransferActivity;

    invoke-direct {v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/and/FundsTransferActivity;->access$1(Lcom/and/FundsTransferActivity;Landroid/app/Dialog;)V

    .line 93
    iget-object v2, p0, Lcom/and/FundsTransferActivity$1;->this$0:Lcom/and/FundsTransferActivity;

    invoke-static {v2}, Lcom/and/FundsTransferActivity;->access$2(Lcom/and/FundsTransferActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 94
    iget-object v2, p0, Lcom/and/FundsTransferActivity$1;->this$0:Lcom/and/FundsTransferActivity;

    invoke-static {v2}, Lcom/and/FundsTransferActivity;->access$6(Lcom/and/FundsTransferActivity;)Lcom/and/response/FundsTransferResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/and/response/FundsTransferResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/and/FundsTransferActivity$1;->this$0:Lcom/and/FundsTransferActivity;

    invoke-static {v2}, Lcom/and/FundsTransferActivity;->access$2(Lcom/and/FundsTransferActivity;)Landroid/app/Dialog;

    move-result-object v2

    const-string v3, "Transaction was successful!"

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v2, p0, Lcom/and/FundsTransferActivity$1;->this$0:Lcom/and/FundsTransferActivity;

    invoke-static {v2}, Lcom/and/FundsTransferActivity;->access$2(Lcom/and/FundsTransferActivity;)Landroid/app/Dialog;

    move-result-object v2

    new-instance v3, Lcom/and/FundsTransferActivity$1$2;

    invoke-direct {v3, p0}, Lcom/and/FundsTransferActivity$1$2;-><init>(Lcom/and/FundsTransferActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 113
    :goto_1
    iget-object v2, p0, Lcom/and/FundsTransferActivity$1;->this$0:Lcom/and/FundsTransferActivity;

    invoke-static {v2}, Lcom/and/FundsTransferActivity;->access$2(Lcom/and/FundsTransferActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 114
    iget-object v2, p0, Lcom/and/FundsTransferActivity$1;->this$0:Lcom/and/FundsTransferActivity;

    invoke-static {v2}, Lcom/and/FundsTransferActivity;->access$2(Lcom/and/FundsTransferActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 115
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v2, Lcom/and/FundsTransferActivity$1$3;

    invoke-direct {v2, p0}, Lcom/and/FundsTransferActivity$1$3;-><init>(Lcom/and/FundsTransferActivity$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v2, p0, Lcom/and/FundsTransferActivity$1;->this$0:Lcom/and/FundsTransferActivity;

    invoke-static {v2}, Lcom/and/FundsTransferActivity;->access$2(Lcom/and/FundsTransferActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 110
    .end local v0    # "button":Landroid/widget/Button;
    :cond_1
    iget-object v2, p0, Lcom/and/FundsTransferActivity$1;->this$0:Lcom/and/FundsTransferActivity;

    invoke-static {v2}, Lcom/and/FundsTransferActivity;->access$2(Lcom/and/FundsTransferActivity;)Landroid/app/Dialog;

    move-result-object v2

    const-string v3, "Transaction failed!"

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
